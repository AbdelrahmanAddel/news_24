import 'package:dartz/dartz.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/sign_up/domain/repository/signup_repository.dart';

class SignupUseCase {
  Future<Either<String, String>>  signUpUseCase({
    required String emailAddress,
    required String password,
  }) async {
    return await getIt<SignupRepository>().signUpWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
  }

  sendEmailVerificationUseCase() async {
    await getIt<SignupRepository>().sendEmailVerfication();
  }

  saveUserDataUseCase({
    required String emailAddress,
    required String userName,
  }) async {
    await getIt<SignupRepository>().saveUserData(
      emailAddress: emailAddress,
      userName: userName,
    );
  }
}
