import 'package:flutter/material.dart';

class CustomCircleProgressInicator extends StatelessWidget {
  const CustomCircleProgressInicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(color: Colors.white, strokeWidth: 2);
  }
}
