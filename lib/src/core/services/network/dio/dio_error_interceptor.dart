import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_mapper.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_exceptions.dart';

class DioErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final exception = ServerErrorMapper.fromDioError(err);
    if (exception is NotFoundException) {
      throw exception;
    } else if (exception is UnauthorizedException) {
      //TODO(Sanlovty): необходимость попытки перезапросить токен, и вывести сообщение в консоль.
      debugPrint('Необходимо перезапросить токен');
      throw exception;
    } else if (exception is ImageSoLargeException) {
      throw exception;
    } else {
      handler.next(err);
    }
  }
}
