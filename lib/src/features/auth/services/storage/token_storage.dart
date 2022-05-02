import 'package:hive/hive.dart';

///TokenStorage класс для храненения токена авторизации
///[read] - возвращает токен или null если токен еще не сохранен
///[write] - записывает токен в базу
///[delete] - удаляет токен из базы
class TokenStorage {
  static const boxName = 'tokenBox';

  final Box box;

  static const _key = 'token';

  TokenStorage() : box = Hive.box<String>(boxName);

  String? read() => box.get(_key);

  void write(String token) => box.put(_key, token);

  void delete() => box.delete(_key);
}
