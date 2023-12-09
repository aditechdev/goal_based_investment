import 'package:flutter/material.dart';
import 'package:goal_based_investment/config/routes/app_routes.dart';

class AuthController {
  setInitialScreen(BuildContext context) {
    final isAuthenticatted = isAuthenticated();
    isAuthenticatted
        ? Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.homeScreen, (route) => false)
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

    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.homeScreen, (route) => false);
  }

  Future<void> logOut() async {
    // TOdo : User Logout
  }

  bool isAuthenticated() {
    // TOdo : IsAuthenticated

    return false;
  }
}

AuthController authController = AuthController();
