// =============================================================================
// DATABASE CLIENT — Central database layer for the Dart Frog backend
// =============================================================================
//
// ARCHITECTURE
// ~~~~~~~~~~~~
// This file is the facade/singleton that:
//   - Opens the Postgres connection
//   - Creates the QueryExecutor with the schema
//   - Populates the global schemaRegistry for PrismaClient delegates
//   - Instantiates all 21 repositories
//   - Exposes them via named getters (db.users, db.checkout, etc.)
//   - Provides db.prisma for type-safe PrismaClient access
//
// The schema registry (field/relation registration for every Prisma model)
// is GENERATED into lib/generated/schema_registry.g.dart by
// `prisma_flutter_connector:generate` (run scripts/regenerate-build.sh).
// It enables:
//   - QueryExecutor to resolve table names (critical for @@map models
//     like User→'users', Account→'accounts')
//   - include() JOINs on related models
//   - PrismaClient typed delegates (via global schemaRegistry fallback)
//
// Legacy JQB code references @@map-ed models by their TABLE name (e.g.
// .model('users')), so each mapped model is also registered under its
// table name as an alias (see _registerSchema below).
//
// HOW ROUTES USE THIS
// ~~~~~~~~~~~~~~~~~~~
// In main.dart: handler.use(provider<DatabaseClient>((_) => db))
// In any route: final db = context.read<DatabaseClient>();
//               final user = await db.users.findByEmail(email);
//               // OR type-safe: await db.prisma.feedback.create(data: ...);
//
// WHEN THE SCHEMA CHANGES
// ~~~~~~~~~~~~~~~~~~~~~~~~
// Never by hand. Copy the source-of-truth schema from familiarise_web (which
// owns migrations) and regenerate — registry, models, and delegates are all
// derived automatically:
//   1. cp ../familiarise_web/prisma/schema.prisma prisma/schema.prisma
//   2. ./scripts/regenerate-build.sh --prisma
// (The old hand-maintained buildSchemaRegistry() in schema_registry_builder.dart
// is deprecated and no longer wired in.)
//
// If you add a model and need a repository:
//   1. Create a repository in backend/lib/database/repositories/
//   2. Add a late final field + getter in DatabaseClient
//   3. Instantiate it in DatabaseClient._() constructor
//
// MIGRATION STRATEGY (typed delegates)
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// New repositories should use PrismaClient delegates (db.prisma.model.*)
// with generated input types (CreateXInput, UpdateXInput, XWhereInput).
// Example: FeedbackRepository, WebhookEventRepository.
//
// Legacy repositories use raw JsonQueryBuilder + string field keys.
// They work but typos cause silent runtime failures instead of compile errors.
// Migrate them when touching them for other reasons — don't rewrite for
// the sake of it.
//
// COMMON GOTCHA
// ~~~~~~~~~~~~~
// backend/lib/generated/index.dart exports a `Platform` enum (from Prisma
// schema). If you also need dart:io.Platform, use:
//   import 'dart:io' hide Platform;
// =============================================================================

import 'package:backend/database/repositories/repositories.dart';
import 'package:backend/generated/prisma_client.dart';
import 'package:backend/generated/schema_registry.g.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

// Re-export generated types for convenience
export '../generated/index.dart';

/// Database client using Prisma Flutter Connector
///
/// This is the main entry point for database operations. It initializes the
/// connection and provides access to all repositories.
///
/// Uses the runtime_server.dart import which provides:
/// - PostgresAdapter for database connection
/// - QueryExecutor for query execution
/// - JsonQueryBuilder for type-safe query building
class DatabaseClient {
  DatabaseClient._(this._executor, this._adapter) {
    // Initialize type-safe PrismaClient
    _prisma = PrismaClient(adapter: _adapter);

    // Initialize repositories
    _userRepository = UserRepository(_executor, _prisma);
    _accountRepository = AccountRepository(_executor, _prisma);
    _sessionRepository = SessionRepository(_executor, _userRepository, _prisma);
    _consulteeProfileRepository =
        ConsulteeProfileRepository(_executor, _prisma);
    _consultantProfileRepository =
        ConsultantProfileRepository(_executor, _prisma);
    _domainRepository = DomainRepository(_executor, _prisma);
    _consultantExploreRepository =
        ConsultantExploreRepository(_executor, _prisma);
    _slotRepository = SlotRepository(_executor, _prisma);
    _appointmentRepository = AppointmentRepository(_executor, _prisma);
    _programsRepository = ProgramsRepository(_executor, _prisma);
    _checkoutRepository = CheckoutRepository(_executor, _prisma);
    _webhookEventRepository = WebhookEventRepository(_executor, _prisma);
    _refundRepository = RefundRepository(_executor, _prisma);
    _disputeRepository = DisputeRepository(_executor, _prisma);
    _supportTicketRepository = SupportTicketRepository(_executor, _prisma);
    _reviewRepository = ReviewRepository(_executor, _prisma);
    _feedbackRepository = FeedbackRepository(_executor, _prisma);
    _meetingSessionRepository = MeetingSessionRepository(_executor, _prisma);
    _dashboardRepository = DashboardRepository(_executor, _prisma);
    _verificationRepository = VerificationRepository(_executor, _prisma);
    _collaboratorRepository = CollaboratorRepository(_executor, _prisma);
    _referralRepository = ReferralRepository(_executor, _prisma);
    _consultantVerificationRepository =
        ConsultantVerificationRepository(_executor, _prisma);
    _trialRepository = TrialRepository(_executor, _prisma);
    _waitlistRepository = WaitlistRepository(_executor, _prisma);
    _payoutAccountRepository = PayoutAccountRepository(_executor, _prisma);
    _appointmentDocumentRepository =
        AppointmentDocumentRepository(_executor, _prisma);
    _announcementRepository = AnnouncementRepository(_executor, _prisma);
    _maintenanceRepository = MaintenanceRepository(_executor, _prisma);
    _recordingRepository = RecordingRepository(_executor, _prisma);
    _planRepository = PlanRepository(_executor, _prisma);
    _organizationRepository = OrganizationRepository(_executor, _prisma);
  }

