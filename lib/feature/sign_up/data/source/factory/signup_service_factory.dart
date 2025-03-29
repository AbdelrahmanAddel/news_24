import 'package:news_24/feature/sign_up/data/source/firebase/firebase_email_verifcation_service.dart';
import 'package:news_24/feature/sign_up/data/source/firebase/firebase_signup.dart';
import 'package:news_24/feature/sign_up/data/source/firebase/save_user_data.dart';

class SignupServiceFactory {
  static FirebaseSignup firebaseSignup() {
    return FirebaseSignupImplementation();
  }

  static SaveUserData saveUserData() {
    return SaveUserDataImplementation();
  }

  static FirebaseEmailVerficationService emailVerficationService() {
    return EmailVerficationService();
  }
}
