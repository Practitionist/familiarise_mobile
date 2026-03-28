// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get originalAmount => throw _privateConstructorUsedError;
  int get taxAmount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get receiptUrl => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentIntent => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool get isMockPayment => throw _privateConstructorUsedError;
  String? get buyerCountry => throw _privateConstructorUsedError;
  bool get isInternational => throw _privateConstructorUsedError;
  String? get displayCurrencyAtCheckout => throw _privateConstructorUsedError;
  double? get exchangeRateAtCheckout => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  DiscountCode? get discountCode => throw _privateConstructorUsedError;
  String? get discountCodeId => throw _privateConstructorUsedError;
  List<Refund> get refunds => throw _privateConstructorUsedError;
  List<Dispute> get disputes => throw _privateConstructorUsedError;
  List<ConsultantEarnings> get earnings => throw _privateConstructorUsedError;
  List<ReferralCreditUsage> get creditUsages =>
      throw _privateConstructorUsedError;
  Invoice? get invoice => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String id,
      int amount,
      int originalAmount,
      int taxAmount,
      String currency,
      String? description,
      String? receiptUrl,
      String paymentMethod,
      String paymentIntent,
      PaymentGateway paymentGateway,
      PaymentStatus paymentStatus,
      DateTime? expiresAt,
      bool isMockPayment,
      String? buyerCountry,
      bool isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      DiscountCode? discountCode,
      String? discountCodeId,
      List<Refund> refunds,
      List<Dispute> disputes,
      List<ConsultantEarnings> earnings,
      List<ReferralCreditUsage> creditUsages,
      Invoice? invoice,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
  $AppointmentCopyWith<$Res>? get appointment;
  $DiscountCodeCopyWith<$Res>? get discountCode;
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? taxAmount = null,
    Object? currency = null,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = null,
    Object? paymentIntent = null,
    Object? paymentGateway = null,
    Object? paymentStatus = null,
    Object? expiresAt = freezed,
    Object? isMockPayment = null,
    Object? buyerCountry = freezed,
    Object? isInternational = null,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? discountCode = freezed,
    Object? discountCodeId = freezed,
    Object? refunds = null,
    Object? disputes = null,
    Object? earnings = null,
    Object? creditUsages = null,
    Object? invoice = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: null == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: null == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as DiscountCode?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      refunds: null == refunds
          ? _value.refunds
          : refunds // ignore: cast_nullable_to_non_nullable
              as List<Refund>,
      disputes: null == disputes
          ? _value.disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as List<Dispute>,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      creditUsages: null == creditUsages
          ? _value.creditUsages
          : creditUsages // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsage>,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeCopyWith<$Res>? get discountCode {
    if (_value.discountCode == null) {
      return null;
    }

    return $DiscountCodeCopyWith<$Res>(_value.discountCode!, (value) {
      return _then(_value.copyWith(discountCode: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_value.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.invoice!, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int amount,
      int originalAmount,
      int taxAmount,
      String currency,
      String? description,
      String? receiptUrl,
      String paymentMethod,
      String paymentIntent,
      PaymentGateway paymentGateway,
      PaymentStatus paymentStatus,
      DateTime? expiresAt,
      bool isMockPayment,
      String? buyerCountry,
      bool isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      DiscountCode? discountCode,
      String? discountCodeId,
      List<Refund> refunds,
      List<Dispute> disputes,
      List<ConsultantEarnings> earnings,
      List<ReferralCreditUsage> creditUsages,
      Invoice? invoice,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $AppointmentCopyWith<$Res>? get appointment;
  @override
  $DiscountCodeCopyWith<$Res>? get discountCode;
  @override
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? originalAmount = null,
    Object? taxAmount = null,
    Object? currency = null,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = null,
    Object? paymentIntent = null,
    Object? paymentGateway = null,
    Object? paymentStatus = null,
    Object? expiresAt = freezed,
    Object? isMockPayment = null,
    Object? buyerCountry = freezed,
    Object? isInternational = null,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? discountCode = freezed,
    Object? discountCodeId = freezed,
    Object? refunds = null,
    Object? disputes = null,
    Object? earnings = null,
    Object? creditUsages = null,
    Object? invoice = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: null == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: null == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as DiscountCode?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      refunds: null == refunds
          ? _value._refunds
          : refunds // ignore: cast_nullable_to_non_nullable
              as List<Refund>,
      disputes: null == disputes
          ? _value._disputes
          : disputes // ignore: cast_nullable_to_non_nullable
              as List<Dispute>,
      earnings: null == earnings
          ? _value._earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as List<ConsultantEarnings>,
      creditUsages: null == creditUsages
          ? _value._creditUsages
          : creditUsages // ignore: cast_nullable_to_non_nullable
              as List<ReferralCreditUsage>,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {required this.id,
      required this.amount,
      required this.originalAmount,
      this.taxAmount = 0,
      required this.currency,
      this.description,
      this.receiptUrl,
      required this.paymentMethod,
      required this.paymentIntent,
      required this.paymentGateway,
      required this.paymentStatus,
      this.expiresAt,
      this.isMockPayment = false,
      this.buyerCountry,
      this.isInternational = false,
      this.displayCurrencyAtCheckout,
      this.exchangeRateAtCheckout,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.appointment,
      this.appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.discountCode,
      this.discountCodeId,
      required final List<Refund> refunds,
      required final List<Dispute> disputes,
      required final List<ConsultantEarnings> earnings,
      required final List<ReferralCreditUsage> creditUsages,
      this.invoice,
      required this.createdAt,
      required this.updatedAt})
      : _refunds = refunds,
        _disputes = disputes,
        _earnings = earnings,
        _creditUsages = creditUsages;

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final int originalAmount;
  @override
  @JsonKey()
  final int taxAmount;
  @override
  final String currency;
  @override
  final String? description;
  @override
  final String? receiptUrl;
  @override
  final String paymentMethod;
  @override
  final String paymentIntent;
  @override
  final PaymentGateway paymentGateway;
  @override
  final PaymentStatus paymentStatus;
  @override
  final DateTime? expiresAt;
  @override
  @JsonKey()
  final bool isMockPayment;
  @override
  final String? buyerCountry;
  @override
  @JsonKey()
  final bool isInternational;
  @override
  final String? displayCurrencyAtCheckout;
  @override
  final double? exchangeRateAtCheckout;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Appointment? appointment;
  @override
  final String? appointmentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final DiscountCode? discountCode;
  @override
  final String? discountCodeId;
  final List<Refund> _refunds;
  @override
  List<Refund> get refunds {
    if (_refunds is EqualUnmodifiableListView) return _refunds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_refunds);
  }

  final List<Dispute> _disputes;
  @override
  List<Dispute> get disputes {
    if (_disputes is EqualUnmodifiableListView) return _disputes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disputes);
  }

  final List<ConsultantEarnings> _earnings;
  @override
  List<ConsultantEarnings> get earnings {
    if (_earnings is EqualUnmodifiableListView) return _earnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earnings);
  }

  final List<ReferralCreditUsage> _creditUsages;
  @override
  List<ReferralCreditUsage> get creditUsages {
    if (_creditUsages is EqualUnmodifiableListView) return _creditUsages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditUsages);
  }

  @override
  final Invoice? invoice;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Payment(id: $id, amount: $amount, originalAmount: $originalAmount, taxAmount: $taxAmount, currency: $currency, description: $description, receiptUrl: $receiptUrl, paymentMethod: $paymentMethod, paymentIntent: $paymentIntent, paymentGateway: $paymentGateway, paymentStatus: $paymentStatus, expiresAt: $expiresAt, isMockPayment: $isMockPayment, buyerCountry: $buyerCountry, isInternational: $isInternational, displayCurrencyAtCheckout: $displayCurrencyAtCheckout, exchangeRateAtCheckout: $exchangeRateAtCheckout, user: $user, userId: $userId, appointment: $appointment, appointmentId: $appointmentId, discountCode: $discountCode, discountCodeId: $discountCodeId, refunds: $refunds, disputes: $disputes, earnings: $earnings, creditUsages: $creditUsages, invoice: $invoice, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isMockPayment, isMockPayment) ||
                other.isMockPayment == isMockPayment) &&
            (identical(other.buyerCountry, buyerCountry) ||
                other.buyerCountry == buyerCountry) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.displayCurrencyAtCheckout,
                    displayCurrencyAtCheckout) ||
                other.displayCurrencyAtCheckout == displayCurrencyAtCheckout) &&
            (identical(other.exchangeRateAtCheckout, exchangeRateAtCheckout) ||
                other.exchangeRateAtCheckout == exchangeRateAtCheckout) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.discountCode, discountCode) ||
                other.discountCode == discountCode) &&
            (identical(other.discountCodeId, discountCodeId) ||
                other.discountCodeId == discountCodeId) &&
            const DeepCollectionEquality().equals(other._refunds, _refunds) &&
            const DeepCollectionEquality().equals(other._disputes, _disputes) &&
            const DeepCollectionEquality().equals(other._earnings, _earnings) &&
            const DeepCollectionEquality()
                .equals(other._creditUsages, _creditUsages) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        amount,
        originalAmount,
        taxAmount,
        currency,
        description,
        receiptUrl,
        paymentMethod,
        paymentIntent,
        paymentGateway,
        paymentStatus,
        expiresAt,
        isMockPayment,
        buyerCountry,
        isInternational,
        displayCurrencyAtCheckout,
        exchangeRateAtCheckout,
        user,
        userId,
        appointment,
        appointmentId,
        discountCode,
        discountCodeId,
        const DeepCollectionEquality().hash(_refunds),
        const DeepCollectionEquality().hash(_disputes),
        const DeepCollectionEquality().hash(_earnings),
        const DeepCollectionEquality().hash(_creditUsages),
        invoice,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final String id,
      required final int amount,
      required final int originalAmount,
      final int taxAmount,
      required final String currency,
      final String? description,
      final String? receiptUrl,
      required final String paymentMethod,
      required final String paymentIntent,
      required final PaymentGateway paymentGateway,
      required final PaymentStatus paymentStatus,
      final DateTime? expiresAt,
      final bool isMockPayment,
      final String? buyerCountry,
      final bool isInternational,
      final String? displayCurrencyAtCheckout,
      final double? exchangeRateAtCheckout,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Appointment? appointment,
      final String? appointmentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final DiscountCode? discountCode,
      final String? discountCodeId,
      required final List<Refund> refunds,
      required final List<Dispute> disputes,
      required final List<ConsultantEarnings> earnings,
      required final List<ReferralCreditUsage> creditUsages,
      final Invoice? invoice,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  int get originalAmount;
  @override
  int get taxAmount;
  @override
  String get currency;
  @override
  String? get description;
  @override
  String? get receiptUrl;
  @override
  String get paymentMethod;
  @override
  String get paymentIntent;
  @override
  PaymentGateway get paymentGateway;
  @override
  PaymentStatus get paymentStatus;
  @override
  DateTime? get expiresAt;
  @override
  bool get isMockPayment;
  @override
  String? get buyerCountry;
  @override
  bool get isInternational;
  @override
  String? get displayCurrencyAtCheckout;
  @override
  double? get exchangeRateAtCheckout;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment;
  @override
  String? get appointmentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  DiscountCode? get discountCode;
  @override
  String? get discountCodeId;
  @override
  List<Refund> get refunds;
  @override
  List<Dispute> get disputes;
  @override
  List<ConsultantEarnings> get earnings;
  @override
  List<ReferralCreditUsage> get creditUsages;
  @override
  Invoice? get invoice;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePaymentInput _$CreatePaymentInputFromJson(Map<String, dynamic> json) {
  return _CreatePaymentInput.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentInput {
  int get amount => throw _privateConstructorUsedError;
  int get originalAmount => throw _privateConstructorUsedError;
  int? get taxAmount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get receiptUrl => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentIntent => throw _privateConstructorUsedError;
  PaymentGateway get paymentGateway => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool? get isMockPayment => throw _privateConstructorUsedError;
  String? get buyerCountry => throw _privateConstructorUsedError;
  bool? get isInternational => throw _privateConstructorUsedError;
  String? get displayCurrencyAtCheckout => throw _privateConstructorUsedError;
  double? get exchangeRateAtCheckout => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  String? get discountCodeId => throw _privateConstructorUsedError;

  /// Serializes this CreatePaymentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePaymentInputCopyWith<CreatePaymentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentInputCopyWith<$Res> {
  factory $CreatePaymentInputCopyWith(
          CreatePaymentInput value, $Res Function(CreatePaymentInput) then) =
      _$CreatePaymentInputCopyWithImpl<$Res, CreatePaymentInput>;
  @useResult
  $Res call(
      {int amount,
      int originalAmount,
      int? taxAmount,
      String currency,
      String? description,
      String? receiptUrl,
      String paymentMethod,
      String paymentIntent,
      PaymentGateway paymentGateway,
      PaymentStatus paymentStatus,
      DateTime? expiresAt,
      bool? isMockPayment,
      String? buyerCountry,
      bool? isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      String userId,
      String? appointmentId,
      String? discountCodeId});
}

/// @nodoc
class _$CreatePaymentInputCopyWithImpl<$Res, $Val extends CreatePaymentInput>
    implements $CreatePaymentInputCopyWith<$Res> {
  _$CreatePaymentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? originalAmount = null,
    Object? taxAmount = freezed,
    Object? currency = null,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = null,
    Object? paymentIntent = null,
    Object? paymentGateway = null,
    Object? paymentStatus = null,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = null,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePaymentInputImplCopyWith<$Res>
    implements $CreatePaymentInputCopyWith<$Res> {
  factory _$$CreatePaymentInputImplCopyWith(_$CreatePaymentInputImpl value,
          $Res Function(_$CreatePaymentInputImpl) then) =
      __$$CreatePaymentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      int originalAmount,
      int? taxAmount,
      String currency,
      String? description,
      String? receiptUrl,
      String paymentMethod,
      String paymentIntent,
      PaymentGateway paymentGateway,
      PaymentStatus paymentStatus,
      DateTime? expiresAt,
      bool? isMockPayment,
      String? buyerCountry,
      bool? isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      String userId,
      String? appointmentId,
      String? discountCodeId});
}

