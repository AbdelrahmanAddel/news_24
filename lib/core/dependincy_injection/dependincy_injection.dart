import 'package:get_it/get_it.dart';
import 'package:news_24/feature/sign_in/data/repository/sign_in_repository_implem.dart';
import 'package:news_24/feature/sign_in/data/source/firebase/sign_in_with_firebase.dart';
import 'package:news_24/feature/sign_in/domain/repository/sign_in_repository.dart';
import 'package:news_24/feature/sign_in/domain/usecase/sign_in_usecase.dart';
import 'package:news_24/feature/sign_up/data/repository/signup_repositry_implementation.dart';
import 'package:news_24/feature/sign_up/domain/repository/signup_repository.dart';
import 'package:news_24/feature/sign_up/domain/usecase/send_email_verification_usecase.dart';
import 'package:news_24/generated/l10n.dart';

final getIt = GetIt.instance;

void getitSetup() {
  getIt.registerLazySingleton(() => S());
  _signup();
  _signIn();
}

void _signIn() {
  getIt.registerLazySingleton<FirebaseSignIn>(
    () => FirebaseSignInImplementation(),
  );
  getIt.registerLazySingleton<SignInRepository>(() => SignInRepositoryImplem());
  getIt.registerLazySingleton(() => SignInUsecase());
}

void _signup() {
  getIt.registerLazySingleton<SignupRepository>(
    () => SignupRepositryImplementation(),
  );
  getIt.registerLazySingleton(() => SignupUseCase());
}
