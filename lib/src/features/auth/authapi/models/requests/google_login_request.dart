import 'package:json_annotation/json_annotation.dart';

part 'google_login_request.g.dart';

@JsonSerializable(checked: true)
class GoogleLoginRequest {
  final String token;

  const GoogleLoginRequest({
    required this.token,
  });

    Map<String, dynamic> toJson() => _$GoogleLoginRequestToJson(this);
}
