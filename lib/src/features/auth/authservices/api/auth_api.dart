import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/apple_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/google_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/meta_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/phone_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/register_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/response/login_response.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: 'https://stoplight.io/mocks/softech/wtgt/75539')
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/login/phone')
  Future<LoginResponse> loginPhone(@Body() PhoneLoginRequest phoneLoginRequest);

  @POST('/login/vk')
  Future<LoginResponse> loginVk(@Body() VkLoginRequest vkLoginRequest);
  
  @POST('/login/meta')
  Future<LoginResponse> loginMeta(@Body() MetaLoginRequest metaLoginRequest);

  @POST('/login/apple')
  Future<LoginResponse> loginApple(@Body() AppleLoginRequest appleLoginRequest);

  @POST('/login/apple')
  Future<LoginResponse> loginGoogle(@Body() GoogleLoginRequest googleLoginRequest);

  @POST('/register')
  Future<void> register(@Body() RegisterRequest registerRequest);

  @GET('/logout')
  Future<void> logout();
}
