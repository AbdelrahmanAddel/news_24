import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customFlutterToast({
  Color? backGroundColor,
  required String message,
  Color? textColor,
  double? fontSize,
}) {
  Fluttertoast.showToast(
    msg: message,

    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 2,
    backgroundColor: backGroundColor ?? Colors.black,
    textColor: textColor ?? Colors.white,

    fontSize: fontSize ?? 14.0,
  );
}
