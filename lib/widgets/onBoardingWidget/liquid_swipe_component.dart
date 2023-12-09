import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/onBoardingWidget/on_boarding_page_component.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../controller/on_boarding_controller.dart';
import '../../data/on_boarding_data.dart';

class LiquidSwipeComponent extends StatelessWidget {
  const LiquidSwipeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      onPageChangeCallback: onBoardingController.onPageChangeCallback,
      liquidController: onBoardingController.getLiquidController,
      slideIconWidget: const Icon(Icons.arrow_back),
      enableSideReveal: true,
      pages: List.generate(
        onBoardingPageItemList.length,
        (index) {
          final pageData = onBoardingPageItemList[index];

          return OnBoardingPageComponent(
            topImage: pageData["topImage"],
            colors: pageData["colors"],
            subtitle: pageData["subtitle"],
            title: pageData["title"],
            textColor: pageData["textColor"],
          );
        },
      ),
    );
  }
}
