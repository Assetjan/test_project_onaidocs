import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../features/tasks/domain/entities/task_entity.dart';
import '../core/service/injectable/injectable_service.dart';
import 'application.dart';

class Runner {
  Future<void> initializeAndRun({
    required AppFlavor flavor,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    Hive.registerAdapter(TaskPriorityAdapter());
    Hive.registerAdapter(TaskEntityAdapter());
    setupDependencies();
    runApp(MainApp(flavor: flavor));
  }
}
