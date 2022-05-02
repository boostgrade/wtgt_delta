// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenResponse',
      json,
      ($checkedConvert) {
        final val = TokenResponse(
          token: $checkedConvert('token', (v) => v as String),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        );
        return val;
      },
    );
