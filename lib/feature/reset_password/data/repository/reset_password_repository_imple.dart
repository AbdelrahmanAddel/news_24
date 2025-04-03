import 'package:dartz/dartz.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/reset_password/data/source/firebase/firebase_reset_password.dart';
import 'package:news_24/feature/reset_password/domain/repository/reset_password_repository.dart';

class ResetPasswordRepositoryImple extends ResetPasswordRepository {
  @override
  Future<Either<String, String>> resetPassword({required String email}) async {
    return await getIt<FirebaseResetPassword>().resetPassword(email: email);
  }
}
