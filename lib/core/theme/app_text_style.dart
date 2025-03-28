import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/constants/fonts_strings.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle cabinBoldS23 = TextStyle(
    fontFamily: FontsStrings.cabinBold,
    fontSize: 23.sp,
  );
  static TextStyle cabinBoldS18 = TextStyle(
    fontFamily: FontsStrings.cabinBold,
    fontSize: 18.sp,
  );
  static TextStyle sfproMedS14 = TextStyle(
    fontFamily: FontsStrings.sfproMeduim,
    fontSize: 14.sp,
  );
  static TextStyle sfproMedS13 = TextStyle(
    fontFamily: FontsStrings.sfproMeduim,
    fontSize: 13.sp,
  );
  static TextStyle sfproBoldS13 = TextStyle(
    fontFamily: FontsStrings.sfproBold,
    fontSize: 13.sp,
    fontWeight: FontWeight.bold
  );
}
