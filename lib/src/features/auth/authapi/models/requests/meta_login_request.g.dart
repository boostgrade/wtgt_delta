// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaLoginRequest _$MetaLoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MetaLoginRequest',
      json,
      ($checkedConvert) {
        final val = MetaLoginRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$MetaLoginRequestToJson(MetaLoginRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
