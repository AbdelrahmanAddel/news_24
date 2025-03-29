import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/generated/l10n.dart';

class OrSignInWith extends StatelessWidget {
  const OrSignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: Row(
        children: [
          Expanded(
            child: Divider(color: Colors.black, height: 1, thickness: 1.5),
          ),
          Text(S.of(context).orSignIn, style: AppTextStyle.sfproMedS13),
          Expanded(
            child: Divider(color: Colors.black, height: 1, thickness: 1.5),
          ),
        ],
      ),
    );
  }
}
