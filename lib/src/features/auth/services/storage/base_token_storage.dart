import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseStorage<T> {
  final String _boxName;
  final Box _box;

  BaseStorage({required boxName})
      : _boxName = boxName,
        _box = Hive.box<T>(boxName);

  T? read();
  void write(T value);
  void delete();
}
