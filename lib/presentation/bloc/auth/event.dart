part of 'bloc.dart';

@immutable
@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.getCurrentUser() = _GetCurrentUserEvent;

  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = _SignInWithEmailAndPasswordEvent;

  const factory AuthEvent.signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) = _SignUpWithEmailAndPasswordEvent;

  const factory AuthEvent.requestPasswordReset({required String email}) =
      _RequestPasswordResetEvent;

  const factory AuthEvent.confirmPasswordReset({
    required String code,
    required String newPassword,
  }) = _ConfirmPasswordResetEvent;
}