/// @nodoc
class __$$CreatePaymentInputImplCopyWithImpl<$Res>
    extends _$CreatePaymentInputCopyWithImpl<$Res, _$CreatePaymentInputImpl>
    implements _$$CreatePaymentInputImplCopyWith<$Res> {
  __$$CreatePaymentInputImplCopyWithImpl(_$CreatePaymentInputImpl _value,
      $Res Function(_$CreatePaymentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? originalAmount = null,
    Object? taxAmount = freezed,
    Object? currency = null,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = null,
    Object? paymentIntent = null,
    Object? paymentGateway = null,
    Object? paymentStatus = null,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = null,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
  }) {
    return _then(_$CreatePaymentInputImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      originalAmount: null == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePaymentInputImpl implements _CreatePaymentInput {
  const _$CreatePaymentInputImpl(
      {required this.amount,
      required this.originalAmount,
      this.taxAmount = 0,
      required this.currency,
      this.description,
      this.receiptUrl,
      required this.paymentMethod,
      required this.paymentIntent,
      required this.paymentGateway,
      required this.paymentStatus,
      this.expiresAt,
      this.isMockPayment = false,
      this.buyerCountry,
      this.isInternational = false,
      this.displayCurrencyAtCheckout,
      this.exchangeRateAtCheckout,
      required this.userId,
      this.appointmentId,
      this.discountCodeId});

  factory _$CreatePaymentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePaymentInputImplFromJson(json);

  @override
  final int amount;
  @override
  final int originalAmount;
  @override
  @JsonKey()
  final int? taxAmount;
  @override
  final String currency;
  @override
  final String? description;
  @override
  final String? receiptUrl;
  @override
  final String paymentMethod;
  @override
  final String paymentIntent;
  @override
  final PaymentGateway paymentGateway;
  @override
  final PaymentStatus paymentStatus;
  @override
  final DateTime? expiresAt;
  @override
  @JsonKey()
  final bool? isMockPayment;
  @override
  final String? buyerCountry;
  @override
  @JsonKey()
  final bool? isInternational;
  @override
  final String? displayCurrencyAtCheckout;
  @override
  final double? exchangeRateAtCheckout;
  @override
  final String userId;
  @override
  final String? appointmentId;
  @override
  final String? discountCodeId;

  @override
  String toString() {
    return 'CreatePaymentInput(amount: $amount, originalAmount: $originalAmount, taxAmount: $taxAmount, currency: $currency, description: $description, receiptUrl: $receiptUrl, paymentMethod: $paymentMethod, paymentIntent: $paymentIntent, paymentGateway: $paymentGateway, paymentStatus: $paymentStatus, expiresAt: $expiresAt, isMockPayment: $isMockPayment, buyerCountry: $buyerCountry, isInternational: $isInternational, displayCurrencyAtCheckout: $displayCurrencyAtCheckout, exchangeRateAtCheckout: $exchangeRateAtCheckout, userId: $userId, appointmentId: $appointmentId, discountCodeId: $discountCodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaymentInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isMockPayment, isMockPayment) ||
                other.isMockPayment == isMockPayment) &&
            (identical(other.buyerCountry, buyerCountry) ||
                other.buyerCountry == buyerCountry) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.displayCurrencyAtCheckout,
                    displayCurrencyAtCheckout) ||
                other.displayCurrencyAtCheckout == displayCurrencyAtCheckout) &&
            (identical(other.exchangeRateAtCheckout, exchangeRateAtCheckout) ||
                other.exchangeRateAtCheckout == exchangeRateAtCheckout) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.discountCodeId, discountCodeId) ||
                other.discountCodeId == discountCodeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        amount,
        originalAmount,
        taxAmount,
        currency,
        description,
        receiptUrl,
        paymentMethod,
        paymentIntent,
        paymentGateway,
        paymentStatus,
        expiresAt,
        isMockPayment,
        buyerCountry,
        isInternational,
        displayCurrencyAtCheckout,
        exchangeRateAtCheckout,
        userId,
        appointmentId,
        discountCodeId
      ]);

  /// Create a copy of CreatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaymentInputImplCopyWith<_$CreatePaymentInputImpl> get copyWith =>
      __$$CreatePaymentInputImplCopyWithImpl<_$CreatePaymentInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaymentInputImplToJson(
      this,
    );
  }
}

