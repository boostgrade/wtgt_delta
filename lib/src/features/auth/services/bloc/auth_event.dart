part of '../auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginViaApple({
    required AppleLoginRequest appleLoginRequest,
  }) = AuthEventLoginViaApple;

  const factory AuthEvent.loginViaGoogle({
    required GoogleLoginRequest googleLoginRequest,
  }) = AuthEventLoginViaGoogle;

  const factory AuthEvent.loginViaMeta({
    required MetaLoginRequest metaLoginRequest,
  }) = AuthEventLoginViaMeta;

  const factory AuthEvent.loginViaPhone({
    required PhoneLoginRequest phoneLoginRequest,
  }) = AuthEventLoginViaPhone;

  const factory AuthEvent.loginViaVk({
    required VkLoginRequest vkLoginRequest,
  }) = AuthEventLoginViaVk;

  const factory AuthEvent.logout() = AuthEventLogout;

  const factory AuthEvent.register({
    required RegisterRequest registerRequest,
  }) = AuthEventRegister;

  const factory AuthEvent.sendOtp({
    required String token,
  }) = AuthEventSendOtp;
}
