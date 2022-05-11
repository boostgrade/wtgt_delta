// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneLoginRequest _$PhoneLoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PhoneLoginRequest',
      json,
      ($checkedConvert) {
        final val = PhoneLoginRequest(
          phone: $checkedConvert('phone', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PhoneLoginRequestToJson(PhoneLoginRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'token': instance.token,
    };
