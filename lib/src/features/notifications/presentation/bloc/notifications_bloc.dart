import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc
    extends BaseBloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(const NotificationsState.initial());

  @override
  void onEventHandler(
    NotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) {
    emit(const NotificationsState.initial());
  }
}
