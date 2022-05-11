import 'package:where_to_go_today/src/features/auth/authapi/models/response/login_response.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';

class Login {
  final User user;
  final Token token;

  Login({
    required this.user,
    required this.token,
  });

  factory Login.fromResponseModel(LoginResponse loginResponse) => Login(
        user: User.fromResponseModel(loginResponse.user),
        token: Token.fromResponseModel(loginResponse.token),
      );
}
