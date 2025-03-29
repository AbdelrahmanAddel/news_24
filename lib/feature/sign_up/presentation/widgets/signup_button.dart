import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_circle_progress.dart';
import 'package:news_24/core/common/widgets/custom_flutter_toast.dart';
import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/core/theme/app_colors.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/feature/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:news_24/generated/l10n.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 46.0.w),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        builder: (context, state) {
          final signUpCubitController = BlocProvider.of<SignUpCubit>(context);
          return CustomMatrialButton(
            
            color: signUpCubitController.isEmpty() ? AppColors.lightGrey: AppColors.darkModeColor,
            onPressed: () {
              signUpCubitController.isEmpty()
                  ? customFlutterToast(message: S.of(context).pleaseCompleteALl)
                  : signUpCubitController.signup();
            },
            child:
                state is LoadingToSignUp
                    ? CustomCircleProgressInicator()
                    : Text(
                      S.of(context).SignUp,
                      style: AppTextStyle.sfproMedS14.copyWith(
                        color: Colors.white,
                      ),
                    ),
          );
        },
        listener: (BuildContext context, SignUpState state) {
          if (state is SignUpSuccessful) {
            customFlutterToast(message: state.successMessage);
          } else if (state is SignUpFailer) {
            customFlutterToast(message: state.errorMessage);
          }
        },
      ),
    );
  }
}
