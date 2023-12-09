import 'package:flutter/material.dart';
import '../../controller/on_boarding_controller.dart';
import '../../widgets/onBoardingWidget/animated_indicator.dart';
import '../../widgets/onBoardingWidget/forward_button_widget.dart';
import '../../widgets/onBoardingWidget/liquid_swipe_component.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const LiquidSwipeComponent(),
          Positioned(
            bottom: 70,
            child: ForwardButtonComponent(
              onPressed: () => onBoardingController.animateToNextSlide(context),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
                onPressed: () => onBoardingController.skipToLastPage(context),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ),
          const AnimatedIndicator()
        ],
      ),
    );
  }
}
