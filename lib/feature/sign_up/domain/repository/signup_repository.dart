abstract class SignupRepository {
  signUpWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  saveUserData({required String emailAddress, required String userName});
  sendEmailVerfication();
}
