import 'package:flutter/material.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
    this.firstStyle,
    this.secondStyle,
    required this.firstText,
    required this.secondText,
  });
  final TextStyle? firstStyle;
  final TextStyle? secondStyle;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style:
                firstStyle ??
                AppTextStyle.sfproMedS13.copyWith(color: Colors.black),
          ),
          TextSpan(
            text: secondText,
            style:
                secondStyle ??
                AppTextStyle.sfproBoldS13.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
