import 'package:dartz/dartz.dart';

abstract class SignInRepository {
  Future<Either<String, String>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<bool> checkEmailVerfication();
}
