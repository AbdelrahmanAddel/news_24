import 'package:get_it/get_it.dart';
import 'package:news_24/feature/sign_up/data/repository/signup_repositry_implementation.dart';
import 'package:news_24/feature/sign_up/domain/repository/signup_repository.dart';
import 'package:news_24/feature/sign_up/domain/usecase/send_email_verification_usecase.dart';
import 'package:news_24/generated/l10n.dart';

final getIt = GetIt.instance;

void getitSetup() {
  getIt.registerLazySingleton(() => S());
  _signup();
}

void _signup() {
  getIt.registerLazySingleton<SignupRepository>(
    () => SignupRepositryImplementation(),
  );
  getIt.registerLazySingleton(() => SignupUseCase());
}
