import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/core/services/storage/i_local_storage.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/hive/hive_storage.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/hive/token_dto.dart';

void main() async {
  group('Тесты hive для хранения токена авторизации', () {
    const testToken = TokenDTO(
      refreshToken: '402880824ff933a4014ff9345d7c0002',
      token: '402880824ff933a4014ff9345d7c0002',
    );

    final ILocalStorage storage = HiveTokenStorage();

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
