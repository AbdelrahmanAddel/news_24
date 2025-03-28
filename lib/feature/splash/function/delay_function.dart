import 'package:flutter/material.dart';
import 'package:news_24/core/helpers/extension.dart';
import 'package:news_24/core/routing/routes.dart';

void delayNavigation(BuildContext context) {
  Future.delayed(Duration(seconds: 3), () {
    context.pushReplacement(routeName: Routes.signUp);
  });
}
