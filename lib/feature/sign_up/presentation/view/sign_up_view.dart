import 'package:flutter/material.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(Assets.assetsImagesSvgAppLogoS),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
