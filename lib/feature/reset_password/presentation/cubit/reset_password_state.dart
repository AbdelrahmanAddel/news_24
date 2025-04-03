part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class IsEmptyState extends ResetPasswordState {}

final class NotEmptyState extends ResetPasswordState {}

final class ResetPasswordLoadingState extends ResetPasswordState {}

final class ResetPasswordSuccessState extends ResetPasswordState {
  final String successMessage;

  ResetPasswordSuccessState({required this.successMessage});
}

final class FailureToResetPasswordState extends ResetPasswordState {
  final String failureMessage;

  FailureToResetPasswordState({required this.failureMessage});
}
