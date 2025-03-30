import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_24/generated/l10n.dart';

String firebaseSignInErrorHandler(FirebaseAuthException e, S localization) {
  if (e.code == 'user-not-found') {
    debugPrint('No user found for that email.');
    return localization.noUserFound;
  } else if (e.code == 'wrong-password') {
    debugPrint('Wrong password provided for that user.');
    switch (e.code) {
      case 'user-not-found':
        return localization.noUserFound;
      case 'wrong-password':
        return localization.wrongPasswordProvided;
      default:
        return localization.unExpectedError;
    }
  } else if (e.code == 'invalid-email') {
    debugPrint('Invalid email.');
    return localization.invalidEmail;
  } else {
    debugPrint("unExpectedError =>  ${e.toString()}");
    return localization.unExpectedError;
  }
}
