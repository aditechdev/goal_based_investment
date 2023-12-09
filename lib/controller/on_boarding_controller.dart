import 'package:flutter/material.dart';
import 'package:goal_based_investment/config/routes/app_routes.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:rxdart/rxdart.dart';

class OnBoardingController {
  //# Initialise
  final _controller = LiquidController();

  //# BehaviorSubject [Multiple Subscription Stream]
  final BehaviorSubject<int> _currentPage = BehaviorSubject.seeded(0);

  onPageChangeCallback(int activeCurrentPage) {
    _currentPage.add(activeCurrentPage);
  }

  skipToLastPage(BuildContext context) {
    if (_currentPage.stream.value == 2) {
      _navigateToAuthenticationScreen(context);
    } else {
      onPageChangeCallback(2);
      _controller.jumpToPage(page: 2);
    }
  }

  _navigateToAuthenticationScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.authenticationScreen, (route) => false);
  }

  animateToNextSlide(BuildContext context) {
    if (_currentPage.stream.value == 2) {
      _navigateToAuthenticationScreen(context);
    } else {
      int nextPage = _controller.currentPage + 1;
      _controller.animateToPage(page: nextPage);
    }
  }

  //# Getter
  BehaviorSubject<int> get getCurrentPage => _currentPage;
  LiquidController get getLiquidController => _controller;
}
