// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppleLoginRequest _$AppleLoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AppleLoginRequest',
      json,
      ($checkedConvert) {
        final val = AppleLoginRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AppleLoginRequestToJson(AppleLoginRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
