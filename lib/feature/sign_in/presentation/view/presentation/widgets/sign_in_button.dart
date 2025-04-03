import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_24/core/common/widgets/custom_circle_progress.dart';
import 'package:news_24/core/common/widgets/custom_flutter_toast.dart';
import 'package:news_24/core/common/widgets/custom_matrial_buttons.dart';
import 'package:news_24/core/theme/app_text_style.dart';
import 'package:news_24/feature/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:news_24/generated/l10n.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      builder: (context, state) {
        final signInCubitController = context.read<SignInCubit>();

        return CustomMatrialButton(
          child:
              state is SignInLoadingState
                  ? CustomCircleProgressInicator()
                  : Text(
                    S.of(context).signIn,
                    style: AppTextStyle.sfproMedS14.copyWith(
                      color: Colors.white,
                    ),
                  ),
          onPressed: () {
            signInCubitController.signIn();
          },
        );
      },
      listener: (BuildContext context, SignInState state) {
        if (state is SignInFailureState) {
          customFlutterToast(message: state.errorMessage);
        }
      },
    );
  }
}
