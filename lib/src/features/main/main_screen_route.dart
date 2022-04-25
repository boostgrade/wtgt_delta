import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/main/main_screen.dart';
import 'package:where_to_go_today/src/features/main/main_screen_vm.dart';

/// Рроут экрана [MainScreen]
class MainScreenRoute extends MaterialPage {
  MainScreenRoute()
      : super(
          child: Provider(
            create: (ctx) => MainScreenVm(ctx),
            child: Builder(
              builder: (context) => MainScreen(
                vm: context.read<MainScreenVm>(),
              ),
            ),
          ),
        );
}
