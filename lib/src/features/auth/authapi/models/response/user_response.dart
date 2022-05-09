import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable(checked: true)
class UserResponse {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final String birthDate;

  UserResponse({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
