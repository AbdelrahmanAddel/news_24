import 'package:flutter/material.dart';
import 'package:news_24/core/routing/routes.dart';
import 'package:news_24/feature/sign_in/presentation/view/presentation/view/sign_in_view.dart';
import 'package:news_24/feature/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:news_24/feature/sign_up/presentation/view/sign_up_view.dart';
import 'package:news_24/feature/splash/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => SignInView());
      case Routes.signUp:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => SignUpCubit(),
                child: SignUpView(),
              ),
        );
    }
    return null;
  }
}
