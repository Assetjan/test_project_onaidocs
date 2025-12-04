import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial());

  @override
  void onEventHandler(ProfileEvent event, Emitter<ProfileState> emit) {
    emit(const ProfileState.initial());
  }
}