abstract class _CreatePaymentInput implements CreatePaymentInput {
  const factory _CreatePaymentInput(
      {required final int amount,
      required final int originalAmount,
      final int? taxAmount,
      required final String currency,
      final String? description,
      final String? receiptUrl,
      required final String paymentMethod,
      required final String paymentIntent,
      required final PaymentGateway paymentGateway,
      required final PaymentStatus paymentStatus,
      final DateTime? expiresAt,
      final bool? isMockPayment,
      final String? buyerCountry,
      final bool? isInternational,
      final String? displayCurrencyAtCheckout,
      final double? exchangeRateAtCheckout,
      required final String userId,
      final String? appointmentId,
      final String? discountCodeId}) = _$CreatePaymentInputImpl;

  factory _CreatePaymentInput.fromJson(Map<String, dynamic> json) =
      _$CreatePaymentInputImpl.fromJson;

  @override
  int get amount;
  @override
  int get originalAmount;
  @override
  int? get taxAmount;
  @override
  String get currency;
  @override
  String? get description;
  @override
  String? get receiptUrl;
  @override
  String get paymentMethod;
  @override
  String get paymentIntent;
  @override
  PaymentGateway get paymentGateway;
  @override
  PaymentStatus get paymentStatus;
  @override
  DateTime? get expiresAt;
  @override
  bool? get isMockPayment;
  @override
  String? get buyerCountry;
  @override
  bool? get isInternational;
  @override
  String? get displayCurrencyAtCheckout;
  @override
  double? get exchangeRateAtCheckout;
  @override
  String get userId;
  @override
  String? get appointmentId;
  @override
  String? get discountCodeId;

  /// Create a copy of CreatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePaymentInputImplCopyWith<_$CreatePaymentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePaymentInput _$UpdatePaymentInputFromJson(Map<String, dynamic> json) {
  return _UpdatePaymentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdatePaymentInput {
  int? get amount => throw _privateConstructorUsedError;
  int? get originalAmount => throw _privateConstructorUsedError;
  int? get taxAmount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get receiptUrl => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get paymentIntent => throw _privateConstructorUsedError;
  PaymentGateway? get paymentGateway => throw _privateConstructorUsedError;
  PaymentStatus? get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool? get isMockPayment => throw _privateConstructorUsedError;
  String? get buyerCountry => throw _privateConstructorUsedError;
  bool? get isInternational => throw _privateConstructorUsedError;
  String? get displayCurrencyAtCheckout => throw _privateConstructorUsedError;
  double? get exchangeRateAtCheckout => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;
  String? get discountCodeId => throw _privateConstructorUsedError;

  /// Serializes this UpdatePaymentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePaymentInputCopyWith<UpdatePaymentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePaymentInputCopyWith<$Res> {
  factory $UpdatePaymentInputCopyWith(
          UpdatePaymentInput value, $Res Function(UpdatePaymentInput) then) =
      _$UpdatePaymentInputCopyWithImpl<$Res, UpdatePaymentInput>;
  @useResult
  $Res call(
      {int? amount,
      int? originalAmount,
      int? taxAmount,
      String? currency,
      String? description,
      String? receiptUrl,
      String? paymentMethod,
      String? paymentIntent,
      PaymentGateway? paymentGateway,
      PaymentStatus? paymentStatus,
      DateTime? expiresAt,
      bool? isMockPayment,
      String? buyerCountry,
      bool? isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      String? userId,
      String? appointmentId,
      String? discountCodeId});
}

/// @nodoc
class _$UpdatePaymentInputCopyWithImpl<$Res, $Val extends UpdatePaymentInput>
    implements $UpdatePaymentInputCopyWith<$Res> {
  _$UpdatePaymentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? paymentGateway = freezed,
    Object? paymentStatus = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePaymentInputImplCopyWith<$Res>
    implements $UpdatePaymentInputCopyWith<$Res> {
  factory _$$UpdatePaymentInputImplCopyWith(_$UpdatePaymentInputImpl value,
          $Res Function(_$UpdatePaymentInputImpl) then) =
      __$$UpdatePaymentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      int? originalAmount,
      int? taxAmount,
      String? currency,
      String? description,
      String? receiptUrl,
      String? paymentMethod,
      String? paymentIntent,
      PaymentGateway? paymentGateway,
      PaymentStatus? paymentStatus,
      DateTime? expiresAt,
      bool? isMockPayment,
      String? buyerCountry,
      bool? isInternational,
      String? displayCurrencyAtCheckout,
      double? exchangeRateAtCheckout,
      String? userId,
      String? appointmentId,
      String? discountCodeId});
}

