part of 'tasks_page_bloc.dart';

@freezed
class TasksPageEvent with _$TasksPageEvent {
  const factory TasksPageEvent.started() = TasksPageEventStarted;
  const factory TasksPageEvent.queryChanged(String query) =
      TasksPageEventQueryChanged;
  const factory TasksPageEvent.taskSaved(TaskEntity task) =
      TasksPageEventTaskSaved;
}
