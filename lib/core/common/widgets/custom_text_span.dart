import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
    this.firstStyle,
    this.secondStyle,
    required this.firstText,
    required this.secondText,
    this.ontapSecondText,
  });
  final TextStyle? firstStyle;
  final TextStyle? secondStyle;
  final String firstText;
  final String secondText;
  final GestureTapCallback? ontapSecondText;

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
            recognizer: TapGestureRecognizer()..onTap = ontapSecondText,
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
