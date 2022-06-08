part of '../auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle() = AuthStateIdle;
  const factory AuthState.needOtp() = AuthStateNeedOtp;
  const factory AuthState.success() = AuthStateSuccess;
  const factory AuthState.error() = AuthStateError;
}