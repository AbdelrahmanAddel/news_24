import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_text_from_field.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/generated/l10n.dart';

class SignInTextFormFieldsAndForgetPassword extends StatelessWidget {
  const SignInTextFormFieldsAndForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: Column(
        children: [
          verticalSpace(29),
          CustomTextFormField(labelText: S.of(context).email),
          verticalSpace(29),
          CustomTextFormField(labelText: S.of(context).password),
          verticalSpace(20),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              S.of(context).forgetPassword,
              style: AppTextStyle.sfproMedS13,
            ),
          ),
        ],
      ),
    );
  }
}
