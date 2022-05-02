import 'package:where_to_go_today/src/features/auth/authapi/models/response/user_response.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';

class UserDto extends User {
  UserDto({
    required int id,
    required String name,
    required String lastName,
    required String phone,
    required DateTime birthDate,
  }) : super(
          id: id,
          name: name,
          lastName: lastName,
          phone: phone,
          birthDate: birthDate,
        );

  factory UserDto.fromResponseModel(UserResponse userResponse) => UserDto(
        id: userResponse.id,
        name: userResponse.name,
        lastName: userResponse.lastName,
        phone: userResponse.phone,
        birthDate: userResponse.birthDate,
      );
}
