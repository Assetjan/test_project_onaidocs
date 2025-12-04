// lib/src/app/application.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/src/features/home/presentation/bloc/home_bloc.dart';

import '../core/router/router.dart';
import '../core/theme/theme.dart';
import '../core/service/injectable/injectable_service.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/tasks/presentation/bloc/tasks_page_bloc.dart';

part 'flavor_builds.dart';

enum AppFlavor { debug, prod }

class MainApp extends StatefulWidget {
  final AppFlavor flavor;
  const MainApp({required this.flavor, super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = createRouter();
  }

  @override
  Widget build(BuildContext context) {
    return buildApp(
      flavor: widget.flavor,
      router: _router,
    );
  }
}
