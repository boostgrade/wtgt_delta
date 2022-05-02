import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependency.dart';
import 'package:where_to_go_today/src/features/app/ui/app.dart';
import 'package:where_to_go_today/src/features/app/ui/app_vm.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';

Future<void> main() async {
  final globalDeps = AppDependencies();
  await globalDeps.init();
  await Hive.initFlutter();
  await Hive.openBox(TokenStorage.boxName);

  runApp(
    Provider(
      create: (ctx) => globalDeps,
      child: App(
        vm: AppVm(
          globalDeps.settingsController,
          globalDeps.errorHandler,
        ),
      ),
    ),
  );
}
