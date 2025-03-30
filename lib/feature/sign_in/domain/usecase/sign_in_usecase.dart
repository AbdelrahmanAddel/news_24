import 'package:dartz/dartz.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInUsecase {
  Future<Either<String, String>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    return await getIt<SignInRepository>().signInWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
  }

  Future<bool> checkIsEmailVerfication() async {
    return await getIt<SignInRepository>().checkEmailVerfication();
  }
}
