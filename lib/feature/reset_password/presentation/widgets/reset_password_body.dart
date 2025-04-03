import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/common/widgets/custom_circle_progress.dart';
import 'package:news_24/core/common/widgets/custom_flutter_toast.dart';
import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/core/common/widgets/custom_text_from_field.dart';
import 'package:news_24/core/helpers/spaceing.dart';
import 'package:news_24/core/theme/app_colors.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/feature/reset_password/presentation/cubit/reset_password_cubit.dart';
import 'package:news_24/generated/l10n.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        final resetPasswordController = BlocProvider.of<ResetPasswordCubit>(
          context,
        );
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.0.w),
              child: CustomTextFormField(labelText: S.of(context).email,controller: resetPasswordController.emailAddressController,),
            ),
            verticalSpace(56),
            CustomMatrialButton(
              color:
                  resetPasswordController.isEmpty()
                      ? AppColors.lightGrey
                      : AppColors.darkModeColor,

              child:
                  state is ResetPasswordLoading
                      ? CustomCircleProgressInicator()
                      : Text(
                        S.of(context).reset,
                        style: AppTextStyle.sfproMedS14.copyWith(
                          color: Colors.white,
                        ),
                      ),
              onPressed: () {
                resetPasswordController.isEmpty()
                    ? customFlutterToast(
                      message: S.of(context).pleaseCompleteALl,
                    )
                    : resetPasswordController.resetPassword();
              },
            ),
          ],
        );
      },
      listener: (BuildContext context, ResetPasswordState state) {
        if (state is ResetPasswordSuccess) {
          customFlutterToast(message: state.successMessage);
        } else if (state is FailureToResetPassword) {
          customFlutterToast(message: state.failureMessage);
        }
      },
    );
  }
}
