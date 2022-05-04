import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/core/services/data/dio_error_response/dio_error_reponse_dto.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_exceptions.dart';

/// Сущность, которая преобразует ошибки сервера в ошибки приложенния
/// для дальнейшей обработки.
class ServerErrorMapper {
  /// Для обработки остальных серверных ошибок
  /// необходимо задать новые целочисленные константы, соотвтетсвующие кодам.
  static const int _badRequest = 400;
  static const int _unauthorized = 401;
  static const int _notFound = 404;

  static Exception fromDioError(DioError error) {
    /// Для обработки остальных серверных ошибок
    /// нужно написать дополнительные блоки в условном выражении,
    /// предварительно создав классы исключений.
    if (error.response != null && error.response!.statusCode != null) {
      switch (error.response!.statusCode) {
        case _notFound:
          return NotFoundException();
        case _unauthorized:
          return UnauthorizedException();
        case _badRequest:
          if (error.response!.data == null) {
            return ServerErrorException();
          }

          return CustomServerException(
            DioErrorResponseDto.fromJson(error.response!.data!),
          );
      }
    }

    /// Возвращается по-умолчанию для остальных ошибок
    return ServerErrorException();
  }
}
