import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/tasks_repository.dart';

part 'tasks_page_bloc.freezed.dart';
part 'tasks_page_event.dart';
part 'tasks_page_state.dart';

class TasksPageBloc extends BaseBloc<TasksPageEvent, TasksPageState> {
  final TasksRepository repository;

  TasksPageBloc(this.repository)
      : super(const TasksPageState.loading()) {
    add(const TasksPageEvent.started());
  }

  @override
  void onEventHandler(
    TasksPageEvent event,
    Emitter<TasksPageState> emit,
  ) async {
    await event.map(
      started: (e) async {
        emit(const TasksPageState.loading());
        final tasks = await repository.getTasks();
        emit(
          TasksPageState.loaded(
            viewModel: TasksPageViewModel(
              tasks: tasks,
              query: '',
            ),
          ),
        );
      },
      queryChanged: (e) async {
        final current = state.maybeMap(
          loaded: (s) => s.viewModel,
          orElse: () => const TasksPageViewModel(tasks: [], query: ''),
        );
        emit(
          TasksPageState.loaded(
            viewModel: current.copyWith(query: e.query),
          ),
        );
      },
      taskSaved: (e) async {
        await repository.saveTask(e.task);
        final tasks = await repository.getTasks();
        final currentQuery = state.maybeMap(
          loaded: (s) => s.viewModel.query,
          orElse: () => '',
        );
        emit(
          TasksPageState.loaded(
            viewModel: TasksPageViewModel(
              tasks: tasks,
              query: currentQuery,
            ),
          ),
        );
      },
    );
  }
}
