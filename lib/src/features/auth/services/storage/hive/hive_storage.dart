import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/core/services/storage/i_local_storage.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/hive/token_dto.dart';

///HiveTokenStorage класс для храненения токена авторизации
///[read] - возвращает токен или null если токен еще не сохранен
///[write] - записывает токен в базу
///[delete] - удаляет токен из базы
class HiveTokenStorage implements ILocalStorage<TokenDTO> {
  static const _boxName = 'tokenBox';
  static const _key = 'token';

  late final Box _box;

  static final HiveTokenStorage _instance = HiveTokenStorage._internal();

  factory HiveTokenStorage() {
    return _instance;
  }

  HiveTokenStorage._internal() {
    _init();
  }

  @override
  void delete([String key = _key]) {
    _box.delete(_key);
  }

  @override
  TokenDTO? read([String key = _key]) {
    return _box.get(_key) as TokenDTO?;
  }

  @override
  void write(TokenDTO model, [String key = _key]) {
    _box.put(_key, model);
  }

  Future<void> _init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TokenDTOAdapter());
    _box = await Hive.openBox<TokenDTO>(_boxName);
  }
}