  static DatabaseClient? _instance;
  final QueryExecutor _executor;
  final PostgresAdapter _adapter;

  // Type-safe PrismaClient (use this for new code)
  late final PrismaClient _prisma;

  // Legacy repositories (for backward compatibility)
  late final UserRepository _userRepository;
  late final AccountRepository _accountRepository;
  late final SessionRepository _sessionRepository;
  late final ConsulteeProfileRepository _consulteeProfileRepository;
  late final ConsultantProfileRepository _consultantProfileRepository;
  late final DomainRepository _domainRepository;
  late final ConsultantExploreRepository _consultantExploreRepository;
  late final SlotRepository _slotRepository;
  late final AppointmentRepository _appointmentRepository;
  late final ProgramsRepository _programsRepository;
  late final CheckoutRepository _checkoutRepository;
  late final WebhookEventRepository _webhookEventRepository;
  late final RefundRepository _refundRepository;
  late final DisputeRepository _disputeRepository;
  late final SupportTicketRepository _supportTicketRepository;
  late final ReviewRepository _reviewRepository;
  late final FeedbackRepository _feedbackRepository;
  late final MeetingSessionRepository _meetingSessionRepository;
  late final DashboardRepository _dashboardRepository;
  late final VerificationRepository _verificationRepository;
  late final CollaboratorRepository _collaboratorRepository;
  late final ReferralRepository _referralRepository;
  late final ConsultantVerificationRepository _consultantVerificationRepository;
  late final TrialRepository _trialRepository;
  late final WaitlistRepository _waitlistRepository;
  late final PayoutAccountRepository _payoutAccountRepository;
  late final AppointmentDocumentRepository _appointmentDocumentRepository;
  late final AnnouncementRepository _announcementRepository;
  late final MaintenanceRepository _maintenanceRepository;
  late final RecordingRepository _recordingRepository;
  late final PlanRepository _planRepository;
  late final OrganizationRepository _organizationRepository;

  /// Build the schema registry from the generated registrations.
  ///
  /// Models with @@map are additionally registered under their TABLE name
  /// (e.g. both 'User' and 'users') so legacy JsonQueryBuilder calls that
  /// reference .model('users') keep full field/relation metadata.
  static SchemaRegistry _buildSchema() {
    final schema = SchemaRegistry();
    registerAllModels(schema);
    for (final modelName in schema.modelNames.toList()) {
      final model = schema.getModel(modelName);
      if (model != null && model.tableName != model.name) {
        schema.registerModel(ModelSchema(
          name: model.tableName,
          tableName: model.tableName,
          fields: model.fields,
          relations: model.relations,
        ));
      }
    }
    return schema;
  }

