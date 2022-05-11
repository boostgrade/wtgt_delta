import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/login.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/response/login_response.dart';
import 'package:where_to_go_today/src/features/auth/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/auth/authservices/repository/auth_repository_impl.dart';

class MockAuthApi extends Mock implements AuthApi {}

void main() {
  late AuthRepositoryImpl authRepository;
  late MockAuthApi authApi;

  const loginJsonResponse = '''
      {
        "user": {
          "id": 10201,
          "name": "Artem",
          "lastName": "Ivanov",
          "phone": "7911223344",
          "birthDate": "1990-10-22T11:58:47Z"
        },
        "token": {
          "token": "dhvcsbdvhu123v21u32v5i42",
          "refreshToken": "dhvcsbdvhu123v21u32v5i42_dfsf"
        }
      }
    ''';

  final loginResponse = LoginResponse.fromJson(
    jsonDecode(loginJsonResponse),
  );

  final login = Login.fromResponseModel(loginResponse);

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

  setUp(() async {
    registerFallbackValue(Uri());
    authApi = MockAuthApi();
    authRepository = AuthRepositoryImpl(authApi);
  });

  group('Тесты для репозитория авторизации', () {
    test(
      'Метод loginApple',
      () async {
        when(
          () => authApi.loginApple(appleLoginRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        final response = await authRepository.loginApple(appleLoginRequest);
        expect(response.user.id, equals(login.user.id));
        expect(response.user.name, equals(login.user.name));
        expect(response.user.lastName, equals(login.user.lastName));
        expect(response.user.phone, equals(login.user.phone));
        expect(response.user.birthDate, equals(login.user.birthDate));
        expect(
          response.token.refreshToken,
          equals(login.token.refreshToken),
        );
        expect(response.token.token, equals(login.token.token));
      },
    );

    test(
      'Метод loginGoogle',
      () async {
        when(
          () => authApi.loginGoogle(googleLoginRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        final response = await authRepository.loginGoogle(googleLoginRequest);
        expect(response.user.id, equals(login.user.id));
        expect(response.user.name, equals(login.user.name));
        expect(response.user.lastName, equals(login.user.lastName));
        expect(response.user.phone, equals(login.user.phone));
        expect(response.user.birthDate, equals(login.user.birthDate));
        expect(
          response.token.refreshToken,
          equals(login.token.refreshToken),
        );
        expect(response.token.token, equals(login.token.token));
      },
    );

    test(
      'Метод loginMeta',
      () async {
        when(
          () => authApi.loginMeta(metaLoginRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        final response = await authRepository.loginMeta(metaLoginRequest);
        expect(response.user.id, equals(login.user.id));
        expect(response.user.name, equals(login.user.name));
        expect(response.user.lastName, equals(login.user.lastName));
        expect(response.user.phone, equals(login.user.phone));
        expect(response.user.birthDate, equals(login.user.birthDate));
        expect(
          response.token.refreshToken,
          equals(login.token.refreshToken),
        );
        expect(response.token.token, equals(login.token.token));
      },
    );

    test(
      'Метод loginPhone',
      () async {
        when(
          () => authApi.loginPhone(phoneLoginRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        final response = await authRepository.loginPhone(phoneLoginRequest);
        expect(response.user.id, equals(login.user.id));
        expect(response.user.name, equals(login.user.name));
        expect(response.user.lastName, equals(login.user.lastName));
        expect(response.user.phone, equals(login.user.phone));
        expect(response.user.birthDate, equals(login.user.birthDate));
        expect(
          response.token.refreshToken,
          equals(login.token.refreshToken),
        );
        expect(response.token.token, equals(login.token.token));
      },
    );

    test(
      'Метод loginVK',
      () async {
        when(
          () => authApi.loginVk(vkLoginRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        final response = await authRepository.loginVk(vkLoginRequest);
        expect(response.user.id, equals(login.user.id));
        expect(response.user.name, equals(login.user.name));
        expect(response.user.lastName, equals(login.user.lastName));
        expect(response.user.phone, equals(login.user.phone));
        expect(response.user.birthDate, equals(login.user.birthDate));
        expect(
          response.token.refreshToken,
          equals(login.token.refreshToken),
        );
        expect(response.token.token, equals(login.token.token));
      },
    );

    test(
      'Метод register',
      () async {
        when(
          () => authApi.register(registerRequest),
        ).thenAnswer(
          (_) async => loginResponse,
        );

        await authRepository.register(
          registerRequest,
        );

        verify(() => authApi.register(registerRequest)).called(1);
        verifyNoMoreInteractions(authApi);
      },
    );

    test(
      'Метод logout',
      () async {
        when(
          () => authApi.logout(),
        ).thenAnswer(
          (_) async => Future.value(),
        );

        await authRepository.logout();

        verify(() => authApi.logout()).called(1);
        verifyNoMoreInteractions(authApi);
      },
    );
  });
}
