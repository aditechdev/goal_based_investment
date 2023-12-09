import 'package:flutter/material.dart';
import 'package:goal_based_investment/controller/splash_screen_controller.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  void initState() {
    splashController.splashDelayWidget(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpacing(height: 50),
          Center(
            child: Text(
              "G\nO\nA\nL  ",
              style: TextStyle(fontSize: 90),
            ),
          ),
          Center(
            child: Text(
              "INVESTMENT",
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
