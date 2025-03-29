import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/sign_up/domain/usecase/send_email_verification_usecase.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignupInitial());
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  bool isObsecure = true;
  void signup() async {
    emit(LoadingToSignUp());
    final responce = await getIt<SignupUseCase>().signUpUseCase(
      emailAddress: emailAddressController.text,
      password: passwordController.text,
    );
    responce.fold((failer) => emit(SignUpFailer(errorMessage: failer)), (
      success,
    ) {
      _saveUserData();
      _sendEmailVerfication();
      emit(SignUpSuccessful(successMessage: success));
    });
  }

  void togglePasswordVisibility() {
    isObsecure = !isObsecure;
    emit(TogglePasswordVisibilityState());
  }

  void _saveUserData() {
    getIt<SignupUseCase>().saveUserDataUseCase(
      emailAddress: emailAddressController.text,
      userName: userNameController.text,
    );
  }

  void _sendEmailVerfication() {
    getIt<SignupUseCase>().sendEmailVerificationUseCase();
  }

  bool isEmpty() {
    if (emailAddressController.text.isEmpty ||
        passwordController.text.isEmpty ||
        userNameController.text.isEmpty) {
      emit(IsEmptyState());
      return true;
    } else {
      emit(NotEmptyState());

      return false;
    }
  }
}
