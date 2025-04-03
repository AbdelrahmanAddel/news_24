import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/generated/l10n.dart';

abstract class FirebaseResetPassword {
  Future<Either<String, String>>resetPassword({required String email});
}

class FirebaseResetPasswordImple extends FirebaseResetPassword {
  @override
  Future<Either<String, String>> resetPassword({required String email}) async {
    try {
      final localization = getIt<S>();
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return Right(localization.emailSentPlease);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      return Left(e.message ?? "Unknown Error");
    } catch (e) {
      debugPrint(e.toString());
      return Left("Unknown Error");
    }
  }
}
