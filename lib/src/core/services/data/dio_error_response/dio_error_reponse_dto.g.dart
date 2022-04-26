// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_error_reponse_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DioErrorResponseDto _$DioErrorResponseDtoFromJson(Map<String, dynamic> json) =>
    DioErrorResponseDto(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DioErrorResponseDtoToJson(
        DioErrorResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
