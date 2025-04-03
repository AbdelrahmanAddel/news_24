import 'package:dartz/dartz.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/reset_password/domain/repository/reset_password_repository.dart';

class ResetPasswordUseCase {
  Future<Either<String, String>> call({required String emailAddress}) async {
    return await getIt<ResetPasswordRepository>().resetPassword(email: emailAddress);
  }
}
