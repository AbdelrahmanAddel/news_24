import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/reset_password/domain/usecase/reset_password_use_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitial());
  TextEditingController emailAddressController = TextEditingController();

  Future<void> resetPassword() async {
    emit(ResetPasswordLoadingState());
    final responce = await getIt<ResetPasswordUseCase>().call(
      emailAddress: emailAddressController.text,
    );
    responce.fold(
      (failur) => emit(FailureToResetPasswordState(failureMessage: failur)),
      (success) => emit(ResetPasswordSuccessState(successMessage: success)),
    );
  }

  bool isEmpty() {
    if (emailAddressController.text.isEmpty) {
      emit(IsEmptyState());
      return true;
    } else {
      emit(NotEmptyState());
      return false;
    }
  }
}
