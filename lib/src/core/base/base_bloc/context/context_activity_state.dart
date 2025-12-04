part of 'context_activity_bloc.dart';

@freezed
abstract class ContextActivityState with _$ContextActivityState {
  const factory ContextActivityState.handleActionWithContext(
    ContextCallback? callback,
  ) = HandleActionWithContext;
}
