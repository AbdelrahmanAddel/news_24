import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed({required String routeName, Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacement({
    required String routeName,
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushRemoveUntil({
    required String newRouteName,
    Object? arguments,
    required bool Function(Route<dynamic>) predicate,
  }) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      newRouteName,
      predicate,
      arguments: {arguments: arguments},
    );
  }

  void pop() => Navigator.pop(this);
}
