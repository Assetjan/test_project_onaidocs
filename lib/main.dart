import 'dart:async';

import 'package:test_task_onaidocs/src/app/application.dart';
import 'package:test_task_onaidocs/src/app/runner.dart';
import 'package:test_task_onaidocs/src/core/utils/loggers/logger.dart';

Future<void> main(List<String> args) async {
  Log.runLogging(() {
    runZonedGuarded(() async {
      await Runner().initializeAndRun(flavor: AppFlavor.debug);
    }, Log.zoneError);
  });
}
