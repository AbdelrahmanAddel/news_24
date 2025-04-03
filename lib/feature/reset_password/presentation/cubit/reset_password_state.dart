part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class IsEmptyState extends ResetPasswordState {}

final class NotEmptyState extends ResetPasswordState {}

final class ResetPasswordLoading extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {
  final String successMessage;

  ResetPasswordSuccess({required this.successMessage});
}

final class FailureToResetPassword extends ResetPasswordState {
  final String failureMessage;

  FailureToResetPassword({required this.failureMessage});
}
