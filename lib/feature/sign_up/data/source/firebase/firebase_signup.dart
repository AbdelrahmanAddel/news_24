import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_24/core/dependincy_injection/dependincy_injection.dart';
import 'package:news_24/generated/l10n.dart';

abstract class FirebaseSignup {
  Future<Either<String, String>> signupWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
}

class FirebaseSignupImplementation extends FirebaseSignup {
  @override
  Future<Either<String, String>> signupWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    final localization = getIt<S>();
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Right(localization.signupSuccssful);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
        return Left(localization.thePasswordProvide);
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
        return Left(localization.theAccountAlready);
      } else {
        debugPrint(e.code);
        return Left(localization.unExpectedError);
      }
    } catch (e) {
      debugPrint(e.toString());
      return Left(localization.unExpectedError);
    }
  }
}
