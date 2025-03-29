import 'package:dartz/dartz.dart';
import 'package:news_24/feature/sign_up/data/source/factory/signup_service_factory.dart';
import 'package:news_24/feature/sign_up/domain/repository/signup_repository.dart';

class SignupRepositryImplementation extends SignupRepository {
  @override
  Future<Either<String, String>> signUpWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    return await SignupServiceFactory.firebaseSignup()
        .signupWithEmailAndPassword(
          emailAddress: emailAddress,
          password: password,
        );
  }

  @override
  Future<void> saveUserData({
    required String emailAddress,
    required String userName,
  }) async {
    await SignupServiceFactory.saveUserData().saveUserData(
      userName: userName,
      email: emailAddress,
    );
  }

  @override
  Future<void> sendEmailVerfication() async {
    await SignupServiceFactory.emailVerficationService().sendEmailVerfication();
  }
}
