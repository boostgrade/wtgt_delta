import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/response/token_response.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/response/user_response.dart';

part 'login_response.g.dart';

@JsonSerializable(checked: true)
class LoginResponse {
  final UserResponse user;
  final TokenResponse token;

  LoginResponse({
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
