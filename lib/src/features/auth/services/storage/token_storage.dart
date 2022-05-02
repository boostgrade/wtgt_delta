import 'package:hive/hive.dart';

///TokenStorage класс для храненения токена авторизации
///[read] - возвращает токен или null если токен еще не сохранен
///[write] - записывает токен в базу
///[delete] - удаляет токен из базы
class TokenStorage {
  static const boxName = 'tokenBox';

  static const _key = 'token';

  final Box _box;

  TokenStorage() : _box = Hive.box<String>(boxName);

  String? read() => _box.get(_key);

  void write(String token) => _box.put(_key, token);

  void delete() => _box.delete(_key);
}
