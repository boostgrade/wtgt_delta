// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserResponse',
      json,
      ($checkedConvert) {
        final val = UserResponse(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          birthDate: $checkedConvert('birthDate', (v) => v as String),
        );
        return val;
      },
    );
