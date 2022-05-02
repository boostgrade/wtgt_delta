import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';

part 'user_response.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class UserResponse extends User {
  UserResponse({
    required int id,
    required String name,
    required String lastName,
    required String phone,
    required String birthDate,
  }) : super(
          id: id,
          name: name,
          lastName: lastName,
          phone: phone,
          birthDate: DateTime.parse(birthDate),
        );

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
