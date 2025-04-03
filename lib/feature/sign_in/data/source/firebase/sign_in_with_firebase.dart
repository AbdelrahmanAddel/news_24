import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/feature/sign_in/data/error/firebase_sign_in_error_handler.dart';
import 'package:news_24/generated/l10n.dart';

abstract class FirebaseSignIn {
  Future<Either<String, String>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
}

class FirebaseSignInImplementation extends FirebaseSignIn {
  @override
  Future<Either<String, String>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    final localization = getIt<S>();
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Right(localization.signIn);
    } on FirebaseAuthException catch (e) {
      return Left(firebaseSignInErrorHandler(e, localization));
    } catch (e) {
      debugPrint("Error => ${e.toString()}");
      return Left(localization.unExpectedError);
    }
  }
}
