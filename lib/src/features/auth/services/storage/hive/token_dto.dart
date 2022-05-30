import 'package:hive_flutter/hive_flutter.dart';

part 'token_dto.g.dart';

@HiveType(typeId: 1)
class TokenDTO {
  @HiveField(0)
  final String token;

  @HiveField(1)
  final String refreshToken;

  const TokenDTO({required this.token, required this.refreshToken});

  //TODO(karev): implement transformer toDomainToken
}
