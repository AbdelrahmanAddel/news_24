import 'package:flutter/material.dart';
import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/generated/l10n.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMatrialButton(
      child: Text(
        S.of(context).signIn,
        style: AppTextStyle.sfproMedS14.copyWith(color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
