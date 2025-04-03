import 'package:flutter/material.dart';

class CustomMatrialButton extends StatelessWidget {
  const CustomMatrialButton({
    super.key,
    this.width,
    this.height,
    required this.child,
    this.onPressed,
    this.color,
  });
  final double? width;
  final double? height;
  final Widget? child;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      minWidth: width ?? 150,
      height: height ?? 40,
      color: color ?? Colors.black,
      onPressed: onPressed,
      child: child,
    );
  }
}