  /// Initialize the database client with a connection URL
  static Future<DatabaseClient> initialize(String connectionUrl) async {
    if (_instance != null) return _instance!;

    final uri = Uri.parse(connectionUrl);

    // Parse credentials from URL
    // Use indexOf to handle passwords that may contain colons
    final userInfo = uri.userInfo;
    final colonIndex = userInfo.indexOf(':');
    final username =
        colonIndex == -1 ? userInfo : userInfo.substring(0, colonIndex);
    final password = colonIndex == -1 ? '' : userInfo.substring(colonIndex + 1);

    // Honour ?sslmode=disable, and auto-disable for localhost (no TLS on
    // local Postgres); hosted Postgres (Supabase et al.) keeps SSL required.
    final isLocal = uri.host == 'localhost' || uri.host == '127.0.0.1';
    final sslMode = (uri.queryParameters['sslmode'] == 'disable' || isLocal)
        ? pg.SslMode.disable
        : pg.SslMode.require;

    // Pooled adapter (connector 0.7+): non-transactional statements run on
    // connections borrowed from the pool; each transaction pins one dedicated
    // connection. Replaces the previous single long-lived pg.Connection, whose
    // silent staleness caused recurring 500s until a server restart.
    final pool = pg.Pool.withEndpoints(
      [
        pg.Endpoint(
          host: uri.host,
          port: uri.port,
          database:
              uri.pathSegments.isNotEmpty ? uri.pathSegments.first : 'postgres',
          username: username,
          password: password,
        ),
      ],
      settings: pg.PoolSettings(
        sslMode: sslMode,
        maxConnectionCount: 8,
        // Recycle pooled connections before hosted poolers kill them silently.
        maxConnectionAge: const Duration(minutes: 30),
      ),
    );

    final adapter = PostgresAdapter.pooled(pool);

    // Populate the global registry from the GENERATED schema (all models,
    // @@map/@map-aware, regenerated from prisma/schema.prisma). This replaces
    // the hand-maintained buildSchemaRegistry() so JQB and typed PrismaClient
    // delegates always match the current schema without manual upkeep.
    registerAllModels(schemaRegistry);

    final executor = QueryExecutor(adapter: adapter, schema: schemaRegistry);

    _instance = DatabaseClient._(executor, adapter);
    return _instance!;
  }

  // ==================== Repository Accessors ====================

  /// Get the type-safe PrismaClient for new code
  ///
  /// Use this for type-safe database operations with compile-time checking.
  /// Example:
  /// ```dart
  /// final profile = await db.prisma.consulteeProfile.update(
  ///   where: ConsulteeProfileWhereUniqueInput(id: profileId),
  ///   data: UpdateConsulteeProfileInput(careerStage: CareerStage.earlyCareer),
  /// );
  /// ```
  PrismaClient get prisma => _prisma;

  /// Get the query executor for direct access (advanced usage)
  QueryExecutor get executor => _executor;

  /// User operations repository
  UserRepository get users => _userRepository;

  /// Account operations repository
  AccountRepository get accounts => _accountRepository;

  /// Session operations repository
  SessionRepository get sessions => _sessionRepository;

  /// Consultee profile operations repository
  ConsulteeProfileRepository get consulteeProfiles =>
      _consulteeProfileRepository;

  /// Consultant profile operations repository
  ConsultantProfileRepository get consultantProfiles =>
      _consultantProfileRepository;

  /// Domain operations repository
  DomainRepository get domains => _domainRepository;

  /// Consultant explore repository (for browsing and discovery)
  ConsultantExploreRepository get consultantExplore =>
      _consultantExploreRepository;

  /// Slot repository (for availability queries)
  SlotRepository get slots => _slotRepository;

  /// Appointment repository (for booking operations)
  AppointmentRepository get appointments => _appointmentRepository;

  /// Programs repository (for webinars and classes)
  ProgramsRepository get programs => _programsRepository;

  /// Checkout repository (for payment operations)
  CheckoutRepository get checkout => _checkoutRepository;

  /// Webhook event repository (for idempotent webhook processing)
  WebhookEventRepository get webhookEvents => _webhookEventRepository;

  /// Refund repository (for refund tracking)
  RefundRepository get refunds => _refundRepository;

  /// Dispute repository (for dispute visibility)
  DisputeRepository get disputes => _disputeRepository;

  /// Support ticket repository (for user support)
  SupportTicketRepository get supportTickets => _supportTicketRepository;

  /// Review repository (for consultant reviews)
  ReviewRepository get reviews => _reviewRepository;

  /// Feedback repository (for app feedback)
  FeedbackRepository get feedback => _feedbackRepository;

  /// Meeting session repository (for video meetings)
  MeetingSessionRepository get meetingSessions => _meetingSessionRepository;

  /// Dashboard repository (for aggregated dashboard data)
  DashboardRepository get dashboard => _dashboardRepository;

  /// Verification repository (for password reset + email verification)
  VerificationRepository get verifications => _verificationRepository;

  /// Collaborator repository (for webinar/class collaborations)
  CollaboratorRepository get collaborators => _collaboratorRepository;

  /// Referral repository (for referral codes and credits)
  ReferralRepository get referrals => _referralRepository;

