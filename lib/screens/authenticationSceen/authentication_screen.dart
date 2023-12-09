import 'package:flutter/material.dart';
import 'package:goal_based_investment/const/resource.dart';
import 'package:goal_based_investment/controller/authentication_controller.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.ASSETS_IMAGE_LOGIN_IMAGE_PNG),
            ElevatedButton(
              onPressed: () {
                authController.login(context);
              },
              child: const Text("Authenticate In One Click"),
            )
          ],
        ),
      ),
    );
  }
}
