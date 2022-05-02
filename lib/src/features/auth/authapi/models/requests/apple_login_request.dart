import 'package:json_annotation/json_annotation.dart';

part 'apple_login_request.g.dart';

@JsonSerializable(checked: true)
class AppleLoginRequest {
  final String token;

  const AppleLoginRequest({
    required this.token,
  });

    Map<String, dynamic> toJson() => _$AppleLoginRequestToJson(this);
}
