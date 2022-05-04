import 'package:where_to_go_today/src/core/services/data/dio_error_response/dio_error_reponse_dto.dart';

/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [CustomServerException]
/// с названиями, соответсвующими конкретной ошибке.

/// Общий класс ошибок, с фабричным методом обработки ошибок по коду в response'e
abstract class CustomServerException implements Exception {
  factory CustomServerException(DioErrorResponseDto response) {
    if (response.code != null) {
      switch (response.code) {
        case ImageSoLargeException.code:
          return ImageSoLargeException();
        default:
          return UnexpectedServerException();
      }
    }

    return ServerErrorException();
  }
}

/// Неизвестная серверная ошибка
class UnexpectedServerException implements CustomServerException {}

/// Серверная ошибка по-умолчанию
class ServerErrorException implements CustomServerException {}

/// Ошибка 404
class NotFoundException implements CustomServerException {}

/// Ошибка 400 с кодом code == 101
class ImageSoLargeException implements CustomServerException {
  static const code = 101;
}

/// Ошибка при протухшем токене
class UnauthorizedException implements CustomServerException {}
