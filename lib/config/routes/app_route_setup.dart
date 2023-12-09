import 'package:flutter/material.dart';
import 'package:goal_based_investment/config/routes/app_routes.dart';
import 'package:goal_based_investment/screens/homeScreen/home_page.dart';
import 'package:goal_based_investment/screens/splashScreen/splash_screen.dart';

class AppRouteSetup {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.splashScreen: (context) => const SplashScreen(),
    AppRoutes.homeScreen: (context) => const HomePage(),
  };
}
