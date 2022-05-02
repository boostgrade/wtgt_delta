import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';

void main() async {
  Hive.init(Directory.current.path);
  await Hive.openBox<String>(TokenStorage.boxName);

  group('Тесты hive для хранения токена авторизации', () {
    const testToken = '402880824ff933a4014ff9345d7c0002';
    final storage = TokenStorage();

    test('После сохранения токена он должен прочитаться из хранилища', () {
      storage.write(testToken);
      expect(storage.read(), testToken);
    });

    test('После удаления токена из базы при попытке чтения должен вернуться null', () {
      storage.delete();
      expect(storage.read(), null);
    });
  });
}
