import '../entities/task_entity.dart';

abstract class TasksRepository {
  Future<List<TaskEntity>> getTasks();
  Future<void> saveTask(TaskEntity task);
  Future<TaskEntity?> getTaskById(String id);
}
