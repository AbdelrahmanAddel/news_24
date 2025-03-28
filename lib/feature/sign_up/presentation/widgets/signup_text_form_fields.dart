import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_text_from_field.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/generated/l10n.dart';

class SignUpTextFormFields extends StatelessWidget {
  const SignUpTextFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: Column(
        children: [
          CustomTextFormField(labelText: S.of(context).userName),
          verticalSpace(29),
          CustomTextFormField(labelText: S.of(context).email),
          verticalSpace(29),
          CustomTextFormField(labelText: S.of(context).password),

        ],
      ),
    );
  }
}
