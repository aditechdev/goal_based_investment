import 'package:flutter/material.dart';
import 'package:goal_based_investment/config/routes/app_route_setup.dart';
import 'package:goal_based_investment/config/routes/app_routes.dart';
import 'package:goal_based_investment/config/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeSetup.currentAppTheme(),
      initialRoute: AppRoutes.splashScreen,
      routes: AppRouteSetup.routes,
    );
  }
}
