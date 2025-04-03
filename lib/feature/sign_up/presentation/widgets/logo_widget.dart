import 'package:flutter/material.dart';
import 'package:news_24/core/constants/assets.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(31),
        SvgPicture.asset(Assets.assetsImagesSvgAppLogoS),
        verticalSpace(20),
        Text(S.of(context).news24, style: AppTextStyle.cabinBoldS18),
      ],
    );
  }
}
