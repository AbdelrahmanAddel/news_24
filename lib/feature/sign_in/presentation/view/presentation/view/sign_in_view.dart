import 'package:flutter/material.dart';

import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/feature/sign_in/presentation/view/presentation/widgets/dont_have_an_acc.dart';
import 'package:news_24/feature/sign_in/presentation/view/presentation/widgets/sign_in_button.dart';
import 'package:news_24/feature/sign_in/presentation/view/presentation/widgets/sign_in_text_form_fields_and_forgetpass.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/logo_widget.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/or_signin_with.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/social_media_icons.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  verticalSpace(20),
                  LogoWidget(),
                  verticalSpace(37),
                  SignInTextFormFieldsAndForgetPassword(),
                  verticalSpace(39),
                  SignInButton(),
                  verticalSpace(50),
                  OrSignInWith(),
                  verticalSpace(50),
                  SocialMediaIcons(),
                  verticalSpace(30),
                  DontHaveAnAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