  /// Consultant verification repository (for profile verification workflow)
  ConsultantVerificationRepository get consultantVerifications =>
      _consultantVerificationRepository;

  /// Trial session repository (for free trial management)
  TrialRepository get trials => _trialRepository;

  /// Waitlist repository (for webinar/class waitlists)
  WaitlistRepository get waitlists => _waitlistRepository;

  /// Payout account repository (for consultant bank/UPI accounts)
  PayoutAccountRepository get payoutAccounts => _payoutAccountRepository;

  /// Appointment document repository (for document review workflow)
  AppointmentDocumentRepository get appointmentDocuments =>
      _appointmentDocumentRepository;

  /// Announcement repository (read-only on mobile)
  AnnouncementRepository get announcements => _announcementRepository;

  /// Maintenance window repository (read-only)
  MaintenanceRepository get maintenance => _maintenanceRepository;

  /// Recording repository (for meeting recordings)
  RecordingRepository get recordings => _recordingRepository;

  /// Plan repository (consultation, subscription, webinar, class plans)
  PlanRepository get plans => _planRepository;

  /// Organization repository (read-only enterprise org context)
  OrganizationRepository get organizations => _organizationRepository;

  /// Execute raw SQL query and return results as maps
  Future<List<Map<String, dynamic>>> executeRaw(
    String sql,
    List<dynamic> parameters,
  ) async {
    return _executor.executeRaw(sql, parameters);
  }

  // ==================== Legacy Methods ====================
  // These methods delegate to repositories. They will be deprecated once all
  // services are updated to use repositories directly.

  /// @deprecated Use users.findByEmail instead
  Future<Map<String, dynamic>?> findUserByEmail(String email) =>
      _userRepository.findByEmail(email);

  /// @deprecated Use users.findById instead
  Future<Map<String, dynamic>?> findUserById(String id) =>
      _userRepository.findById(id);

  /// @deprecated Use users.create instead
  Future<Map<String, dynamic>> createUser({
    required String id,
    required String email,
    String? name,
    String? image,
    String role = 'CONSULTEE',
    TransactionExecutor? executor,
  }) =>
      _userRepository.create(
        id: id,
        email: email,
        name: name,
        image: image,
        role: role,
        txn: executor,
      );

  /// @deprecated Use users.delete instead
  Future<void> deleteUser(String id) => _userRepository.delete(id);

  /// @deprecated Use accounts.findByUserAndProvider instead
  Future<Map<String, dynamic>?> findAccountByUserAndProvider(
    String userId,
    String providerId,
  ) =>
      _accountRepository.findByUserAndProvider(userId, providerId);

  /// @deprecated Use users.update instead
  Future<Map<String, dynamic>?> updateUser({
    required String id,
    String? name,
    String? image,
  }) =>
      _userRepository.update(id: id, name: name, image: image);

  /// @deprecated Use accounts.createOAuth instead
  Future<Map<String, dynamic>> createOAuthAccount({
    required String id,
    required String userId,
    required String providerId,
    required String accountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? executor,
  }) =>
      _accountRepository.createOAuth(
        id: id,
        userId: userId,
        providerId: providerId,
        accountId: accountId,
        accessToken: accessToken,
        idToken: idToken,
        txn: executor,
      );

  /// @deprecated Use sessions.findById instead
  Future<Map<String, dynamic>?> findSessionById(String sessionId) =>
      _sessionRepository.findById(sessionId);

  /// @deprecated Use sessions.findByToken instead
  Future<Map<String, dynamic>?> findSessionByToken(String token) =>
      _sessionRepository.findByToken(token);

  /// @deprecated Use sessions.create instead
  Future<Map<String, dynamic>> createSession({
    required String id,
    required String token,
    required String userId,
    required DateTime expiresAt,
  }) =>
      _sessionRepository.create(
        id: id,
        token: token,
        userId: userId,
        expiresAt: expiresAt,
      );

  /// @deprecated Use sessions.delete instead
  Future<void> deleteSession(String sessionId) =>
      _sessionRepository.delete(sessionId);

  /// @deprecated Use sessions.deleteByUserId instead
  Future<void> deleteUserSessions(String userId) =>
      _sessionRepository.deleteByUserId(userId);

  /// @deprecated Use consulteeProfiles.create instead
  Future<Map<String, dynamic>> createConsulteeProfile({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) =>
      _consulteeProfileRepository.create(
        id: id,
        userId: userId,
        txn: executor,
      );

  /// Execute within a transaction
  Future<T> executeInTransaction<T>(
    Future<T> Function(TransactionExecutor) callback,
  ) async {
    return _executor.executeInTransaction(callback);
  }

  /// Close the database connection
  Future<void> close() async {
    await _executor.dispose();
    _instance = null;
  }
}
