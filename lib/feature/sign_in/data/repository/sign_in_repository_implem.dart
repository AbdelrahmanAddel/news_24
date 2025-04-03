import 'package:dartz/dartz.dart';
import 'package:news_24/feature/sign_in/data/source/factory/sign_in_factory.dart';
import 'package:news_24/feature/sign_in/domain/repository/sign_in_repository.dart';

class SignInRepositoryImplem extends SignInRepository {
  @override
  Future<Either<String, String>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    return await SignInFactory.signInWithEmailAndPassword()
        .signInWithEmailAndPassword(
          emailAddress: emailAddress,
          password: password,
        );
  }

  @override
  Future<bool> checkEmailVerfication() async {
    return await SignInFactory.checkEmailVerfication()
        .checkIsEmailVerification();
  }
}
