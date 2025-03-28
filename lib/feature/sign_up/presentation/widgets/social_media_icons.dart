import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/helpers/spaceing.dart' show horizontalSpace;

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 46.0.w),
      child: Row(
        children: [
          SvgPicture.asset(Assets.assetsImagesSvgMailIcon),
          horizontalSpace(20),
          SvgPicture.asset(Assets.assetsImagesSvgGmailIcon),
          horizontalSpace(20),
          SvgPicture.asset(Assets.assetsImagesSvgFacebookIcon),
          horizontalSpace(20),
          SvgPicture.asset(Assets.assetsImagesSvgTwitterIcon),
          horizontalSpace(20),
          SvgPicture.asset(Assets.assetsImagesSvgAppleIcon),
        ],
      ),
    );
  }
}