import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_text_from_field.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/feature/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:news_24/generated/l10n.dart';

class SignUpTextFormFields extends StatelessWidget {
  const SignUpTextFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          final signUpCubitController = BlocProvider.of<SignUpCubit>(context);
          return Column(
            children: [
              CustomTextFormField(
                labelText: S.of(context).userName,
                controller: signUpCubitController.userNameController,
              ),
              verticalSpace(29),
              CustomTextFormField(
                labelText: S.of(context).email,
                controller: signUpCubitController.emailAddressController,
              ),
              verticalSpace(29),
              CustomTextFormField(
                suffixIcon: IconButton(
                  onPressed: () {
                    signUpCubitController.togglePasswordVisibility();
                  },
                  icon: Icon(
                    signUpCubitController.isObsecure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                labelText: S.of(context).password,
                controller: signUpCubitController.passwordController,
                isObsecure: signUpCubitController.isObsecure,
              ),
            ],
          );
        },
      ),
    );
  }
}
