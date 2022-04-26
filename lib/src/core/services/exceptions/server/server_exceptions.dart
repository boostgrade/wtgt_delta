import 'package:where_to_go_today/src/core/domain/entities/dio_error_response/dio_error_response.dart';

/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [CustomServerException]
/// с названиями, соответсвующими конкретной ошибке.

/// Общий класс ошибок, с фабричным методом обработки ошибок по коду в response'e
abstract class CustomServerException implements Exception {
  factory CustomServerException(DioErrorResponse response) {
    switch (response.code) {
      case 101:
        return ImageSoLargeException();
      default:
        break;
    }

    return ServerErrorException();
  }
}

/// Серверная ошибка по-умолчанию
class ServerErrorException implements CustomServerException {}

/// Ошибка 404
class NotFoundException implements CustomServerException {}

/// Ошибка 400 с кодом code == 101
class ImageSoLargeException implements CustomServerException {}

/// Ошибка при протухшем токене
class UnauthorizedException implements CustomServerException {}
