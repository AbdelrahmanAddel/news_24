import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/generated/l10n.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: CustomMatrialButton(
        buttonText: S.of(context).SignUp,
        onPressed: () {
          //! Check If TextFormFields Are Empty Or Not And Change The button Color .
        },
      ),
    );
  }
}
