// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vk_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VkLoginRequest _$VkLoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'VkLoginRequest',
      json,
      ($checkedConvert) {
        final val = VkLoginRequest(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$VkLoginRequestToJson(VkLoginRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
