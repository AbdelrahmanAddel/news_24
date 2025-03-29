import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class FirebaseEmailVerficationService {
  sendEmailVerfication();
}

class EmailVerficationService extends FirebaseEmailVerficationService {
  @override
  sendEmailVerfication() async {
    try {
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
    }
  }
}
