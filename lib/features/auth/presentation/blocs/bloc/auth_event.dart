part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.register(
    BuildContext context, {
    required String name,
    required String email,
    required String password,
  }) = Register;
  const factory AuthEvent.loginWithEmailAndPassword(BuildContext context,
      {required String email,
      required String password}) = LoginWithEmailAndPassword;
  const factory AuthEvent.loginWithGoogle(BuildContext context) =
      LoginWithGoogle;
  const factory AuthEvent.logout(BuildContext context) = Logout;
  const factory AuthEvent.initStateChange(BuildContext context) =
      InitStateChange;
  const factory AuthEvent.updateUser() = UpdateUser;
  const factory AuthEvent.forgotPassword(String email) = ForgotPassword;
}
