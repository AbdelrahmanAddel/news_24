part of 'signup_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignupInitial extends SignUpState {}

final class TogglePasswordVisibilityState extends SignUpState {}

final class NotEmptyState extends SignUpState {}

final class IsEmptyState extends SignUpState {}

final class LoadingToSignUp extends SignUpState {}

final class SignUpSuccessful extends SignUpState {
  final String successMessage;
  SignUpSuccessful({required this.successMessage});
}

final class SignUpFailer extends SignUpState {
  final String errorMessage;

  SignUpFailer({required this.errorMessage});
}
