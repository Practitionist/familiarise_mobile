import 'dart:convert';
import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;

/// Stream Chat API base URL
const _streamApiBaseUrl = 'https://chat.stream-io-api.com';

/// Service for Stream Video API integration
///
/// Handles JWT token generation for Stream Video SDK.
class StreamService {
  /// Creates a [StreamService] using configured API credentials.
  StreamService({
    String? apiKey,
    String? apiSecret,
  })  : _apiKey = apiKey ?? io.Platform.environment['STREAM_API_KEY'] ?? '',
        _apiSecret =
            apiSecret ?? io.Platform.environment['STREAM_API_SECRET'] ?? '';

  final String _apiKey;
  final String _apiSecret;

  /// Get the Stream API key (public, safe to share with clients)
  String get apiKey => _apiKey;

  /// Check if Stream is properly configured
  bool get isConfigured => _apiKey.isNotEmpty && _apiSecret.isNotEmpty;

  /// Generate a user token for Stream Video SDK
  ///
  /// The token allows the user to authenticate with Stream's servers.
  /// Token is valid for [expiresIn] duration (default 24 hours).
  String generateUserToken(
    String userId, {
    Duration expiresIn = const Duration(hours: 24),
  }) {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final now = DateTime.now().toUtc();
    final exp = now.add(expiresIn);

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'user_id': userId,
      'iss': _apiKey, // Required by Stream Video SDK
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
    };

