part of 'context_activity_bloc.dart';

@freezed
abstract class ContextActivityEvent with _$ContextActivityEvent {
  const factory ContextActivityEvent.handleContextActivityEvent({
    required ContextCallback callback,
  }) = HandleContextActivityEvent;
}
