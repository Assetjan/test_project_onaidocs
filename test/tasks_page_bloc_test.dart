import 'package:flutter_test/flutter_test.dart';
import 'package:test_task_onaidocs/src/features/tasks/domain/entities/task_entity.dart';
import 'package:test_task_onaidocs/src/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:test_task_onaidocs/src/features/tasks/presentation/bloc/tasks_page_bloc.dart';

class MockTasksRepository implements TasksRepository {
  final List<TaskEntity> _store = [
    TaskEntity(
      id: 'TK-001-000001',
      title: 'Первая задача',
      description: 'Описание первой задачи, достаточно длинное для теста',
      priority: TaskPriority.low,
      createdAt: DateTime(2024, 1, 1),
    ),
    TaskEntity(
      id: 'TK-001-000002',
      title: 'Вторая задача важная',
      description: 'Описание второй задачи, ещё одно длинное описание',
      priority: TaskPriority.high,
      createdAt: DateTime(2024, 1, 2),
    ),
  ];

  @override
  Future<List<TaskEntity>> getTasks() async {
    return List<TaskEntity>.unmodifiable(_store);
  }

  @override
  Future<TaskEntity?> getTaskById(String id) async {
    try {
      return _store.firstWhere((t) => t.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> saveTask(TaskEntity task) async {
    final index = _store.indexWhere((t) => t.id == task.id);
    if (index == -1) {
      _store.add(task);
    } else {
      _store[index] = task;
    }
  }
}

void main() {
  group('TasksPageBloc', () {
    test('started загружает задачи из репозитория', () async {
      final repo = MockTasksRepository();
      final bloc = TasksPageBloc(repo);

      bloc.add(const TasksPageEvent.started());

      await expectLater(
        bloc.stream,
        emitsInOrder([
          isA<TasksPageStateLoading>(),
          isA<TasksPageStateLoaded>().having(
            (s) => s.viewModel.tasks.length,
            'tasks length',
            2,
          ),
        ]),
      );

      await bloc.close();
    });
  });
}
