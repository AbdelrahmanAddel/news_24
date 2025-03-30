part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitialState extends SignInState {}

final class LoadingToSignInState extends SignInState {}

final class ChangePasswordVisibilityState extends SignInState {}

final class SignInSuccessfulState extends SignInState {}

final class FailureToSignInState extends SignInState {
  final String errorMessage;

  FailureToSignInState({required this.errorMessage});
}
