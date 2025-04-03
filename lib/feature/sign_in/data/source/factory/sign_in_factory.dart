import 'package:news_24/feature/sign_in/data/source/firebase/check_is_email_verfication.dart';
import 'package:news_24/feature/sign_in/data/source/firebase/sign_in_with_firebase.dart';

class SignInFactory {
  static FirebaseSignIn signInWithEmailAndPassword() {
    return FirebaseSignInImplementation();
  }

  static CheckIsEmailVerification checkEmailVerfication() {
    return CheckIsEmailVerificationImplementation();
  }
}
