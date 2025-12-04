import 'package:hive/hive.dart';
import '../../../domain/entities/task_entity.dart';

class TasksLocalDataSource {
  static const String boxName = 'tasks_box';

  Future<Box<TaskEntity>> _openBox() async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<TaskEntity>(boxName);
    }
    return Hive.openBox<TaskEntity>(boxName);
  }

  Future<List<TaskEntity>> getTasks() async {
    final box = await _openBox();
    return box.values.toList();
  }

  Future<void> saveTask(TaskEntity task) async {
    final box = await _openBox();
    await box.put(task.id, task);
  }

  Future<TaskEntity?> getTaskById(String id) async {
    final box = await _openBox();
    return box.get(id);
  }
}
