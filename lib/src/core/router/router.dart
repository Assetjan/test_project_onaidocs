import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/src/features/tasks/domain/entities/task_entity.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/tasks/presentation/pages/tasks_page.dart';
import '../../features/tasks/presentation/pages/task_detail_page.dart';
import '../../features/tasks/presentation/pages/task_edit_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../widgets/app_scaffold.dart';
import 'router_paths.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter() {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RoutePaths.auth,
    routes: [
      GoRoute(
        path: RoutePaths.auth,
        builder: (context, state) => const LoginPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => AppScaffold(child: child),
        routes: [
          GoRoute(
            path: RoutePaths.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: RoutePaths.tasks,
            builder: (context, state) => const TasksPage(),
          ),
          GoRoute(
            path: '${RoutePaths.taskDetail}/:id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return TaskDetailPage(taskId: id);
            },
          ),
          GoRoute(
            path: RoutePaths.taskEdit,
            builder: (context, state) {
              final task = state.extra as TaskEntity?;
              return TaskEditPage(task: task);
            },
          ),
          GoRoute(
            path: RoutePaths.notifications,
            builder: (context, state) => const NotificationsPage(),
          ),
          GoRoute(
            path: RoutePaths.profile,
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
    ],
  );
}
