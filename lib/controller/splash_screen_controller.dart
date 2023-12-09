import 'dart:async';

import 'package:flutter/material.dart';
import 'package:goal_based_investment/controller/system_controller.dart';

import 'authentication_controller.dart';

class SplashController {
  final _splashDelay = 3;

  /// Navigate to Screen after 3 seconds
  splashDelayWidget(BuildContext context) async {
    systemController.disableStatusBar();
    var duration = Duration(seconds: _splashDelay);
    return Timer(duration, () {
      _navigationPage(context);
    });
  }

  void _navigationPage(BuildContext context) {
    authController.setInitialScreen(context);
    systemController.enableStatusBar();
  }
}

SplashController splashController = SplashController();
