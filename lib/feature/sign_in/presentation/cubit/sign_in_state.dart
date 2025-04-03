part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitialState extends SignInState {}

final class SignInLoadingState extends SignInState {}

final class ChangePasswordVisibilityState extends SignInState {}

final class SignInSuccessfulState extends SignInState {}

final class SignInFailureState extends SignInState {
  final String errorMessage;

  SignInFailureState({required this.errorMessage});
}
