import 'package:flutter/material.dart';
import 'package:goal_based_investment/config/routes/app_routes.dart';

class AuthController {
  setInitialScreen(BuildContext context) {
    final isAuthenticatted = isAuthenticated();
    isAuthenticatted
        ? navigateToHomeScreen(context)
        : Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.onBoardingScreen, (route) => false);
  }

  Future<void> createUser() async {
    print("User Created SuccessFully");
    // TOdo : User Login
  }

  Future<void> login(BuildContext context) async {
    print("User login");
    // TOdo : User Login

    navigateToHomeScreen(context);
  }

  void navigateToHomeScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.homeScreen, (route) => false);
  }

  void navigateToAuthenticationScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.authenticationScreen, (route) => false);
  }

  Future<void> logOut(BuildContext context) async {
    // TOdo : User Logout
    navigateToAuthenticationScreen(context);
  }

  bool isAuthenticated() {
    // TOdo : IsAuthenticated

    return false;
  }
}

AuthController authController = AuthController();
