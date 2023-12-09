import 'package:flutter/material.dart';

import '../config/routes/app_route_setup.dart';
import '../config/routes/app_routes.dart';
import '../config/themes/app_theme.dart';

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
