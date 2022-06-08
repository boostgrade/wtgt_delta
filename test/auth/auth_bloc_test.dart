// ignore_for_file: unused_import
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/login.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';
import 'package:where_to_go_today/src/features/auth/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  const appleLoginRequest = AppleLoginRequest(token: '');
  const googleLoginRequest = GoogleLoginRequest(token: '');
  const metaLoginRequest = MetaLoginRequest(token: '');
  const phoneLoginRequest = PhoneLoginRequest(phone: '', token: '');
  const vkLoginRequest = VkLoginRequest(token: '');
  const registerRequest = RegisterRequest(
    name: '',
    lastName: '',
    phone: '',
    birthDate: '',
  );

  final user = User(
    id: 1,
    name: 'name',
    lastName: 'lastName',
    phone: 'phone',
    birthDate: DateTime.now(),
  );
  const token = Token(token: 'token', refreshToken: 'refreshToken');
  final response = Login(user: user, token: token);

  group('Тесты на блок авторизации', () {
    blocTest<AuthBloc, AuthState>(
      'Если отправляем номер телефона, то сначала получаем загрузку, потом состояние с необходимостью подтверждения',
      build: () {
        when(() => mockAuthRepository.loginPhone(phoneLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaPhone(phoneLoginRequest: phoneLoginRequest),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.needOtp()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если повторно отправляем номер телефона, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.loginPhone(phoneLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaPhone(phoneLoginRequest: phoneLoginRequest),
        );
        bloc.add(
          const AuthEvent.loginViaPhone(phoneLoginRequest: phoneLoginRequest),
        );
      },
      skip: 2,
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем смс-код, то сначала получаем загрузку, потом состояние успеха',
      build: () => AuthBloc(authRepository: mockAuthRepository),
      act: (bloc) => bloc.add(const AuthEvent.sendOtp(token: '')),
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через apple, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.loginApple(appleLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaApple(appleLoginRequest: appleLoginRequest),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через google, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.loginGoogle(googleLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaGoogle(
            googleLoginRequest: googleLoginRequest,
          ),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через meta, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.loginMeta(metaLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaMeta(metaLoginRequest: metaLoginRequest),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие входа через vk, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.loginVk(vkLoginRequest))
            .thenAnswer((_) async => Future.value(response));

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.loginViaVk(vkLoginRequest: vkLoginRequest),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие регистрации, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.register(registerRequest))
            .thenAnswer((_) async => Future.value());

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.register(registerRequest: registerRequest),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );

    blocTest<AuthBloc, AuthState>(
      'Если отправляем событие логаута, то сначала получаем загрузку, потом состояние успеха',
      build: () {
        when(() => mockAuthRepository.logout())
            .thenAnswer((_) async => Future.value());

        return AuthBloc(authRepository: mockAuthRepository);
      },
      act: (bloc) async {
        bloc.add(
          const AuthEvent.logout(),
        );
      },
      expect: () => [const AuthState.idle(), const AuthState.success()],
    );
  });
}
