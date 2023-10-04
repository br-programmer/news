import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NavigatorX on BuildContext {
  void popUntil() {
    while (canPop()) {
      pop();
    }
  }
}
