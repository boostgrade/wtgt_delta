import 'package:where_to_go_today/src/features/auth/authapi/models/response/user_response.dart';

class User {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  const User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory User.fromResponseModel(UserResponse userResponse) => User(
        id: userResponse.id,
        name: userResponse.name,
        lastName: userResponse.lastName,
        phone: userResponse.phone,
        birthDate: DateTime.parse(userResponse.birthDate),
      );
}
