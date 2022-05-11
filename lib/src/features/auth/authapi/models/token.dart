import 'package:where_to_go_today/src/features/auth/authapi/models/response/token_response.dart';

class Token {
  final String token;
  final String refreshToken;

  const Token({
    required this.token,
    required this.refreshToken,
  });

   factory Token.fromResponseModel(TokenResponse tokenResponse) => Token(
        token: tokenResponse.token,
        refreshToken: tokenResponse.refreshToken,
      );
}
