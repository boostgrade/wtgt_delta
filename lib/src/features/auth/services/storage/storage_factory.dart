import 'package:hive_flutter/hive_flutter.dart';

abstract class StorageFactory {
  static Future<void> init() async => await Hive.initFlutter();
}
