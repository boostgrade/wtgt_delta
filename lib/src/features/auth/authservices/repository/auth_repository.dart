import 'package:where_to_go_today/src/features/auth/authapi/models/login.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';

abstract class AuthRepository {
  Future<Login> loginPhone(PhoneLoginRequest phoneLoginRequest);
  Future<Login> loginVk(VkLoginRequest vkLoginRequest);
  Future<Login> loginMeta(MetaLoginRequest metaLoginRequest);
  Future<Login> loginApple(AppleLoginRequest appleLoginRequest);
  Future<Login> loginGoogle(GoogleLoginRequest googleLoginRequest);
  Future<void> register(RegisterRequest registerRequest);
  Future<void> logout();
}
