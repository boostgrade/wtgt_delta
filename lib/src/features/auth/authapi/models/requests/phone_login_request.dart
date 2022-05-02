import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_login_request.g.dart';

@JsonSerializable(checked: true)
class PhoneLoginRequest {
  final String phone;
  final String token;

  const PhoneLoginRequest({
    required this.phone,
    required this.token,
  });

  Map<String, dynamic> toJson() => _$PhoneLoginRequestToJson(this);
}