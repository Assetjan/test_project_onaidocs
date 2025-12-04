part of 'tasks_page_bloc.dart';

@freezed
class TasksPageState with _$TasksPageState {
  const factory TasksPageState.loading() = TasksPageStateLoading;
  const factory TasksPageState.loaded({
    required TasksPageViewModel viewModel,
  }) = TasksPageStateLoaded;
  const factory TasksPageState.error(String message) = TasksPageStateError;
}

@freezed
abstract class TasksPageViewModel with _$TasksPageViewModel {
  const factory TasksPageViewModel({
    required List<TaskEntity> tasks,
    required String query,
  }) = _TasksPageViewModel;
}

extension TasksPageViewModelX on TasksPageViewModel {
  List<TaskEntity> get filteredTasks {
    if (query.isEmpty) return tasks;
    final lower = query.toLowerCase();
    return tasks.where((t) => t.title.toLowerCase().contains(lower)).toList();
  }
}
