part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String email) = AuthEventEmailChanged;
  const factory AuthEvent.passwordChanged(String password) = AuthEventPasswordChanged;
  const factory AuthEvent.submitted() = AuthEventSubmitted;
}
