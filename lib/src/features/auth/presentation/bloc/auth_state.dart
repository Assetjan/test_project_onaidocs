part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isValid,
    @Default(false) bool isAuthenticated,
  }) = _AuthState;
}
