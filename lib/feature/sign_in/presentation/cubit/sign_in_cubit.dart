import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/sign_in/domain/usecase/sign_in_usecase.dart';
import 'package:news_24/generated/l10n.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitialState());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObsecure = true;

  signIn() async {
    emit(SignInLoadingState());
    final responce = await getIt<SignInUsecase>().signInWithEmailAndPassword(
      emailAddress: emailController.text,
      password: passwordController.text,
    );
    responce.fold(
      (failure) => emit(SignInFailureState(errorMessage: failure)),
      (success) async {
        _isEmailVerfication();
      },
    );
  }

  Future<void> _isEmailVerfication() async {
    final localiztion = getIt<S>();
    bool isVerfied = await getIt<SignInUsecase>().checkIsEmailVerfication();
    debugPrint(isVerfied.toString());

    if (isVerfied) {
      emit(SignInSuccessfulState());
      debugPrint("Success");
    } else {
      emit(
        SignInFailureState(errorMessage: localiztion.pleaseVerfiyYourEmail),
      );
      debugPrint("Failure");
    }
  }

  void toggleObsecure() {
    isObsecure = !isObsecure;
    emit(ChangePasswordVisibilityState());
  }
}
