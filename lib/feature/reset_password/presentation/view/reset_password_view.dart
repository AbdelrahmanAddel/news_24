import 'package:flutter/material.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/feature/reset_password/presentation/widgets/reset_password_body.dart';
import 'package:news_24/feature/reset_password/presentation/widgets/reset_password_view_app_bar.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/logo_widget.dart';
import 'package:news_24/generated/l10n.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: resetPasswordViewAppBar(context: context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                LogoWidget(),
                verticalSpace(50),
                Text(
                  S.of(context).enterYourEmailTo,
                  style: AppTextStyle.sfproMedS14.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(50),
                ResetPasswordBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
