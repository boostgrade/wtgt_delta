import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_error_reponse.freezed.dart';
part 'dio_error_reponse.g.dart';

@freezed
class DioErrorResponse with _$DioErrorResponse {
  const factory DioErrorResponse({
    required int? code,
    required String? message,
  }) = _DioErrorResponse;

  factory DioErrorResponse.fromJson(Map<String, Object?> json) =>
      _$DioErrorResponseFromJson(json);
}
