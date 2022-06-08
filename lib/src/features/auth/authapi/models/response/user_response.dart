import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';

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

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  static User toDomain(UserResponse userResponse) {
    return User(
      id: userResponse.id,
      name: userResponse.name,
      lastName: userResponse.lastName,
      phone: userResponse.phone,
      birthDate: DateTime.parse(userResponse.birthDate),
    );
  }
}
