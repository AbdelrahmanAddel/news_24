import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:news_24/feature/splash/function/delay_function.dart';
import 'package:news_24/feature/splash/view/splash_view_body.dart';
import 'package:news_24/generated/l10n.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      delayNavigation(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        splashImage: Assets.assetsImagesPngSplashScreenLogo,
        splashText: S.of(context).news24,
      ),
    );
  }
}

