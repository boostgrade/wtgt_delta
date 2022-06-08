// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventLoginViaApple loginViaApple(
      {required AppleLoginRequest appleLoginRequest}) {
    return AuthEventLoginViaApple(
      appleLoginRequest: appleLoginRequest,
    );
  }

  AuthEventLoginViaGoogle loginViaGoogle(
      {required GoogleLoginRequest googleLoginRequest}) {
    return AuthEventLoginViaGoogle(
      googleLoginRequest: googleLoginRequest,
    );
  }

  AuthEventLoginViaMeta loginViaMeta(
      {required MetaLoginRequest metaLoginRequest}) {
    return AuthEventLoginViaMeta(
      metaLoginRequest: metaLoginRequest,
    );
  }

  AuthEventLoginViaPhone loginViaPhone(
      {required PhoneLoginRequest phoneLoginRequest}) {
    return AuthEventLoginViaPhone(
      phoneLoginRequest: phoneLoginRequest,
    );
  }

  AuthEventLoginViaVk loginViaVk({required VkLoginRequest vkLoginRequest}) {
    return AuthEventLoginViaVk(
      vkLoginRequest: vkLoginRequest,
    );
  }

  AuthEventLogout logout() {
    return const AuthEventLogout();
  }

  AuthEventRegister register({required RegisterRequest registerRequest}) {
    return AuthEventRegister(
      registerRequest: registerRequest,
    );
  }

  AuthEventSendOtp sendOtp({required String token}) {
    return AuthEventSendOtp(
      token: token,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthEventLoginViaAppleCopyWith<$Res> {
  factory $AuthEventLoginViaAppleCopyWith(AuthEventLoginViaApple value,
          $Res Function(AuthEventLoginViaApple) then) =
      _$AuthEventLoginViaAppleCopyWithImpl<$Res>;
  $Res call({AppleLoginRequest appleLoginRequest});
}

/// @nodoc
class _$AuthEventLoginViaAppleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaAppleCopyWith<$Res> {
  _$AuthEventLoginViaAppleCopyWithImpl(AuthEventLoginViaApple _value,
      $Res Function(AuthEventLoginViaApple) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaApple));

  @override
  AuthEventLoginViaApple get _value => super._value as AuthEventLoginViaApple;

  @override
  $Res call({
    Object? appleLoginRequest = freezed,
  }) {
    return _then(AuthEventLoginViaApple(
      appleLoginRequest: appleLoginRequest == freezed
          ? _value.appleLoginRequest
          : appleLoginRequest // ignore: cast_nullable_to_non_nullable
              as AppleLoginRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginViaApple implements AuthEventLoginViaApple {
  const _$AuthEventLoginViaApple({required this.appleLoginRequest});

  @override
  final AppleLoginRequest appleLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.loginViaApple(appleLoginRequest: $appleLoginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaApple &&
            (identical(other.appleLoginRequest, appleLoginRequest) ||
                other.appleLoginRequest == appleLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appleLoginRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginViaAppleCopyWith<AuthEventLoginViaApple> get copyWith =>
      _$AuthEventLoginViaAppleCopyWithImpl<AuthEventLoginViaApple>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return loginViaApple(appleLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return loginViaApple?.call(appleLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaApple != null) {
      return loginViaApple(appleLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return loginViaApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return loginViaApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaApple != null) {
      return loginViaApple(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaApple implements AuthEvent {
  const factory AuthEventLoginViaApple(
          {required AppleLoginRequest appleLoginRequest}) =
      _$AuthEventLoginViaApple;

  AppleLoginRequest get appleLoginRequest;
  @JsonKey(ignore: true)
  $AuthEventLoginViaAppleCopyWith<AuthEventLoginViaApple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginViaGoogleCopyWith<$Res> {
  factory $AuthEventLoginViaGoogleCopyWith(AuthEventLoginViaGoogle value,
          $Res Function(AuthEventLoginViaGoogle) then) =
      _$AuthEventLoginViaGoogleCopyWithImpl<$Res>;
  $Res call({GoogleLoginRequest googleLoginRequest});
}

/// @nodoc
class _$AuthEventLoginViaGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaGoogleCopyWith<$Res> {
  _$AuthEventLoginViaGoogleCopyWithImpl(AuthEventLoginViaGoogle _value,
      $Res Function(AuthEventLoginViaGoogle) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaGoogle));

  @override
  AuthEventLoginViaGoogle get _value => super._value as AuthEventLoginViaGoogle;

  @override
  $Res call({
    Object? googleLoginRequest = freezed,
  }) {
    return _then(AuthEventLoginViaGoogle(
      googleLoginRequest: googleLoginRequest == freezed
          ? _value.googleLoginRequest
          : googleLoginRequest // ignore: cast_nullable_to_non_nullable
              as GoogleLoginRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginViaGoogle implements AuthEventLoginViaGoogle {
  const _$AuthEventLoginViaGoogle({required this.googleLoginRequest});

  @override
  final GoogleLoginRequest googleLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.loginViaGoogle(googleLoginRequest: $googleLoginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaGoogle &&
            (identical(other.googleLoginRequest, googleLoginRequest) ||
                other.googleLoginRequest == googleLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleLoginRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginViaGoogleCopyWith<AuthEventLoginViaGoogle> get copyWith =>
      _$AuthEventLoginViaGoogleCopyWithImpl<AuthEventLoginViaGoogle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return loginViaGoogle(googleLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return loginViaGoogle?.call(googleLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaGoogle != null) {
      return loginViaGoogle(googleLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return loginViaGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return loginViaGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaGoogle != null) {
      return loginViaGoogle(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaGoogle implements AuthEvent {
  const factory AuthEventLoginViaGoogle(
          {required GoogleLoginRequest googleLoginRequest}) =
      _$AuthEventLoginViaGoogle;

  GoogleLoginRequest get googleLoginRequest;
  @JsonKey(ignore: true)
  $AuthEventLoginViaGoogleCopyWith<AuthEventLoginViaGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginViaMetaCopyWith<$Res> {
  factory $AuthEventLoginViaMetaCopyWith(AuthEventLoginViaMeta value,
          $Res Function(AuthEventLoginViaMeta) then) =
      _$AuthEventLoginViaMetaCopyWithImpl<$Res>;
  $Res call({MetaLoginRequest metaLoginRequest});
}

/// @nodoc
class _$AuthEventLoginViaMetaCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaMetaCopyWith<$Res> {
  _$AuthEventLoginViaMetaCopyWithImpl(
      AuthEventLoginViaMeta _value, $Res Function(AuthEventLoginViaMeta) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaMeta));

  @override
  AuthEventLoginViaMeta get _value => super._value as AuthEventLoginViaMeta;

  @override
  $Res call({
    Object? metaLoginRequest = freezed,
  }) {
    return _then(AuthEventLoginViaMeta(
      metaLoginRequest: metaLoginRequest == freezed
          ? _value.metaLoginRequest
          : metaLoginRequest // ignore: cast_nullable_to_non_nullable
              as MetaLoginRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginViaMeta implements AuthEventLoginViaMeta {
  const _$AuthEventLoginViaMeta({required this.metaLoginRequest});

  @override
  final MetaLoginRequest metaLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.loginViaMeta(metaLoginRequest: $metaLoginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaMeta &&
            (identical(other.metaLoginRequest, metaLoginRequest) ||
                other.metaLoginRequest == metaLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metaLoginRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginViaMetaCopyWith<AuthEventLoginViaMeta> get copyWith =>
      _$AuthEventLoginViaMetaCopyWithImpl<AuthEventLoginViaMeta>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return loginViaMeta(metaLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return loginViaMeta?.call(metaLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaMeta != null) {
      return loginViaMeta(metaLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return loginViaMeta(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return loginViaMeta?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaMeta != null) {
      return loginViaMeta(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaMeta implements AuthEvent {
  const factory AuthEventLoginViaMeta(
      {required MetaLoginRequest metaLoginRequest}) = _$AuthEventLoginViaMeta;

  MetaLoginRequest get metaLoginRequest;
  @JsonKey(ignore: true)
  $AuthEventLoginViaMetaCopyWith<AuthEventLoginViaMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginViaPhoneCopyWith<$Res> {
  factory $AuthEventLoginViaPhoneCopyWith(AuthEventLoginViaPhone value,
          $Res Function(AuthEventLoginViaPhone) then) =
      _$AuthEventLoginViaPhoneCopyWithImpl<$Res>;
  $Res call({PhoneLoginRequest phoneLoginRequest});
}

/// @nodoc
class _$AuthEventLoginViaPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaPhoneCopyWith<$Res> {
  _$AuthEventLoginViaPhoneCopyWithImpl(AuthEventLoginViaPhone _value,
      $Res Function(AuthEventLoginViaPhone) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaPhone));

  @override
  AuthEventLoginViaPhone get _value => super._value as AuthEventLoginViaPhone;

  @override
  $Res call({
    Object? phoneLoginRequest = freezed,
  }) {
    return _then(AuthEventLoginViaPhone(
      phoneLoginRequest: phoneLoginRequest == freezed
          ? _value.phoneLoginRequest
          : phoneLoginRequest // ignore: cast_nullable_to_non_nullable
              as PhoneLoginRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginViaPhone implements AuthEventLoginViaPhone {
  const _$AuthEventLoginViaPhone({required this.phoneLoginRequest});

  @override
  final PhoneLoginRequest phoneLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.loginViaPhone(phoneLoginRequest: $phoneLoginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaPhone &&
            (identical(other.phoneLoginRequest, phoneLoginRequest) ||
                other.phoneLoginRequest == phoneLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneLoginRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginViaPhoneCopyWith<AuthEventLoginViaPhone> get copyWith =>
      _$AuthEventLoginViaPhoneCopyWithImpl<AuthEventLoginViaPhone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return loginViaPhone(phoneLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return loginViaPhone?.call(phoneLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaPhone != null) {
      return loginViaPhone(phoneLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return loginViaPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return loginViaPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaPhone != null) {
      return loginViaPhone(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaPhone implements AuthEvent {
  const factory AuthEventLoginViaPhone(
          {required PhoneLoginRequest phoneLoginRequest}) =
      _$AuthEventLoginViaPhone;

  PhoneLoginRequest get phoneLoginRequest;
  @JsonKey(ignore: true)
  $AuthEventLoginViaPhoneCopyWith<AuthEventLoginViaPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginViaVkCopyWith<$Res> {
  factory $AuthEventLoginViaVkCopyWith(
          AuthEventLoginViaVk value, $Res Function(AuthEventLoginViaVk) then) =
      _$AuthEventLoginViaVkCopyWithImpl<$Res>;
  $Res call({VkLoginRequest vkLoginRequest});
}

/// @nodoc
class _$AuthEventLoginViaVkCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaVkCopyWith<$Res> {
  _$AuthEventLoginViaVkCopyWithImpl(
      AuthEventLoginViaVk _value, $Res Function(AuthEventLoginViaVk) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaVk));

  @override
  AuthEventLoginViaVk get _value => super._value as AuthEventLoginViaVk;

  @override
  $Res call({
    Object? vkLoginRequest = freezed,
  }) {
    return _then(AuthEventLoginViaVk(
      vkLoginRequest: vkLoginRequest == freezed
          ? _value.vkLoginRequest
          : vkLoginRequest // ignore: cast_nullable_to_non_nullable
              as VkLoginRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventLoginViaVk implements AuthEventLoginViaVk {
  const _$AuthEventLoginViaVk({required this.vkLoginRequest});

  @override
  final VkLoginRequest vkLoginRequest;

  @override
  String toString() {
    return 'AuthEvent.loginViaVk(vkLoginRequest: $vkLoginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaVk &&
            (identical(other.vkLoginRequest, vkLoginRequest) ||
                other.vkLoginRequest == vkLoginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vkLoginRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginViaVkCopyWith<AuthEventLoginViaVk> get copyWith =>
      _$AuthEventLoginViaVkCopyWithImpl<AuthEventLoginViaVk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return loginViaVk(vkLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return loginViaVk?.call(vkLoginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaVk != null) {
      return loginViaVk(vkLoginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return loginViaVk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return loginViaVk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (loginViaVk != null) {
      return loginViaVk(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaVk implements AuthEvent {
  const factory AuthEventLoginViaVk({required VkLoginRequest vkLoginRequest}) =
      _$AuthEventLoginViaVk;

  VkLoginRequest get vkLoginRequest;
  @JsonKey(ignore: true)
  $AuthEventLoginViaVkCopyWith<AuthEventLoginViaVk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLogoutCopyWith<$Res> {
  factory $AuthEventLogoutCopyWith(
          AuthEventLogout value, $Res Function(AuthEventLogout) then) =
      _$AuthEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutCopyWith<$Res> {
  _$AuthEventLogoutCopyWithImpl(
      AuthEventLogout _value, $Res Function(AuthEventLogout) _then)
      : super(_value, (v) => _then(v as AuthEventLogout));

  @override
  AuthEventLogout get _value => super._value as AuthEventLogout;
}

/// @nodoc

class _$AuthEventLogout implements AuthEventLogout {
  const _$AuthEventLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogout;
}

/// @nodoc
abstract class $AuthEventRegisterCopyWith<$Res> {
  factory $AuthEventRegisterCopyWith(
          AuthEventRegister value, $Res Function(AuthEventRegister) then) =
      _$AuthEventRegisterCopyWithImpl<$Res>;
  $Res call({RegisterRequest registerRequest});
}

/// @nodoc
class _$AuthEventRegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventRegisterCopyWith<$Res> {
  _$AuthEventRegisterCopyWithImpl(
      AuthEventRegister _value, $Res Function(AuthEventRegister) _then)
      : super(_value, (v) => _then(v as AuthEventRegister));

  @override
  AuthEventRegister get _value => super._value as AuthEventRegister;

  @override
  $Res call({
    Object? registerRequest = freezed,
  }) {
    return _then(AuthEventRegister(
      registerRequest: registerRequest == freezed
          ? _value.registerRequest
          : registerRequest // ignore: cast_nullable_to_non_nullable
              as RegisterRequest,
    ));
  }
}

/// @nodoc

class _$AuthEventRegister implements AuthEventRegister {
  const _$AuthEventRegister({required this.registerRequest});

  @override
  final RegisterRequest registerRequest;

  @override
  String toString() {
    return 'AuthEvent.register(registerRequest: $registerRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventRegister &&
            (identical(other.registerRequest, registerRequest) ||
                other.registerRequest == registerRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerRequest);

  @JsonKey(ignore: true)
  @override
  $AuthEventRegisterCopyWith<AuthEventRegister> get copyWith =>
      _$AuthEventRegisterCopyWithImpl<AuthEventRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return register(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return register?.call(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(registerRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthEventRegister implements AuthEvent {
  const factory AuthEventRegister({required RegisterRequest registerRequest}) =
      _$AuthEventRegister;

  RegisterRequest get registerRequest;
  @JsonKey(ignore: true)
  $AuthEventRegisterCopyWith<AuthEventRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventSendOtpCopyWith<$Res> {
  factory $AuthEventSendOtpCopyWith(
          AuthEventSendOtp value, $Res Function(AuthEventSendOtp) then) =
      _$AuthEventSendOtpCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AuthEventSendOtpCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventSendOtpCopyWith<$Res> {
  _$AuthEventSendOtpCopyWithImpl(
      AuthEventSendOtp _value, $Res Function(AuthEventSendOtp) _then)
      : super(_value, (v) => _then(v as AuthEventSendOtp));

  @override
  AuthEventSendOtp get _value => super._value as AuthEventSendOtp;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(AuthEventSendOtp(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSendOtp implements AuthEventSendOtp {
  const _$AuthEventSendOtp({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventSendOtp &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  $AuthEventSendOtpCopyWith<AuthEventSendOtp> get copyWith =>
      _$AuthEventSendOtpCopyWithImpl<AuthEventSendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppleLoginRequest appleLoginRequest)
        loginViaApple,
    required TResult Function(GoogleLoginRequest googleLoginRequest)
        loginViaGoogle,
    required TResult Function(MetaLoginRequest metaLoginRequest) loginViaMeta,
    required TResult Function(PhoneLoginRequest phoneLoginRequest)
        loginViaPhone,
    required TResult Function(VkLoginRequest vkLoginRequest) loginViaVk,
    required TResult Function() logout,
    required TResult Function(RegisterRequest registerRequest) register,
    required TResult Function(String token) sendOtp,
  }) {
    return sendOtp(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
  }) {
    return sendOtp?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppleLoginRequest appleLoginRequest)? loginViaApple,
    TResult Function(GoogleLoginRequest googleLoginRequest)? loginViaGoogle,
    TResult Function(MetaLoginRequest metaLoginRequest)? loginViaMeta,
    TResult Function(PhoneLoginRequest phoneLoginRequest)? loginViaPhone,
    TResult Function(VkLoginRequest vkLoginRequest)? loginViaVk,
    TResult Function()? logout,
    TResult Function(RegisterRequest registerRequest)? register,
    TResult Function(String token)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLoginViaApple value) loginViaApple,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventLoginViaMeta value) loginViaMeta,
    required TResult Function(AuthEventLoginViaPhone value) loginViaPhone,
    required TResult Function(AuthEventLoginViaVk value) loginViaVk,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventSendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLoginViaApple value)? loginViaApple,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventLoginViaMeta value)? loginViaMeta,
    TResult Function(AuthEventLoginViaPhone value)? loginViaPhone,
    TResult Function(AuthEventLoginViaVk value)? loginViaVk,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class AuthEventSendOtp implements AuthEvent {
  const factory AuthEventSendOtp({required String token}) = _$AuthEventSendOtp;

  String get token;
  @JsonKey(ignore: true)
  $AuthEventSendOtpCopyWith<AuthEventSendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateIdle idle() {
    return const AuthStateIdle();
  }

  AuthStateNeedOtp needOtp() {
    return const AuthStateNeedOtp();
  }

  AuthStateSuccess success() {
    return const AuthStateSuccess();
  }

  AuthStateError error() {
    return const AuthStateError();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() needOtp,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateIdleCopyWith<$Res> {
  factory $AuthStateIdleCopyWith(
          AuthStateIdle value, $Res Function(AuthStateIdle) then) =
      _$AuthStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateIdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateIdleCopyWith<$Res> {
  _$AuthStateIdleCopyWithImpl(
      AuthStateIdle _value, $Res Function(AuthStateIdle) _then)
      : super(_value, (v) => _then(v as AuthStateIdle));

  @override
  AuthStateIdle get _value => super._value as AuthStateIdle;
}

/// @nodoc

class _$AuthStateIdle implements AuthStateIdle {
  const _$AuthStateIdle();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() needOtp,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AuthStateIdle implements AuthState {
  const factory AuthStateIdle() = _$AuthStateIdle;
}

/// @nodoc
abstract class $AuthStateNeedOtpCopyWith<$Res> {
  factory $AuthStateNeedOtpCopyWith(
          AuthStateNeedOtp value, $Res Function(AuthStateNeedOtp) then) =
      _$AuthStateNeedOtpCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNeedOtpCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNeedOtpCopyWith<$Res> {
  _$AuthStateNeedOtpCopyWithImpl(
      AuthStateNeedOtp _value, $Res Function(AuthStateNeedOtp) _then)
      : super(_value, (v) => _then(v as AuthStateNeedOtp));

  @override
  AuthStateNeedOtp get _value => super._value as AuthStateNeedOtp;
}

/// @nodoc

class _$AuthStateNeedOtp implements AuthStateNeedOtp {
  const _$AuthStateNeedOtp();

  @override
  String toString() {
    return 'AuthState.needOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateNeedOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() needOtp,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return needOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return needOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (needOtp != null) {
      return needOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return needOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return needOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (needOtp != null) {
      return needOtp(this);
    }
    return orElse();
  }
}

abstract class AuthStateNeedOtp implements AuthState {
  const factory AuthStateNeedOtp() = _$AuthStateNeedOtp;
}

/// @nodoc
abstract class $AuthStateSuccessCopyWith<$Res> {
  factory $AuthStateSuccessCopyWith(
          AuthStateSuccess value, $Res Function(AuthStateSuccess) then) =
      _$AuthStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSuccessCopyWith<$Res> {
  _$AuthStateSuccessCopyWithImpl(
      AuthStateSuccess _value, $Res Function(AuthStateSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateSuccess));

  @override
  AuthStateSuccess get _value => super._value as AuthStateSuccess;
}

/// @nodoc

class _$AuthStateSuccess implements AuthStateSuccess {
  const _$AuthStateSuccess();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() needOtp,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess() = _$AuthStateSuccess;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() needOtp,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? needOtp,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError() = _$AuthStateError;
}
