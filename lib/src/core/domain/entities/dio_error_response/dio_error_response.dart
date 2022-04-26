/// Модель серверной ошибки
class DioErrorResponse {
  final int code;
  final String message;

  DioErrorResponse({
    required this.code,
    required this.message,
  });
}
