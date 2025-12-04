import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/gen/assets.gen.dart';
import '../theme/colors.dart';
import '../router/router_paths.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({required this.child, super.key});

  int _indexForLocation(String location) {
    if (location.startsWith(RoutePaths.tasks)) return 1;
    if (location.startsWith(RoutePaths.notifications)) return 2;
    if (location.startsWith(RoutePaths.profile)) return 3;
    return 0;
  }

  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(RoutePaths.home);
        break;
      case 1:
        context.go(RoutePaths.tasks);
        break;
      case 2:
        context.go(RoutePaths.notifications);
        break;
      case 3:
        context.go(RoutePaths.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final location = router.state.uri.toString();
    final currentIndex = _indexForLocation(location);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        onTap: (index) => _onTap(context, index),
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(width: 24, height: 24),

            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.add.svg(width: 24, height: 24),

            label: 'Задачи',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.notificationNew.svg(width: 24, height: 24),

            label: 'Уведомления',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.ave.svg(width: 24, height: 24),

            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
