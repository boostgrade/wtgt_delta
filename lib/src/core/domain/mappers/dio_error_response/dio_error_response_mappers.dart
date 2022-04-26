import 'package:where_to_go_today/src/core/domain/entities/dio_error_response/dio_error_response.dart';
import 'package:where_to_go_today/src/core/services/data/dio_error_response/dio_error_reponse_dto.dart';

/// Converts [DioErrorResponseDto] into [DioErrorResponse]
DioErrorResponse toDioErrorResponse(DioErrorResponseDto object) {
  return DioErrorResponse(
    code: object.code ?? 0,
    message: object.message ?? '',
  );
}

/// Converts [DioErrorResponse] into [DioErrorResponseDto]
DioErrorResponseDto toDioErrorResponseDto(DioErrorResponse object) {
  return DioErrorResponseDto(
    code: object.code,
    message: object.message,
  );
}