/// @nodoc
class __$$UpdatePaymentInputImplCopyWithImpl<$Res>
    extends _$UpdatePaymentInputCopyWithImpl<$Res, _$UpdatePaymentInputImpl>
    implements _$$UpdatePaymentInputImplCopyWith<$Res> {
  __$$UpdatePaymentInputImplCopyWithImpl(_$UpdatePaymentInputImpl _value,
      $Res Function(_$UpdatePaymentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? paymentGateway = freezed,
    Object? paymentStatus = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
  }) {
    return _then(_$UpdatePaymentInputImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePaymentInputImpl implements _UpdatePaymentInput {
  const _$UpdatePaymentInputImpl(
      {this.amount,
      this.originalAmount,
      this.taxAmount,
      this.currency,
      this.description,
      this.receiptUrl,
      this.paymentMethod,
      this.paymentIntent,
      this.paymentGateway,
      this.paymentStatus,
      this.expiresAt,
      this.isMockPayment,
      this.buyerCountry,
      this.isInternational,
      this.displayCurrencyAtCheckout,
      this.exchangeRateAtCheckout,
      this.userId,
      this.appointmentId,
      this.discountCodeId});

  factory _$UpdatePaymentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePaymentInputImplFromJson(json);

  @override
  final int? amount;
  @override
  final int? originalAmount;
  @override
  final int? taxAmount;
  @override
  final String? currency;
  @override
  final String? description;
  @override
  final String? receiptUrl;
  @override
  final String? paymentMethod;
  @override
  final String? paymentIntent;
  @override
  final PaymentGateway? paymentGateway;
  @override
  final PaymentStatus? paymentStatus;
  @override
  final DateTime? expiresAt;
  @override
  final bool? isMockPayment;
  @override
  final String? buyerCountry;
  @override
  final bool? isInternational;
  @override
  final String? displayCurrencyAtCheckout;
  @override
  final double? exchangeRateAtCheckout;
  @override
  final String? userId;
  @override
  final String? appointmentId;
  @override
  final String? discountCodeId;

  @override
  String toString() {
    return 'UpdatePaymentInput(amount: $amount, originalAmount: $originalAmount, taxAmount: $taxAmount, currency: $currency, description: $description, receiptUrl: $receiptUrl, paymentMethod: $paymentMethod, paymentIntent: $paymentIntent, paymentGateway: $paymentGateway, paymentStatus: $paymentStatus, expiresAt: $expiresAt, isMockPayment: $isMockPayment, buyerCountry: $buyerCountry, isInternational: $isInternational, displayCurrencyAtCheckout: $displayCurrencyAtCheckout, exchangeRateAtCheckout: $exchangeRateAtCheckout, userId: $userId, appointmentId: $appointmentId, discountCodeId: $discountCodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentInputImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isMockPayment, isMockPayment) ||
                other.isMockPayment == isMockPayment) &&
            (identical(other.buyerCountry, buyerCountry) ||
                other.buyerCountry == buyerCountry) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.displayCurrencyAtCheckout,
                    displayCurrencyAtCheckout) ||
                other.displayCurrencyAtCheckout == displayCurrencyAtCheckout) &&
            (identical(other.exchangeRateAtCheckout, exchangeRateAtCheckout) ||
                other.exchangeRateAtCheckout == exchangeRateAtCheckout) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.discountCodeId, discountCodeId) ||
                other.discountCodeId == discountCodeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        amount,
        originalAmount,
        taxAmount,
        currency,
        description,
        receiptUrl,
        paymentMethod,
        paymentIntent,
        paymentGateway,
        paymentStatus,
        expiresAt,
        isMockPayment,
        buyerCountry,
        isInternational,
        displayCurrencyAtCheckout,
        exchangeRateAtCheckout,
        userId,
        appointmentId,
        discountCodeId
      ]);

  /// Create a copy of UpdatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentInputImplCopyWith<_$UpdatePaymentInputImpl> get copyWith =>
      __$$UpdatePaymentInputImplCopyWithImpl<_$UpdatePaymentInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePaymentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdatePaymentInput implements UpdatePaymentInput {
  const factory _UpdatePaymentInput(
      {final int? amount,
      final int? originalAmount,
      final int? taxAmount,
      final String? currency,
      final String? description,
      final String? receiptUrl,
      final String? paymentMethod,
      final String? paymentIntent,
      final PaymentGateway? paymentGateway,
      final PaymentStatus? paymentStatus,
      final DateTime? expiresAt,
      final bool? isMockPayment,
      final String? buyerCountry,
      final bool? isInternational,
      final String? displayCurrencyAtCheckout,
      final double? exchangeRateAtCheckout,
      final String? userId,
      final String? appointmentId,
      final String? discountCodeId}) = _$UpdatePaymentInputImpl;

  factory _UpdatePaymentInput.fromJson(Map<String, dynamic> json) =
      _$UpdatePaymentInputImpl.fromJson;

  @override
  int? get amount;
  @override
  int? get originalAmount;
  @override
  int? get taxAmount;
  @override
  String? get currency;
  @override
  String? get description;
  @override
  String? get receiptUrl;
  @override
  String? get paymentMethod;
  @override
  String? get paymentIntent;
  @override
  PaymentGateway? get paymentGateway;
  @override
  PaymentStatus? get paymentStatus;
  @override
  DateTime? get expiresAt;
  @override
  bool? get isMockPayment;
  @override
  String? get buyerCountry;
  @override
  bool? get isInternational;
  @override
  String? get displayCurrencyAtCheckout;
  @override
  double? get exchangeRateAtCheckout;
  @override
  String? get userId;
  @override
  String? get appointmentId;
  @override
  String? get discountCodeId;

  /// Create a copy of UpdatePaymentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaymentInputImplCopyWith<_$UpdatePaymentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentWhereUniqueInput _$PaymentWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _PaymentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$PaymentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get paymentIntent => throw _privateConstructorUsedError;

  /// Serializes this PaymentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentWhereUniqueInputCopyWith<PaymentWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentWhereUniqueInputCopyWith<$Res> {
  factory $PaymentWhereUniqueInputCopyWith(PaymentWhereUniqueInput value,
          $Res Function(PaymentWhereUniqueInput) then) =
      _$PaymentWhereUniqueInputCopyWithImpl<$Res, PaymentWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? paymentIntent});
}

/// @nodoc
class _$PaymentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends PaymentWhereUniqueInput>
    implements $PaymentWhereUniqueInputCopyWith<$Res> {
  _$PaymentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentIntent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentWhereUniqueInputImplCopyWith<$Res>
    implements $PaymentWhereUniqueInputCopyWith<$Res> {
  factory _$$PaymentWhereUniqueInputImplCopyWith(
          _$PaymentWhereUniqueInputImpl value,
          $Res Function(_$PaymentWhereUniqueInputImpl) then) =
      __$$PaymentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? paymentIntent});
}

