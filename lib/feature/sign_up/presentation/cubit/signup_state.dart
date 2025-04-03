part of 'signup_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignupInitial extends SignUpState {}

final class TogglePasswordVisibilityState extends SignUpState {}

final class NotEmptyState extends SignUpState {}

final class IsEmptyState extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpSuccessfulState extends SignUpState {
  final String successMessage;
  SignUpSuccessfulState({required this.successMessage});
}

final class SignUpFailerState extends SignUpState {
  final String errorMessage;

  SignUpFailerState({required this.errorMessage});
}
