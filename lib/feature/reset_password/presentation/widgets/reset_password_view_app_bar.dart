import 'package:flutter/material.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:news_24/core/helpers/extension.dart';
import 'package:news_24/core/theme/app_colors.dart';
import 'package:svg_flutter/svg.dart';

PreferredSizeWidget? resetPasswordViewAppBar({required BuildContext context}) {
  return AppBar(
    backgroundColor: AppColors.lightModeColor,
    leading: IconButton(
      onPressed: () {
        context.pop();
      },
      icon: SvgPicture.asset(Assets.assetsImagesSvgBackIcon),
    ),
  );
}
