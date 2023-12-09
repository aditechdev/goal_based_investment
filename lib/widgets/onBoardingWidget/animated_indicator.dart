import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';

class AnimatedIndicator extends StatelessWidget {
  const AnimatedIndicator({
    super.key,
    
  });

 

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: onBoardingController.getCurrentPage,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        return Positioned(
          bottom: 45,
          child: AnimatedSmoothIndicator(
            effect: const WormEffect(
              activeDotColor: Colors.black,
              dotHeight: 5,
            ),
            activeIndex: snapshot.data!,
            count: 3,
          ),
        );
      },
    );
  }
}
