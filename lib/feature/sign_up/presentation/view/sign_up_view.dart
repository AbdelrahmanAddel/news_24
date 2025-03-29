import 'package:flutter/material.dart';

import 'package:news_24/core/common/widgets/custom_text_span.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/logo_widget.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/or_signin_with.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/signup_button.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/signup_text_form_fields.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/social_media_icons.dart';

import 'package:news_24/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  const LogoWidget(),
                  verticalSpace(20),
                  const SignUpTextFormFields(),
                  verticalSpace(49),
                  const SignUpButton(),
                  verticalSpace(50),
                  const OrSignInWith(),
                  verticalSpace(40),
                  const SocialMediaIcons(),
                  verticalSpace(30),
                  CustomTextSpan(
                    firstText: S.of(context).bySigningUp,
                    secondText: S.of(context).termsAndConditions,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
