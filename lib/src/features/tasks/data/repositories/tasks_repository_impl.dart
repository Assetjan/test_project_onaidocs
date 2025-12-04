import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/tasks_repository.dart';
import '../datasources/local/tasks_local_data_source.dart';

class TasksRepositoryImpl implements TasksRepository {
  final TasksLocalDataSource localDataSource;

  TasksRepositoryImpl(this.localDataSource);

  @override
  Future<List<TaskEntity>> getTasks() {
    return localDataSource.getTasks();
  }

  @override
  Future<void> saveTask(TaskEntity task) {
    return localDataSource.saveTask(task);
  }

  @override
  Future<TaskEntity?> getTaskById(String id) {
    return localDataSource.getTaskById(id);
  }
}
