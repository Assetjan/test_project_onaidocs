import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial());

  @override
  void onEventHandler(AuthEvent event, Emitter<AuthState> emit) {
    event.map(
      emailChanged: (e) {
        emit(
          state.copyWith(
            email: e.email,
            isValid: _validate(e.email, state.password),
          ),
        );
      },
      passwordChanged: (e) {
        emit(
          state.copyWith(
            password: e.password,
            isValid: _validate(state.email, e.password),
          ),
        );
      },
      submitted: (e) {
        if (state.isValid) {
          emit(state.copyWith(isAuthenticated: true));
        }
      },
    );
  }

  bool _validate(String email, String password) {
    final emailOk = email.isNotEmpty && email.contains('@');
    final passOk = password.length >= 4;
    return emailOk && passOk;
  }
}
