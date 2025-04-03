import 'package:firebase_auth/firebase_auth.dart';
abstract class CheckIsEmailVerification {
  Future<bool> checkIsEmailVerification();
}

class CheckIsEmailVerificationImplementation extends CheckIsEmailVerification {
  @override
  Future<bool> checkIsEmailVerification() async {
    if (FirebaseAuth.instance.currentUser!.emailVerified) {
      return true;
    } else {
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      return false;
    }
  }
}
