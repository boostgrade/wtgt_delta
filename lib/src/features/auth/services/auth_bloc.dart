import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authservices/repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'bloc/auth_event.dart';
part 'bloc/auth_state.dart';

/// Сервис позволяющий:
///   - обработать номер телефона пользователя
///   - отправить СМС
///   - зарегистрировать через соц. сети
///   - провести заполнение данных профиля при регистрации
///   - произвести логаут
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  bool isFirstSending = true;

  AuthBloc({required this.authRepository}) : super(const AuthState.idle()) {
    on<AuthEventLoginViaPhone>(_loginViaPhone);
    on<AuthEventSendOtp>(_sendOtp);
    on<AuthEventLoginViaApple>(_loginViaApple);
    on<AuthEventLoginViaMeta>(_loginViaMeta);
    on<AuthEventLoginViaVk>(_loginViaVk);
    on<AuthEventLoginViaGoogle>(_loginViaGoogle);
    on<AuthEventRegister>(_register);
    on<AuthEventLogout>(_logout);
  }

  FutureOr<void> _loginViaPhone(event, emit) async {
    if (isFirstSending) {
      emit(const AuthState.idle());
      try {
        // ignore: unused_local_variable
        final phoneLoginResponse =
            await authRepository.loginPhone(event.phoneLoginRequest);
        //TODO: save token
      } catch (_) {
        emit(const AuthState.error());
      }

      emit(const AuthState.needOtp());
      isFirstSending = false;
    } else {
      emit(const AuthState.idle());
      emit(const AuthState.success());
    }
  }

  FutureOr<void> _sendOtp(_, emit) async {
    emit(const AuthState.idle());
    //TODO: firebase auth by phone number
    emit(const AuthState.success());
  }

  FutureOr<void> _loginViaApple(event, emit) async {
    emit(const AuthState.idle());
    try {
      // ignore: unused_local_variable
      final appleLoginResponse =
          await authRepository.loginApple(event.appleLoginRequest);
      //TODO: save token
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }

  FutureOr<void> _loginViaMeta(event, emit) async {
    emit(const AuthState.idle());
    try {
      // ignore: unused_local_variable
      final metaLoginResponse =
          await authRepository.loginMeta(event.metaLoginRequest);
      //TODO: save token
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }

  FutureOr<void> _loginViaVk(event, emit) async {
    emit(const AuthState.idle());
    try {
      // ignore: unused_local_variable
      final vkLoginResponse =
          await authRepository.loginVk(event.vkLoginRequest);
      //TODO: save token
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }

  FutureOr<void> _loginViaGoogle(event, emit) async {
    emit(const AuthState.idle());
    try {
      // ignore: unused_local_variable
      final googleLoginResponse =
          await authRepository.loginGoogle(event.googleLoginRequest);
      //TODO: save token
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }

  FutureOr<void> _register(event, emit) async {
    emit(const AuthState.idle());
    try {
      await authRepository.register(event.registerRequest);
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }

  FutureOr<void> _logout(_, emit) async {
    emit(const AuthState.idle());
    try {
      await authRepository.logout();
      //TODO: delete token
      emit(const AuthState.success());
    } catch (_) {
      emit(const AuthState.error());
    }
  }
}