    return _createJwt(header, payload);
  }

  /// Generate a call token for a specific call
  ///
  /// Optionally restrict permissions for the call.
  String generateCallToken(
    String userId,
    String callId, {
    Duration expiresIn = const Duration(hours: 2),
    List<String>? permissions,
  }) {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final now = DateTime.now().toUtc();
    final exp = now.add(expiresIn);

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'user_id': userId,
      'iss': _apiKey, // Required by Stream Video SDK
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
      'call_cids': ['default:$callId'],
    };

    if (permissions != null && permissions.isNotEmpty) {
      payload['call_permissions'] = permissions;
    }

    return _createJwt(header, payload);
  }

  /// Create a JWT token from header and payload using dart_jsonwebtoken library
  String _createJwt(Map<String, dynamic> header, Map<String, dynamic> payload) {
    final jwt = JWT(payload, header: header);
    return jwt.sign(SecretKey(_apiSecret));
  }

  /// Upsert a user in Stream Chat
  ///
  /// Creates the user if they don't exist, or updates if they do.
  /// This uses server-side authentication to call Stream's REST API.
  /// See: https://getstream.io/chat/docs/rest/#users-upsert
  Future<void> upsertUser({
    required String userId,
    String? name,
    String? image,
  }) =>
      upsertUsers([
        {
          'id': userId,
          if (name != null) 'name': name,
          if (image != null) 'image': image,
        }
      ]);

  /// Batch-upsert users in Stream Chat (the /users endpoint natively accepts
  /// many users per request). Deduplicates by id and chunks to 100 users per
  /// call — one API call instead of N, which is what tripped Stream's
  /// 300 UpdateUsers/min rate limit when callers looped over upsertUser.
  Future<void> upsertUsers(List<Map<String, dynamic>> users) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }
    if (users.isEmpty) return;

    // Dedupe by id (later entries win so richer data overwrites bare ids).
    final byId = <String, Map<String, dynamic>>{};
    for (final u in users) {
      final id = u['id'] as String?;
      if (id == null) continue;
      byId[id] = {...?byId[id], ...u};
    }

    final url = Uri.parse('$_streamApiBaseUrl/users');
    final ids = byId.keys.toList();
    const chunkSize = 100; // Stream's per-request user cap

    for (var i = 0; i < ids.length; i += chunkSize) {
      final chunk = ids.sublist(
          i, i + chunkSize > ids.length ? ids.length : i + chunkSize);
      final serverToken = _createServerToken();
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': serverToken,
          'Stream-Auth-Type': 'jwt',
          'api_key': _apiKey,
        },
        body: jsonEncode({
          'users': {for (final id in chunk) id: byId[id]},
        }),
      );

      if (response.statusCode != 201 && response.statusCode != 200) {
        throw Exception(
          'Failed to upsert users in Stream Chat: '
          '${response.statusCode} - ${response.body}',
        );
      }
    }
  }

  /// Create a server-side JWT token (no user_id claim)
  ///
  /// Server tokens are used for server-to-server API calls.
  String _createServerToken() {
    final now = DateTime.now().toUtc();
    final exp = now.add(const Duration(minutes: 5));

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'iss': _apiKey,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
    };

    return _createJwt(header, payload);
  }

  /// Create or update a group channel (team type) in Stream Chat
  ///
  /// Creates a channel with the specified members and metadata.
  /// If the channel already exists, it will be updated.
  /// See: https://getstream.io/chat/docs/rest/#channels-createorupdatechannel
  Future<Map<String, dynamic>> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    required String createdByUserId,
    Map<String, dynamic>? extraData,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    // Ensure all users exist in Stream Chat — one batched call
    await upsertUsers([
      for (final userId in memberIds) {'id': userId},
      {'id': createdByUserId},
    ]);

    final url = Uri.parse(
      '$_streamApiBaseUrl/channels/team/$channelId/query',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'data': {
          'name': channelName,
          'members': memberIds,
          'created_by_id': createdByUserId,
          ...?extraData,
        },
        'state': true,
        'watch': false,
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to create group channel: ${response.statusCode} - ${response.body}',
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Add members to an existing channel
  ///
  /// See: https://getstream.io/chat/docs/rest/#channels-addmembers
  Future<void> addChannelMembers({
    required String channelType,
    required String channelId,
    required List<String> memberIds,
    bool ensureUsers = true,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    // Ensure all users exist in Stream Chat (one batched call). Callers that
    // already upserted the users pass ensureUsers: false to avoid duplicate
    // UpdateUsers traffic.
    if (ensureUsers) {
      await upsertUsers([
        for (final userId in memberIds) {'id': userId},
      ]);
    }

    final url = Uri.parse(
      '$_streamApiBaseUrl/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'add_members': memberIds,
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to add members to channel: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Update a channel member's role/capabilities
  ///
  /// Use channel_member role for read-only access.
  /// See: https://getstream.io/chat/docs/rest/#channels-updatememberroles
  Future<void> updateMemberRole({
    required String channelType,
    required String channelId,
    required String userId,
    required String role, // 'owner', 'channel_member', 'channel_moderator'
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final url = Uri.parse(
      '$_streamApiBaseUrl/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'assign_roles': [
          {
            'user_id': userId,
            'channel_role': role,
          }
        ],
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to update member role: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Update channel data (e.g., archive status)
  ///
  /// See: https://getstream.io/chat/docs/rest/#channels-updatechannelpartial
  Future<void> updateChannelData({
    required String channelType,
    required String channelId,
    required Map<String, dynamic> setData,
    List<String>? unsetData,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final url = Uri.parse(
      '$_streamApiBaseUrl/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final body = <String, dynamic>{
      'set': setData,
    };
    if (unsetData != null && unsetData.isNotEmpty) {
      body['unset'] = unsetData;
    }

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode(body),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to update channel: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Freeze or unfreeze a channel
  ///
  /// Frozen channels don't allow new messages except from admins/owners.
  /// See: https://getstream.io/chat/docs/rest/#channels-freeze
  Future<void> setChannelFrozen({
    required String channelType,
    required String channelId,
    required bool frozen,
  }) async {
    await updateChannelData(
      channelType: channelType,
      channelId: channelId,
      setData: {'frozen': frozen},
    );
  }

  /// Get or create a group channel and add a participant
  ///
  /// This is an idempotent operation designed for webinar/class bookings:
  /// - If the channel doesn't exist, creates it with instructor + participant
  /// - If the channel exists, adds the participant as a member
  ///
  /// [channelId] should be in format 'webinar_{id}' or 'class_{id}'
  /// [channelName] is the display name (e.g., "Introduction to Flutter Webinar")
  /// [instructorUserId] is the consultant/instructor who owns the channel
  /// [participantUserId] is the user enrolling in the webinar/class
  Future<void> getOrCreateGroupChannelAndAddMember({
    required String channelId,
    required String channelName,
    required String instructorUserId,
    required String participantUserId,
    required String programType, // 'WEBINAR' or 'CLASS'
    required String programId,
    String? instructorName,
    String? instructorImage,
    String? participantName,
    String? participantImage,
    bool ensureUsers = true,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    try {
      // Ensure both users exist in Stream Chat first (one batched call).
      // Bulk callers (e.g. fix-group-channels) pre-upsert every unique user
      // once and pass ensureUsers: false.
      if (ensureUsers) {
        await upsertUsers([
          {
            'id': instructorUserId,
            if (instructorName != null) 'name': instructorName,
            if (instructorImage != null) 'image': instructorImage,
          },
          {
            'id': participantUserId,
            if (participantName != null) 'name': participantName,
            if (participantImage != null) 'image': participantImage,
          },
        ]);

        SentryLogger.debug(
          'Users upserted: $instructorUserId, $participantUserId',
          context: 'StreamService.getOrCreateGroupChannelAndAddMember',
        );
      }

      // Create or get the channel using /query endpoint
      // Note: The /query endpoint creates the channel if it doesn't exist,
      // but it does NOT reliably set members from the data payload.
      final url = Uri.parse(
        '$_streamApiBaseUrl/channels/team/$channelId/query',
      );

      final serverToken = _createServerToken();

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': serverToken,
          'Stream-Auth-Type': 'jwt',
          'api_key': _apiKey,
        },
        body: jsonEncode({
          'data': {
            'name': channelName,
            'created_by_id': instructorUserId,
            'programType': programType,
            'programId': programId,
            'instructorId': instructorUserId,
          },
          'state': true,
          'watch': false,
        }),
      );

      if (response.statusCode != 201 && response.statusCode != 200) {
        throw Exception(
          'Failed to create/update group channel: ${response.statusCode} - ${response.body}',
        );
      }

      SentryLogger.info(
        'Channel created/queried: $channelId',
        context: 'StreamService.getOrCreateGroupChannelAndAddMember',
      );

      // IMPORTANT: The /query endpoint does NOT set members reliably.
      // We MUST use the dedicated addChannelMembers endpoint to add both
      // the instructor and participant to the channel.
      // This is an idempotent operation - adding existing members is a no-op.
      await addChannelMembers(
        channelType: 'team',
        channelId: channelId,
        // Users were just upserted above (or pre-upserted by a bulk caller) —
        // don't re-upsert them per channel.
        ensureUsers: false,
        memberIds: [instructorUserId, participantUserId],
      );

      SentryLogger.info(
        'Members added to channel $channelId: $instructorUserId, $participantUserId',
        context: 'StreamService.getOrCreateGroupChannelAndAddMember',
      );
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Failed to create/update group channel: $channelId',
        context: 'StreamService.getOrCreateGroupChannelAndAddMember',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  // ===========================================================================
  // Video Recording API
  // ===========================================================================

  /// Stream Video API base URL
  static const _videoApiBaseUrl = 'https://video.stream-io-api.com';

  /// Start recording a call.
  Future<void> startRecording(String callId) async {
    await _postRecordingAction(callId, 'start_recording');
  }

  /// Stop recording a call.
  Future<void> stopRecording(String callId) async {
    await _postRecordingAction(callId, 'stop_recording');
  }

  /// Shared helper for start/stop recording API calls.
  Future<void> _postRecordingAction(
    String callId,
    String action,
  ) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final serverToken = _createServerToken();
    final response = await http.post(
      Uri.parse(
        '$_videoApiBaseUrl/api/v2/video/call/default/$callId'
        '/$action',
      ),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({}),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      final body = response.body;
      SentryLogger.info(
        'Stream $action error: $body',
        context: 'StreamService.$action',
      );
      throw Exception(
        'Failed to $action: ${response.statusCode}',
      );
    }
  }

  /// List recordings for a call.
  ///
  /// See: https://getstream.io/video/docs/api/recording/list/
  Future<List<Map<String, dynamic>>> listRecordings(
    String callId,
  ) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final serverToken = _createServerToken();
    final response = await http.get(
      Uri.parse(
        '$_videoApiBaseUrl/api/v2/video/call/default/$callId'
        '/recordings',
      ),
      headers: {
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
    );

    if (response.statusCode != 200) {
      final body = response.body;
      SentryLogger.info(
        'Stream list recordings error: $body',
        context: 'StreamService.listRecordings',
      );
      throw Exception(
        'Failed to list recordings: ${response.statusCode}',
      );
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final recordings = data['recordings'] as List<dynamic>?;
    return recordings?.cast<Map<String, dynamic>>() ?? [];
  }

  // ===========================================================================
  // Authorization & Ownership Helpers (Issue #53)
  // ===========================================================================

  /// Verifies whether [userId] is an authorized participant, host consultant,
  /// or accepted collaborator for [appointmentId].
  ///
  /// When [requireHostOrCollaborator] is `true`, only the host consultant or an
  /// accepted collaborator on the appointment's webinar/class plan is allowed.
  Future<bool> verifyAppointmentAccess(
    DatabaseClient db, {
    required String appointmentId,
    required String userId,
    bool requireHostOrCollaborator = false,
  }) async {
    final appointment = await db.prisma.appointment.findUnique(
      where: AppointmentWhereUniqueInput(id: appointmentId),
      include: const AppointmentInclude(
        slotsOfAppointment: SlotOfAppointmentInclude(
          user: UserInclude(),
        ),
        consultation: ConsultationInclude(
          consultationPlan: ConsultationPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
          requestedBy: ConsulteeProfileInclude(),
        ),
        subscription: SubscriptionInclude(
          subscriptionPlan: SubscriptionPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
          requestedBy: ConsulteeProfileInclude(),
        ),
        webinar: WebinarInclude(
          webinarPlan: WebinarPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
        ),
        classRef: ClassModelInclude(
          classPlan: ClassPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
        ),
        trialSession: TrialSessionInclude(
          consultantProfile: ConsultantProfileInclude(),
          consulteeProfile: ConsulteeProfileInclude(),
        ),
      ),
    );

    if (appointment == null) return false;

    // 1. Check host consultant ownership
    final hostUserIds = <String?>[
      appointment.consultation?.consultationPlan?.consultantProfile?.userId,
      appointment.subscription?.subscriptionPlan?.consultantProfile?.userId,
      appointment.webinar?.webinarPlan?.consultantProfile?.userId,
      appointment.classRef?.classPlan?.consultantProfile?.userId,
      appointment.trialSession?.consultantProfile?.userId,
    ];
    if (hostUserIds.contains(userId)) {
      return true;
    }

    // 2. Check accepted collaborator ownership (for webinar / class plans)
    final webinarPlanId = appointment.webinar?.webinarPlanId;
    final classPlanId = appointment.classRef?.classPlanId;
    if (webinarPlanId != null || classPlanId != null) {
      final isCollaborator = await _isAcceptedCollaborator(
        db,
        userId: userId,
        webinarPlanId: webinarPlanId,
        classPlanId: classPlanId,
      );
      if (isCollaborator) return true;
    }

    if (requireHostOrCollaborator) {
      return false;
    }

    // 3. Check consultee / slot participant membership
    final consulteeUserIds = <String?>[
      appointment.consultation?.requestedBy?.userId,
      appointment.subscription?.requestedBy?.userId,
      appointment.trialSession?.consulteeProfile?.userId,
    ];
    if (consulteeUserIds.contains(userId)) {
      return true;
    }

    final slots = appointment.slotsOfAppointment ?? const [];
    for (final slot in slots) {
      final users = slot.user ?? const [];
      if (users.any((u) => u.id == userId)) {
        return true;
      }
    }

    return db.meetingSessions.userHasAccessToAppointment(
      appointmentId: appointmentId,
      userId: userId,
    );
  }

  /// Verifies whether [userId] has access to a Stream Video call [callId].
  Future<bool> verifyCallAccess(
    DatabaseClient db, {
    required String callId,
    required String userId,
    bool requireHostOrCollaborator = false,
  }) async {
    final meeting = await db.meetingSessions.getMeetingByStreamCallId(callId);
    if (meeting != null) {
      final slot = meeting['slotOfAppointment'] as Map<String, dynamic>?;
      final appointmentId = slot?['appointmentId'] as String?;
      if (appointmentId != null && appointmentId.isNotEmpty) {
        return verifyAppointmentAccess(
          db,
          appointmentId: appointmentId,
          userId: userId,
          requireHostOrCollaborator: requireHostOrCollaborator,
        );
      }
    }

    // Fallback if callId is an appointmentId directly
    return verifyAppointmentAccess(
      db,
      appointmentId: callId,
      userId: userId,
      requireHostOrCollaborator: requireHostOrCollaborator,
    );
  }

  /// Verifies whether [userId] is authorized to create/manage/access a Stream
  /// Chat channel identified by [channelId].
  Future<bool> verifyChannelAccess(
    DatabaseClient db, {
    required String channelId,
    required String userId,
    bool requireHostOrCollaborator = false,
    List<String>? memberIds,
  }) async {
    if (channelId.startsWith('webinar_') || channelId.startsWith('webinar-')) {
      final webinarId = channelId.substring(8);
      final webinar = await db.prisma.webinar.findUnique(
        where: WebinarWhereUniqueInput(id: webinarId),
        include: const WebinarInclude(
          webinarPlan: WebinarPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
          appointment: AppointmentInclude(),
        ),
      );
      if (webinar == null) return false;

      if (webinar.webinarPlan?.consultantProfile?.userId == userId) {
        return true;
      }
      if (await _isAcceptedCollaborator(
        db,
        userId: userId,
        webinarPlanId: webinar.webinarPlanId,
      )) {
        return true;
      }
      if (requireHostOrCollaborator) return false;

      final appointmentId = webinar.appointment?.id;
      if (appointmentId != null) {
        return verifyAppointmentAccess(
          db,
          appointmentId: appointmentId,
          userId: userId,
        );
      }
      return false;
    }

    if (channelId.startsWith('class_') || channelId.startsWith('class-')) {
      final classId = channelId.substring(6);
      final classRecord = await db.prisma.classModel.findUnique(
        where: ClassModelWhereUniqueInput(id: classId),
        include: const ClassModelInclude(
          classPlan: ClassPlanInclude(
            consultantProfile: ConsultantProfileInclude(),
          ),
        ),
      );
      if (classRecord == null) return false;

      if (classRecord.classPlan?.consultantProfile?.userId == userId) {
        return true;
      }
      if (await _isAcceptedCollaborator(
        db,
        userId: userId,
        classPlanId: classRecord.classPlanId,
      )) {
        return true;
      }
      if (requireHostOrCollaborator) return false;

      final matchingSlots = await db.prisma.slotOfAppointment.count(
        where: SlotOfAppointmentWhereInput(
          appointment: AppointmentRelationFilter(
            is_: AppointmentWhereInput(
              classId: StringFilter(equals: classId),
            ),
          ),
          user: UserListRelationFilter(
            some: UserWhereInput(id: StringFilter(equals: userId)),
          ),
        ),
      );
      return matchingSlots > 0;
    }

    if (channelId.startsWith('appointment_') ||
        channelId.startsWith('appointment-')) {
      final appointmentId = channelId.substring('appointment_'.length);
      return verifyAppointmentAccess(
        db,
        appointmentId: appointmentId,
        userId: userId,
        requireHostOrCollaborator: requireHostOrCollaborator,
      );
    }

    // Custom / DM channels have no host/collaborator owner record.
    if (requireHostOrCollaborator) {
      return false;
    }

    // Resolve DM participants from the canonical sorted user-ID pair encoded
    // in the channel ID (`<sortedUserA>-<sortedUserB>`) and deny by default.
    String? otherUserId;
    if (channelId.startsWith('$userId-')) {
      otherUserId = channelId.substring(userId.length + 1);
    } else if (channelId.endsWith('-$userId')) {
      otherUserId =
          channelId.substring(0, channelId.length - userId.length - 1);
    }
    if (otherUserId == null || otherUserId.isEmpty || otherUserId == userId) {
      return false;
    }
    final expectedDmId = ([userId, otherUserId]..sort()).join('-');
    if (channelId != expectedDmId) {
      return false;
    }

    final participants = <String>{userId, otherUserId};
    if (memberIds != null) {
      if (memberIds.isEmpty ||
          !memberIds.contains(userId) ||
          !memberIds.every(participants.contains)) {
        return false;
      }
    }

    final sharedSlotCount = await db.prisma.slotOfAppointment.count(
      where: SlotOfAppointmentWhereInput(
        AND: [
          SlotOfAppointmentWhereInput(
            user: UserListRelationFilter(
              some: UserWhereInput(id: StringFilter(equals: userId)),
            ),
          ),
          SlotOfAppointmentWhereInput(
            user: UserListRelationFilter(
              some: UserWhereInput(id: StringFilter(equals: otherUserId)),
            ),
          ),
        ],
      ),
    );
    return sharedSlotCount > 0;
  }

  Future<bool> _isAcceptedCollaborator(
    DatabaseClient db, {
    required String userId,
    String? webinarPlanId,
    String? classPlanId,
  }) async {
    final consultantProfile = await db.prisma.consultantProfile.findFirst(
      where: ConsultantProfileWhereInput(
        userId: StringFilter(equals: userId),
      ),
    );
    if (consultantProfile == null) return false;

    final count = await db.prisma.collaborator.count(
      where: CollaboratorWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfile.id),
        status: const CollaboratorStatusFilter(
          equals: CollaboratorStatus.accepted,
        ),
        webinarPlanId:
            webinarPlanId != null ? StringFilter(equals: webinarPlanId) : null,
        classPlanId:
            classPlanId != null ? StringFilter(equals: classPlanId) : null,
      ),
    );
    return count > 0;
  }
}

/// Data class for Stream token response
class StreamTokenResponse {
  final String token;
  final String apiKey;
  final String callId;
  final String userId;

  StreamTokenResponse({
    required this.token,
    required this.apiKey,
    required this.callId,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        'token': token,
        'apiKey': apiKey,
        'callId': callId,
        'userId': userId,
      };
}
