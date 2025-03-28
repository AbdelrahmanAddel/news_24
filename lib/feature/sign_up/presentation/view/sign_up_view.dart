import 'package:flutter/material.dart';


import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/logo_widget.dart';
import 'package:news_24/feature/sign_up/presentation/widgets/signup_text_form_fields.dart';

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
                  LogoWidget(),
                  verticalSpace(20),
                  SignUpTextFormFields(),
                  verticalSpace(49),
                  SignUpButton(),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}


class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMatrialButton(
          buttonText: S.of(context).SignUp,
          onPressed: () {
            //TODO Check If TextFormFields Are Empty Or Not And Change The button Color .
          },
        ),
        verticalSpace(50),
        Row(
          children: [
            Expanded(child: Divider(color: Colors.black, height: 1, thickness: 2)),
            Text('data'),
            Expanded(child: Divider(color: Colors.black, height: 1, thickness: 2)),
          ],
        ),
      ],
    );
  }
}

