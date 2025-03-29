import 'package:flutter/material.dart';
import 'package:news_24/core/theme/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.isObsecure,
    this.decoration,
    this.controller, this.suffixIcon,
  });
  final String labelText;
  final TextStyle? labelStyle;
  final bool? isObsecure;
  final InputDecoration? decoration;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObsecure ?? false,
      decoration:
          decoration ??
          InputDecoration(
            suffixIcon: suffixIcon,
            labelStyle: labelStyle ?? AppTextStyle.sfproMedS14,
            labelText: labelText,

            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 10),
            ),
          ),
    );
  }
}
