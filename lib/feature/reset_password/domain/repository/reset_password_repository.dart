import 'package:dartz/dartz.dart';

abstract class ResetPasswordRepository {
  Future<Either<String, String>> resetPassword({required String email});
}
