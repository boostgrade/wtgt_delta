import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/core/extensions/app_localizations_extensions.dart';
import 'package:where_to_go_today/src/features/auth/ui/register/register_screen.dart';
import 'package:where_to_go_today/src/features/main/main_screen_vm.dart';

/// Глвный экран с табами
class MainScreen extends StatelessWidget {
  final MainScreenVm vm;

  static const double _labelSize = 12.0;
  // TODO(artem-zaitsev): здесь будут храниться экраны, когда появятся
  final List<Widget> _screens = [
    // const Center(
    //   child: Text('Screen 1'),
    // ),
    const RegisterScreen(),
    const Center(
      child: Text('Screen 1'),
    ),
    const Center(
      child: Text('Screen 2'),
    ),
  ];

  MainScreen({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: _screens[vm.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: vm.tabClicked,
          currentIndex: vm.currentIndex,
          selectedFontSize: _labelSize,
          unselectedFontSize: _labelSize,
          items: [
            // TODO: поменять иконки из дизайна, когда они появятся
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              activeIcon: const Icon(
                Icons.search,
              ),
              label: AppLocalizationsExtention.tryOf(context).placesTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.card_giftcard),
              activeIcon: const Icon(Icons.card_giftcard),
              label: AppLocalizationsExtention.tryOf(context).cardTabName,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle),
              activeIcon: const Icon(Icons.account_circle),
              label: AppLocalizationsExtention.tryOf(context).profileTabName,
            ),
          ],
        ),
      ),
    );
  }
}
