import 'package:where_to_go_today/src/features/auth/authapi/models/login.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/auth/authservices/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthApi authApi;

  AuthRepositoryImpl(this.authApi);

  @override
  Future<Login> loginApple(AppleLoginRequest appleLoginRequest) async {
    final loginResponse = await authApi.loginApple(appleLoginRequest);

    return Login.fromResponseModel(loginResponse);
  }

  @override
  Future<Login> loginGoogle(GoogleLoginRequest googleLoginRequest) async {
    final loginResponse = await authApi.loginGoogle(googleLoginRequest);

    return Login.fromResponseModel(loginResponse);
  }

  @override
  Future<Login> loginMeta(MetaLoginRequest metaLoginRequest) async {
    final loginResponse = await authApi.loginMeta(metaLoginRequest);

    return Login.fromResponseModel(loginResponse);
  }

  @override
  Future<Login> loginPhone(PhoneLoginRequest phoneLoginRequest) async {
    final loginResponse = await authApi.loginPhone(phoneLoginRequest);

    return Login.fromResponseModel(loginResponse);
  }

  @override
  Future<Login> loginVk(VkLoginRequest vkLoginRequest) async {
    final loginResponse = await authApi.loginVk(vkLoginRequest);

    return Login.fromResponseModel(loginResponse);
  }

  @override
  Future<void> logout() async => await authApi.logout();

  @override
  Future<void> register(RegisterRequest registerRequest) async =>
      await authApi.register(registerRequest);
}
