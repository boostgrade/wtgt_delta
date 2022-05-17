import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/user.dart';

class Login {
  final User user;
  final Token token;

  Login({
    required this.user,
    required this.token,
  });
}
