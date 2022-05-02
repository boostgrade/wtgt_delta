import 'package:where_to_go_today/src/features/auth/authapi/models/dto/token_dto.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/dto/user_dto.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/login.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/response/login_response.dart';

class LoginResponseDto extends Login {
  final UserDto userDto;
  final TokenDto tokenDto;

  LoginResponseDto({
    required this.userDto,
    required this.tokenDto,
  }) : super(
          user: userDto,
          token: tokenDto,
        );

  factory LoginResponseDto.fromResponseModel(LoginResponse loginResponse) =>
      LoginResponseDto(
        userDto: UserDto.fromResponseModel(loginResponse.user),
        tokenDto: TokenDto.fromResponseModel(loginResponse.token),
      );
}
