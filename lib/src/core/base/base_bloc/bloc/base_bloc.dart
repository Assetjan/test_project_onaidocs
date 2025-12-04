import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utils/loggers/logger.dart';
import '../context/context_activity_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(S initialState) : super(initialState) {
    log('Event transformer $onEventTransformer', name: 'BASE_BLOC');
    on<E>(onEventHandler, transformer: onEventTransformer);
  }

  ContextActivityBloc? contextActivity;
  EventTransformer<E>? onEventTransformer;

  void onEventHandler(E event, Emitter<S> emit);

  void withContextHandler(ContextActivityBloc contextActivityBloc) {
    contextActivity = contextActivityBloc;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    Log.e('BlocError: ${error.toString()}');
    super.onError(error, stackTrace);
  }
}
