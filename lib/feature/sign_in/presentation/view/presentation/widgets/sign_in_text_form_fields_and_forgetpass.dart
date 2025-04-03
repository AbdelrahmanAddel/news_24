import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_text_from_field.dart';
import 'package:news_24/core/helpers/extension.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/routing/routes.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/feature/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:news_24/generated/l10n.dart';

class SignInTextFormFieldsAndForgetPassword extends StatelessWidget {
  const SignInTextFormFieldsAndForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: BlocBuilder<SignInCubit, SignInState>(
        builder: (context, state) {
          final signInCubitController = context.read<SignInCubit>();
          return Column(
            children: [
              verticalSpace(29),
              CustomTextFormField(
                labelText: S.of(context).email,
                controller: signInCubitController.emailController,
              ),
              verticalSpace(29),
              CustomTextFormField(
                labelText: S.of(context).password,
                controller: signInCubitController.passwordController,
                isObsecure: signInCubitController.isObsecure,
                suffixIcon: IconButton(
                  onPressed: () {
                    signInCubitController.toggleObsecure();
                  },
                  icon: Icon(
                    signInCubitController.isObsecure
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(routeName: Routes.resetPassword);
                  },
                  child: Text(
                    S.of(context).forgetPassword,
                    style: AppTextStyle.sfproMedS13,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
