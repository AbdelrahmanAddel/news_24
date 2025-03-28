import 'package:flutter/material.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(Duration(seconds: 3), () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Image.asset(Assets.assetsImagesPngSplashScreenLogo,width: 200,height: 200,),
            verticalSpace(20),
            Text('data', style: AppTextStyle.cabinBoldS18),
          ],
        ),
      ),
    );
  }
}
