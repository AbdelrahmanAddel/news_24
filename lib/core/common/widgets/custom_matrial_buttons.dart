import 'package:flutter/material.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class CustomMatrialButton extends StatelessWidget {
  const CustomMatrialButton({
    super.key,
    this.width,
    this.height,
    required this.buttonText,
    this.onPressed,
    this.color,
  });
  final double? width;
  final double? height;
  final String buttonText;
  final Color? color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      minWidth: width ?? 150,
      height: height ?? 40,
      color: color ?? Colors.black,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: AppTextStyle.sfproMedS14.copyWith(color: Colors.white),
      ),
    );
  }
}
