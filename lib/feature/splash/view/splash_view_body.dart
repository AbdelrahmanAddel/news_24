import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    required this.splashImage,
    required this.splashText,
  });
  final String splashImage;
  final String splashText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(splashImage, width: 200.w, height: 200.h),
          verticalSpace(20),
          Text(splashText, style: AppTextStyle.cabinBoldS23),
        ],
      ),
    );
  }
}
