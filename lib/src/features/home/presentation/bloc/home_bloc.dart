import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.loaded(progress: 0));

  @override
  void onEventHandler(HomeEvent event, Emitter<HomeState> emit) {
    event.map(
      progressChanged: (e) {
        emit(HomeState.loaded(progress: e.progress));
      },
    );
  }
}