/// @nodoc
class __$$PaymentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$PaymentWhereUniqueInputCopyWithImpl<$Res,
        _$PaymentWhereUniqueInputImpl>
    implements _$$PaymentWhereUniqueInputImplCopyWith<$Res> {
  __$$PaymentWhereUniqueInputImplCopyWithImpl(
      _$PaymentWhereUniqueInputImpl _value,
      $Res Function(_$PaymentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentIntent = freezed,
  }) {
    return _then(_$PaymentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentWhereUniqueInputImpl implements _PaymentWhereUniqueInput {
  const _$PaymentWhereUniqueInputImpl({this.id, this.paymentIntent});

  factory _$PaymentWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? paymentIntent;

  @override
  String toString() {
    return 'PaymentWhereUniqueInput(id: $id, paymentIntent: $paymentIntent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, paymentIntent);

  /// Create a copy of PaymentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentWhereUniqueInputImplCopyWith<_$PaymentWhereUniqueInputImpl>
      get copyWith => __$$PaymentWhereUniqueInputImplCopyWithImpl<
          _$PaymentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _PaymentWhereUniqueInput implements PaymentWhereUniqueInput {
  const factory _PaymentWhereUniqueInput(
      {final String? id,
      final String? paymentIntent}) = _$PaymentWhereUniqueInputImpl;

  factory _PaymentWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$PaymentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get paymentIntent;

  /// Create a copy of PaymentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentWhereUniqueInputImplCopyWith<_$PaymentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentWhereInput _$PaymentWhereInputFromJson(Map<String, dynamic> json) {
  return _PaymentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$PaymentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  IntFilter? get amount => throw _privateConstructorUsedError;
  IntFilter? get originalAmount => throw _privateConstructorUsedError;
  IntFilter? get taxAmount => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  StringFilter? get receiptUrl => throw _privateConstructorUsedError;
  StringFilter? get paymentMethod => throw _privateConstructorUsedError;
  StringFilter? get paymentIntent => throw _privateConstructorUsedError;
  PaymentGatewayFilter? get paymentGateway =>
      throw _privateConstructorUsedError;
  PaymentStatusFilter? get paymentStatus => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  BooleanFilter? get isMockPayment => throw _privateConstructorUsedError;
  StringFilter? get buyerCountry => throw _privateConstructorUsedError;
  BooleanFilter? get isInternational => throw _privateConstructorUsedError;
  StringFilter? get displayCurrencyAtCheckout =>
      throw _privateConstructorUsedError;
  FloatFilter? get exchangeRateAtCheckout => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;

  /// Filter by appointment relation
  AppointmentRelationFilter? get appointment =>
      throw _privateConstructorUsedError;
  StringFilter? get appointmentId => throw _privateConstructorUsedError;

  /// Filter by discountCode relation
  DiscountCodeRelationFilter? get discountCode =>
      throw _privateConstructorUsedError;
  StringFilter? get discountCodeId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<PaymentWhereInput>? get AND => throw _privateConstructorUsedError;
  List<PaymentWhereInput>? get OR => throw _privateConstructorUsedError;
  PaymentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this PaymentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentWhereInputCopyWith<PaymentWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentWhereInputCopyWith<$Res> {
  factory $PaymentWhereInputCopyWith(
          PaymentWhereInput value, $Res Function(PaymentWhereInput) then) =
      _$PaymentWhereInputCopyWithImpl<$Res, PaymentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      IntFilter? originalAmount,
      IntFilter? taxAmount,
      StringFilter? currency,
      StringFilter? description,
      StringFilter? receiptUrl,
      StringFilter? paymentMethod,
      StringFilter? paymentIntent,
      PaymentGatewayFilter? paymentGateway,
      PaymentStatusFilter? paymentStatus,
      DateTimeFilter? expiresAt,
      BooleanFilter? isMockPayment,
      StringFilter? buyerCountry,
      BooleanFilter? isInternational,
      StringFilter? displayCurrencyAtCheckout,
      FloatFilter? exchangeRateAtCheckout,
      UserRelationFilter? user,
      StringFilter? userId,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DiscountCodeRelationFilter? discountCode,
      StringFilter? discountCodeId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<PaymentWhereInput>? AND,
      List<PaymentWhereInput>? OR,
      PaymentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $IntFilterCopyWith<$Res>? get amount;
  $IntFilterCopyWith<$Res>? get originalAmount;
  $IntFilterCopyWith<$Res>? get taxAmount;
  $StringFilterCopyWith<$Res>? get currency;
  $StringFilterCopyWith<$Res>? get description;
  $StringFilterCopyWith<$Res>? get receiptUrl;
  $StringFilterCopyWith<$Res>? get paymentMethod;
  $StringFilterCopyWith<$Res>? get paymentIntent;
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  $PaymentStatusFilterCopyWith<$Res>? get paymentStatus;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $BooleanFilterCopyWith<$Res>? get isMockPayment;
  $StringFilterCopyWith<$Res>? get buyerCountry;
  $BooleanFilterCopyWith<$Res>? get isInternational;
  $StringFilterCopyWith<$Res>? get displayCurrencyAtCheckout;
  $FloatFilterCopyWith<$Res>? get exchangeRateAtCheckout;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  $StringFilterCopyWith<$Res>? get appointmentId;
  $DiscountCodeRelationFilterCopyWith<$Res>? get discountCode;
  $StringFilterCopyWith<$Res>? get discountCodeId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $PaymentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$PaymentWhereInputCopyWithImpl<$Res, $Val extends PaymentWhereInput>
    implements $PaymentWhereInputCopyWith<$Res> {
  _$PaymentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? paymentGateway = freezed,
    Object? paymentStatus = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? discountCode = freezed,
    Object? discountCodeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as DiscountCodeRelationFilter?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PaymentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PaymentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get originalAmount {
    if (_value.originalAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.originalAmount!, (value) {
      return _then(_value.copyWith(originalAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get taxAmount {
    if (_value.taxAmount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.taxAmount!, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get receiptUrl {
    if (_value.receiptUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.receiptUrl!, (value) {
      return _then(_value.copyWith(receiptUrl: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get paymentIntent {
    if (_value.paymentIntent == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.paymentIntent!, (value) {
      return _then(_value.copyWith(paymentIntent: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway {
    if (_value.paymentGateway == null) {
      return null;
    }

    return $PaymentGatewayFilterCopyWith<$Res>(_value.paymentGateway!, (value) {
      return _then(_value.copyWith(paymentGateway: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentStatusFilterCopyWith<$Res>? get paymentStatus {
    if (_value.paymentStatus == null) {
      return null;
    }

    return $PaymentStatusFilterCopyWith<$Res>(_value.paymentStatus!, (value) {
      return _then(_value.copyWith(paymentStatus: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get expiresAt {
    if (_value.expiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.expiresAt!, (value) {
      return _then(_value.copyWith(expiresAt: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isMockPayment {
    if (_value.isMockPayment == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isMockPayment!, (value) {
      return _then(_value.copyWith(isMockPayment: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get buyerCountry {
    if (_value.buyerCountry == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.buyerCountry!, (value) {
      return _then(_value.copyWith(buyerCountry: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isInternational {
    if (_value.isInternational == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isInternational!, (value) {
      return _then(_value.copyWith(isInternational: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get displayCurrencyAtCheckout {
    if (_value.displayCurrencyAtCheckout == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.displayCurrencyAtCheckout!,
        (value) {
      return _then(_value.copyWith(displayCurrencyAtCheckout: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get exchangeRateAtCheckout {
    if (_value.exchangeRateAtCheckout == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.exchangeRateAtCheckout!, (value) {
      return _then(_value.copyWith(exchangeRateAtCheckout: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentRelationFilterCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentRelationFilterCopyWith<$Res>(_value.appointment!,
        (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get appointmentId {
    if (_value.appointmentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.appointmentId!, (value) {
      return _then(_value.copyWith(appointmentId: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeRelationFilterCopyWith<$Res>? get discountCode {
    if (_value.discountCode == null) {
      return null;
    }

    return $DiscountCodeRelationFilterCopyWith<$Res>(_value.discountCode!,
        (value) {
      return _then(_value.copyWith(discountCode: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get discountCodeId {
    if (_value.discountCodeId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.discountCodeId!, (value) {
      return _then(_value.copyWith(discountCodeId: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_value.updatedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.updatedAt!, (value) {
      return _then(_value.copyWith(updatedAt: value) as $Val);
    });
  }

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentWhereInputImplCopyWith<$Res>
    implements $PaymentWhereInputCopyWith<$Res> {
  factory _$$PaymentWhereInputImplCopyWith(_$PaymentWhereInputImpl value,
          $Res Function(_$PaymentWhereInputImpl) then) =
      __$$PaymentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? amount,
      IntFilter? originalAmount,
      IntFilter? taxAmount,
      StringFilter? currency,
      StringFilter? description,
      StringFilter? receiptUrl,
      StringFilter? paymentMethod,
      StringFilter? paymentIntent,
      PaymentGatewayFilter? paymentGateway,
      PaymentStatusFilter? paymentStatus,
      DateTimeFilter? expiresAt,
      BooleanFilter? isMockPayment,
      StringFilter? buyerCountry,
      BooleanFilter? isInternational,
      StringFilter? displayCurrencyAtCheckout,
      FloatFilter? exchangeRateAtCheckout,
      UserRelationFilter? user,
      StringFilter? userId,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DiscountCodeRelationFilter? discountCode,
      StringFilter? discountCodeId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<PaymentWhereInput>? AND,
      List<PaymentWhereInput>? OR,
      PaymentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $IntFilterCopyWith<$Res>? get amount;
  @override
  $IntFilterCopyWith<$Res>? get originalAmount;
  @override
  $IntFilterCopyWith<$Res>? get taxAmount;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $StringFilterCopyWith<$Res>? get receiptUrl;
  @override
  $StringFilterCopyWith<$Res>? get paymentMethod;
  @override
  $StringFilterCopyWith<$Res>? get paymentIntent;
  @override
  $PaymentGatewayFilterCopyWith<$Res>? get paymentGateway;
  @override
  $PaymentStatusFilterCopyWith<$Res>? get paymentStatus;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $BooleanFilterCopyWith<$Res>? get isMockPayment;
  @override
  $StringFilterCopyWith<$Res>? get buyerCountry;
  @override
  $BooleanFilterCopyWith<$Res>? get isInternational;
  @override
  $StringFilterCopyWith<$Res>? get displayCurrencyAtCheckout;
  @override
  $FloatFilterCopyWith<$Res>? get exchangeRateAtCheckout;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  @override
  $StringFilterCopyWith<$Res>? get appointmentId;
  @override
  $DiscountCodeRelationFilterCopyWith<$Res>? get discountCode;
  @override
  $StringFilterCopyWith<$Res>? get discountCodeId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $PaymentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$PaymentWhereInputImplCopyWithImpl<$Res>
    extends _$PaymentWhereInputCopyWithImpl<$Res, _$PaymentWhereInputImpl>
    implements _$$PaymentWhereInputImplCopyWith<$Res> {
  __$$PaymentWhereInputImplCopyWithImpl(_$PaymentWhereInputImpl _value,
      $Res Function(_$PaymentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? paymentGateway = freezed,
    Object? paymentStatus = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? discountCode = freezed,
    Object? discountCodeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$PaymentWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayFilter?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      discountCode: freezed == discountCode
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as DiscountCodeRelationFilter?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<PaymentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PaymentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PaymentWhereInputImpl implements _PaymentWhereInput {
  const _$PaymentWhereInputImpl(
      {this.id,
      this.amount,
      this.originalAmount,
      this.taxAmount,
      this.currency,
      this.description,
      this.receiptUrl,
      this.paymentMethod,
      this.paymentIntent,
      this.paymentGateway,
      this.paymentStatus,
      this.expiresAt,
      this.isMockPayment,
      this.buyerCountry,
      this.isInternational,
      this.displayCurrencyAtCheckout,
      this.exchangeRateAtCheckout,
      this.user,
      this.userId,
      this.appointment,
      this.appointmentId,
      this.discountCode,
      this.discountCodeId,
      this.createdAt,
      this.updatedAt,
      final List<PaymentWhereInput>? AND,
      final List<PaymentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$PaymentWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final IntFilter? amount;
  @override
  final IntFilter? originalAmount;
  @override
  final IntFilter? taxAmount;
  @override
  final StringFilter? currency;
  @override
  final StringFilter? description;
  @override
  final StringFilter? receiptUrl;
  @override
  final StringFilter? paymentMethod;
  @override
  final StringFilter? paymentIntent;
  @override
  final PaymentGatewayFilter? paymentGateway;
  @override
  final PaymentStatusFilter? paymentStatus;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final BooleanFilter? isMockPayment;
  @override
  final StringFilter? buyerCountry;
  @override
  final BooleanFilter? isInternational;
  @override
  final StringFilter? displayCurrencyAtCheckout;
  @override
  final FloatFilter? exchangeRateAtCheckout;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;

  /// Filter by appointment relation
  @override
  final AppointmentRelationFilter? appointment;
  @override
  final StringFilter? appointmentId;

  /// Filter by discountCode relation
  @override
  final DiscountCodeRelationFilter? discountCode;
  @override
  final StringFilter? discountCodeId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<PaymentWhereInput>? _AND;
  @override
  List<PaymentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaymentWhereInput>? _OR;
  @override
  List<PaymentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaymentWhereInput? NOT;

  @override
  String toString() {
    return 'PaymentWhereInput(id: $id, amount: $amount, originalAmount: $originalAmount, taxAmount: $taxAmount, currency: $currency, description: $description, receiptUrl: $receiptUrl, paymentMethod: $paymentMethod, paymentIntent: $paymentIntent, paymentGateway: $paymentGateway, paymentStatus: $paymentStatus, expiresAt: $expiresAt, isMockPayment: $isMockPayment, buyerCountry: $buyerCountry, isInternational: $isInternational, displayCurrencyAtCheckout: $displayCurrencyAtCheckout, exchangeRateAtCheckout: $exchangeRateAtCheckout, user: $user, userId: $userId, appointment: $appointment, appointmentId: $appointmentId, discountCode: $discountCode, discountCodeId: $discountCodeId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isMockPayment, isMockPayment) ||
                other.isMockPayment == isMockPayment) &&
            (identical(other.buyerCountry, buyerCountry) ||
                other.buyerCountry == buyerCountry) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.displayCurrencyAtCheckout,
                    displayCurrencyAtCheckout) ||
                other.displayCurrencyAtCheckout == displayCurrencyAtCheckout) &&
            (identical(other.exchangeRateAtCheckout, exchangeRateAtCheckout) ||
                other.exchangeRateAtCheckout == exchangeRateAtCheckout) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.discountCode, discountCode) ||
                other.discountCode == discountCode) &&
            (identical(other.discountCodeId, discountCodeId) ||
                other.discountCodeId == discountCodeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        amount,
        originalAmount,
        taxAmount,
        currency,
        description,
        receiptUrl,
        paymentMethod,
        paymentIntent,
        paymentGateway,
        paymentStatus,
        expiresAt,
        isMockPayment,
        buyerCountry,
        isInternational,
        displayCurrencyAtCheckout,
        exchangeRateAtCheckout,
        user,
        userId,
        appointment,
        appointmentId,
        discountCode,
        discountCodeId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentWhereInputImplCopyWith<_$PaymentWhereInputImpl> get copyWith =>
      __$$PaymentWhereInputImplCopyWithImpl<_$PaymentWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _PaymentWhereInput implements PaymentWhereInput {
  const factory _PaymentWhereInput(
      {final StringFilter? id,
      final IntFilter? amount,
      final IntFilter? originalAmount,
      final IntFilter? taxAmount,
      final StringFilter? currency,
      final StringFilter? description,
      final StringFilter? receiptUrl,
      final StringFilter? paymentMethod,
      final StringFilter? paymentIntent,
      final PaymentGatewayFilter? paymentGateway,
      final PaymentStatusFilter? paymentStatus,
      final DateTimeFilter? expiresAt,
      final BooleanFilter? isMockPayment,
      final StringFilter? buyerCountry,
      final BooleanFilter? isInternational,
      final StringFilter? displayCurrencyAtCheckout,
      final FloatFilter? exchangeRateAtCheckout,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final AppointmentRelationFilter? appointment,
      final StringFilter? appointmentId,
      final DiscountCodeRelationFilter? discountCode,
      final StringFilter? discountCodeId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<PaymentWhereInput>? AND,
      final List<PaymentWhereInput>? OR,
      final PaymentWhereInput? NOT}) = _$PaymentWhereInputImpl;

  factory _PaymentWhereInput.fromJson(Map<String, dynamic> json) =
      _$PaymentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  IntFilter? get amount;
  @override
  IntFilter? get originalAmount;
  @override
  IntFilter? get taxAmount;
  @override
  StringFilter? get currency;
  @override
  StringFilter? get description;
  @override
  StringFilter? get receiptUrl;
  @override
  StringFilter? get paymentMethod;
  @override
  StringFilter? get paymentIntent;
  @override
  PaymentGatewayFilter? get paymentGateway;
  @override
  PaymentStatusFilter? get paymentStatus;
  @override
  DateTimeFilter? get expiresAt;
  @override
  BooleanFilter? get isMockPayment;
  @override
  StringFilter? get buyerCountry;
  @override
  BooleanFilter? get isInternational;
  @override
  StringFilter? get displayCurrencyAtCheckout;
  @override
  FloatFilter? get exchangeRateAtCheckout;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;

  /// Filter by appointment relation
  @override
  AppointmentRelationFilter? get appointment;
  @override
  StringFilter? get appointmentId;

  /// Filter by discountCode relation
  @override
  DiscountCodeRelationFilter? get discountCode;
  @override
  StringFilter? get discountCodeId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<PaymentWhereInput>? get AND;
  @override
  List<PaymentWhereInput>? get OR;
  @override
  PaymentWhereInput? get NOT;

  /// Create a copy of PaymentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentWhereInputImplCopyWith<_$PaymentWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentListRelationFilter _$PaymentListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PaymentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PaymentListRelationFilter {
  /// At least one related record matches
  PaymentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  PaymentWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  PaymentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this PaymentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentListRelationFilterCopyWith<PaymentListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentListRelationFilterCopyWith<$Res> {
  factory $PaymentListRelationFilterCopyWith(PaymentListRelationFilter value,
          $Res Function(PaymentListRelationFilter) then) =
      _$PaymentListRelationFilterCopyWithImpl<$Res, PaymentListRelationFilter>;
  @useResult
  $Res call(
      {PaymentWhereInput? some,
      PaymentWhereInput? every,
      PaymentWhereInput? none});

  $PaymentWhereInputCopyWith<$Res>? get some;
  $PaymentWhereInputCopyWith<$Res>? get every;
  $PaymentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$PaymentListRelationFilterCopyWithImpl<$Res,
        $Val extends PaymentListRelationFilter>
    implements $PaymentListRelationFilterCopyWith<$Res> {
  _$PaymentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_value.copyWith(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentListRelationFilterImplCopyWith<$Res>
    implements $PaymentListRelationFilterCopyWith<$Res> {
  factory _$$PaymentListRelationFilterImplCopyWith(
          _$PaymentListRelationFilterImpl value,
          $Res Function(_$PaymentListRelationFilterImpl) then) =
      __$$PaymentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentWhereInput? some,
      PaymentWhereInput? every,
      PaymentWhereInput? none});

  @override
  $PaymentWhereInputCopyWith<$Res>? get some;
  @override
  $PaymentWhereInputCopyWith<$Res>? get every;
  @override
  $PaymentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$PaymentListRelationFilterImplCopyWithImpl<$Res>
    extends _$PaymentListRelationFilterCopyWithImpl<$Res,
        _$PaymentListRelationFilterImpl>
    implements _$$PaymentListRelationFilterImplCopyWith<$Res> {
  __$$PaymentListRelationFilterImplCopyWithImpl(
      _$PaymentListRelationFilterImpl _value,
      $Res Function(_$PaymentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$PaymentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentListRelationFilterImpl implements _PaymentListRelationFilter {
  const _$PaymentListRelationFilterImpl({this.some, this.every, this.none});

  factory _$PaymentListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final PaymentWhereInput? some;

  /// All related records match
  @override
  final PaymentWhereInput? every;

  /// No related records match
  @override
  final PaymentWhereInput? none;

  @override
  String toString() {
    return 'PaymentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentListRelationFilterImplCopyWith<_$PaymentListRelationFilterImpl>
      get copyWith => __$$PaymentListRelationFilterImplCopyWithImpl<
          _$PaymentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PaymentListRelationFilter implements PaymentListRelationFilter {
  const factory _PaymentListRelationFilter(
      {final PaymentWhereInput? some,
      final PaymentWhereInput? every,
      final PaymentWhereInput? none}) = _$PaymentListRelationFilterImpl;

  factory _PaymentListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PaymentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  PaymentWhereInput? get some;

  /// All related records match
  @override
  PaymentWhereInput? get every;

  /// No related records match
  @override
  PaymentWhereInput? get none;

  /// Create a copy of PaymentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentListRelationFilterImplCopyWith<_$PaymentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentRelationFilter _$PaymentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PaymentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PaymentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  PaymentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  PaymentWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this PaymentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentRelationFilterCopyWith<PaymentRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRelationFilterCopyWith<$Res> {
  factory $PaymentRelationFilterCopyWith(PaymentRelationFilter value,
          $Res Function(PaymentRelationFilter) then) =
      _$PaymentRelationFilterCopyWithImpl<$Res, PaymentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PaymentWhereInput? is_, PaymentWhereInput? isNot});

  $PaymentWhereInputCopyWith<$Res>? get is_;
  $PaymentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$PaymentRelationFilterCopyWithImpl<$Res,
        $Val extends PaymentRelationFilter>
    implements $PaymentRelationFilterCopyWith<$Res> {
  _$PaymentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_value.copyWith(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $PaymentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentRelationFilterImplCopyWith<$Res>
    implements $PaymentRelationFilterCopyWith<$Res> {
  factory _$$PaymentRelationFilterImplCopyWith(
          _$PaymentRelationFilterImpl value,
          $Res Function(_$PaymentRelationFilterImpl) then) =
      __$$PaymentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PaymentWhereInput? is_, PaymentWhereInput? isNot});

  @override
  $PaymentWhereInputCopyWith<$Res>? get is_;
  @override
  $PaymentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$PaymentRelationFilterImplCopyWithImpl<$Res>
    extends _$PaymentRelationFilterCopyWithImpl<$Res,
        _$PaymentRelationFilterImpl>
    implements _$$PaymentRelationFilterImplCopyWith<$Res> {
  __$$PaymentRelationFilterImplCopyWithImpl(_$PaymentRelationFilterImpl _value,
      $Res Function(_$PaymentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$PaymentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PaymentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRelationFilterImpl implements _PaymentRelationFilter {
  const _$PaymentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$PaymentRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final PaymentWhereInput? is_;

  /// Related record does not match
  @override
  final PaymentWhereInput? isNot;

  @override
  String toString() {
    return 'PaymentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRelationFilterImplCopyWith<_$PaymentRelationFilterImpl>
      get copyWith => __$$PaymentRelationFilterImplCopyWithImpl<
          _$PaymentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PaymentRelationFilter implements PaymentRelationFilter {
  const factory _PaymentRelationFilter(
      {@JsonKey(name: 'is') final PaymentWhereInput? is_,
      final PaymentWhereInput? isNot}) = _$PaymentRelationFilterImpl;

  factory _PaymentRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PaymentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  PaymentWhereInput? get is_;

  /// Related record does not match
  @override
  PaymentWhereInput? get isNot;

  /// Create a copy of PaymentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentRelationFilterImplCopyWith<_$PaymentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentOrderByInput _$PaymentOrderByInputFromJson(Map<String, dynamic> json) {
  return _PaymentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$PaymentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get amount => throw _privateConstructorUsedError;
  SortOrder? get originalAmount => throw _privateConstructorUsedError;
  SortOrder? get taxAmount => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get receiptUrl => throw _privateConstructorUsedError;
  SortOrder? get paymentMethod => throw _privateConstructorUsedError;
  SortOrder? get paymentIntent => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get isMockPayment => throw _privateConstructorUsedError;
  SortOrder? get buyerCountry => throw _privateConstructorUsedError;
  SortOrder? get isInternational => throw _privateConstructorUsedError;
  SortOrder? get displayCurrencyAtCheckout =>
      throw _privateConstructorUsedError;
  SortOrder? get exchangeRateAtCheckout => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get appointmentId => throw _privateConstructorUsedError;
  SortOrder? get discountCodeId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentOrderByInputCopyWith<PaymentOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOrderByInputCopyWith<$Res> {
  factory $PaymentOrderByInputCopyWith(
          PaymentOrderByInput value, $Res Function(PaymentOrderByInput) then) =
      _$PaymentOrderByInputCopyWithImpl<$Res, PaymentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? originalAmount,
      SortOrder? taxAmount,
      SortOrder? currency,
      SortOrder? description,
      SortOrder? receiptUrl,
      SortOrder? paymentMethod,
      SortOrder? paymentIntent,
      SortOrder? expiresAt,
      SortOrder? isMockPayment,
      SortOrder? buyerCountry,
      SortOrder? isInternational,
      SortOrder? displayCurrencyAtCheckout,
      SortOrder? exchangeRateAtCheckout,
      SortOrder? userId,
      SortOrder? appointmentId,
      SortOrder? discountCodeId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$PaymentOrderByInputCopyWithImpl<$Res, $Val extends PaymentOrderByInput>
    implements $PaymentOrderByInputCopyWith<$Res> {
  _$PaymentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentOrderByInputImplCopyWith<$Res>
    implements $PaymentOrderByInputCopyWith<$Res> {
  factory _$$PaymentOrderByInputImplCopyWith(_$PaymentOrderByInputImpl value,
          $Res Function(_$PaymentOrderByInputImpl) then) =
      __$$PaymentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? amount,
      SortOrder? originalAmount,
      SortOrder? taxAmount,
      SortOrder? currency,
      SortOrder? description,
      SortOrder? receiptUrl,
      SortOrder? paymentMethod,
      SortOrder? paymentIntent,
      SortOrder? expiresAt,
      SortOrder? isMockPayment,
      SortOrder? buyerCountry,
      SortOrder? isInternational,
      SortOrder? displayCurrencyAtCheckout,
      SortOrder? exchangeRateAtCheckout,
      SortOrder? userId,
      SortOrder? appointmentId,
      SortOrder? discountCodeId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$PaymentOrderByInputImplCopyWithImpl<$Res>
    extends _$PaymentOrderByInputCopyWithImpl<$Res, _$PaymentOrderByInputImpl>
    implements _$$PaymentOrderByInputImplCopyWith<$Res> {
  __$$PaymentOrderByInputImplCopyWithImpl(_$PaymentOrderByInputImpl _value,
      $Res Function(_$PaymentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? originalAmount = freezed,
    Object? taxAmount = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptUrl = freezed,
    Object? paymentMethod = freezed,
    Object? paymentIntent = freezed,
    Object? expiresAt = freezed,
    Object? isMockPayment = freezed,
    Object? buyerCountry = freezed,
    Object? isInternational = freezed,
    Object? displayCurrencyAtCheckout = freezed,
    Object? exchangeRateAtCheckout = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? discountCodeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PaymentOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      receiptUrl: freezed == receiptUrl
          ? _value.receiptUrl
          : receiptUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isMockPayment: freezed == isMockPayment
          ? _value.isMockPayment
          : isMockPayment // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      buyerCountry: freezed == buyerCountry
          ? _value.buyerCountry
          : buyerCountry // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isInternational: freezed == isInternational
          ? _value.isInternational
          : isInternational // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      displayCurrencyAtCheckout: freezed == displayCurrencyAtCheckout
          ? _value.displayCurrencyAtCheckout
          : displayCurrencyAtCheckout // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      exchangeRateAtCheckout: freezed == exchangeRateAtCheckout
          ? _value.exchangeRateAtCheckout
          : exchangeRateAtCheckout // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      discountCodeId: freezed == discountCodeId
          ? _value.discountCodeId
          : discountCodeId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentOrderByInputImpl implements _PaymentOrderByInput {
  const _$PaymentOrderByInputImpl(
      {this.id,
      this.amount,
      this.originalAmount,
      this.taxAmount,
      this.currency,
      this.description,
      this.receiptUrl,
      this.paymentMethod,
      this.paymentIntent,
      this.expiresAt,
      this.isMockPayment,
      this.buyerCountry,
      this.isInternational,
      this.displayCurrencyAtCheckout,
      this.exchangeRateAtCheckout,
      this.userId,
      this.appointmentId,
      this.discountCodeId,
      this.createdAt,
      this.updatedAt});

  factory _$PaymentOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? amount;
  @override
  final SortOrder? originalAmount;
  @override
  final SortOrder? taxAmount;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? description;
  @override
  final SortOrder? receiptUrl;
  @override
  final SortOrder? paymentMethod;
  @override
  final SortOrder? paymentIntent;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? isMockPayment;
  @override
  final SortOrder? buyerCountry;
  @override
  final SortOrder? isInternational;
  @override
  final SortOrder? displayCurrencyAtCheckout;
  @override
  final SortOrder? exchangeRateAtCheckout;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? appointmentId;
  @override
  final SortOrder? discountCodeId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'PaymentOrderByInput(id: $id, amount: $amount, originalAmount: $originalAmount, taxAmount: $taxAmount, currency: $currency, description: $description, receiptUrl: $receiptUrl, paymentMethod: $paymentMethod, paymentIntent: $paymentIntent, expiresAt: $expiresAt, isMockPayment: $isMockPayment, buyerCountry: $buyerCountry, isInternational: $isInternational, displayCurrencyAtCheckout: $displayCurrencyAtCheckout, exchangeRateAtCheckout: $exchangeRateAtCheckout, userId: $userId, appointmentId: $appointmentId, discountCodeId: $discountCodeId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isMockPayment, isMockPayment) ||
                other.isMockPayment == isMockPayment) &&
            (identical(other.buyerCountry, buyerCountry) ||
                other.buyerCountry == buyerCountry) &&
            (identical(other.isInternational, isInternational) ||
                other.isInternational == isInternational) &&
            (identical(other.displayCurrencyAtCheckout,
                    displayCurrencyAtCheckout) ||
                other.displayCurrencyAtCheckout == displayCurrencyAtCheckout) &&
            (identical(other.exchangeRateAtCheckout, exchangeRateAtCheckout) ||
                other.exchangeRateAtCheckout == exchangeRateAtCheckout) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.discountCodeId, discountCodeId) ||
                other.discountCodeId == discountCodeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        amount,
        originalAmount,
        taxAmount,
        currency,
        description,
        receiptUrl,
        paymentMethod,
        paymentIntent,
        expiresAt,
        isMockPayment,
        buyerCountry,
        isInternational,
        displayCurrencyAtCheckout,
        exchangeRateAtCheckout,
        userId,
        appointmentId,
        discountCodeId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of PaymentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOrderByInputImplCopyWith<_$PaymentOrderByInputImpl> get copyWith =>
      __$$PaymentOrderByInputImplCopyWithImpl<_$PaymentOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _PaymentOrderByInput implements PaymentOrderByInput {
  const factory _PaymentOrderByInput(
      {final SortOrder? id,
      final SortOrder? amount,
      final SortOrder? originalAmount,
      final SortOrder? taxAmount,
      final SortOrder? currency,
      final SortOrder? description,
      final SortOrder? receiptUrl,
      final SortOrder? paymentMethod,
      final SortOrder? paymentIntent,
      final SortOrder? expiresAt,
      final SortOrder? isMockPayment,
      final SortOrder? buyerCountry,
      final SortOrder? isInternational,
      final SortOrder? displayCurrencyAtCheckout,
      final SortOrder? exchangeRateAtCheckout,
      final SortOrder? userId,
      final SortOrder? appointmentId,
      final SortOrder? discountCodeId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$PaymentOrderByInputImpl;

  factory _PaymentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$PaymentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get amount;
  @override
  SortOrder? get originalAmount;
  @override
  SortOrder? get taxAmount;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get description;
  @override
  SortOrder? get receiptUrl;
  @override
  SortOrder? get paymentMethod;
  @override
  SortOrder? get paymentIntent;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get isMockPayment;
  @override
  SortOrder? get buyerCountry;
  @override
  SortOrder? get isInternational;
  @override
  SortOrder? get displayCurrencyAtCheckout;
  @override
  SortOrder? get exchangeRateAtCheckout;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get appointmentId;
  @override
  SortOrder? get discountCodeId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of PaymentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentOrderByInputImplCopyWith<_$PaymentOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
