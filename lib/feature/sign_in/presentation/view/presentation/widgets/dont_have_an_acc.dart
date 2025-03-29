import 'package:flutter/material.dart';
import 'package:news_24/core/common/widgets/custom_text_span.dart';
import 'package:news_24/generated/l10n.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextSpan(
      firstText: S.of(context).dontHaveAccount,
      secondText: S.of(context).register,
    );
  }
}
