import 'package:json_annotation/json_annotation.dart';

part 'dio_error_reponse_dto.g.dart';

/// DTO серверной ошибки
/// [code] - код ошибки
/// [message] - описание ошибки
@JsonSerializable()
class DioErrorResponseDto {
  final int? code;
  final String? message;

  DioErrorResponseDto({
    this.code,
    this.message,
  });
  factory DioErrorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DioErrorResponseDtoFromJson(json);

  @override
  String toString() {
    return 'DioErrorResponseDto: {\n code: $code,\n id: $message,\n}';
  }

  Map<String, dynamic> toJson() => _$DioErrorResponseDtoToJson(this);
}
