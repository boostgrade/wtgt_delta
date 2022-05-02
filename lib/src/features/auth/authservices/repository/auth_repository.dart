import 'package:where_to_go_today/src/features/auth/authapi/models/dto/login_response_dto.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';

abstract class AuthRepository {
  Future<LoginResponseDto> loginPhone(PhoneLoginRequest phoneLoginRequest);
  Future<LoginResponseDto> loginVk(VkLoginRequest vkLoginRequest);
  Future<LoginResponseDto> loginMeta(MetaLoginRequest metaLoginRequest);
  Future<LoginResponseDto> loginApple(AppleLoginRequest appleLoginRequest);
  Future<LoginResponseDto> loginGoogle(GoogleLoginRequest googleLoginRequest);
  Future<void> register(RegisterRequest registerRequest);
  Future<void> logout();
}