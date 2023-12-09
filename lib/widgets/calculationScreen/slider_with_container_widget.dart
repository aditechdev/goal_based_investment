import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/calculationScreen/radial_slider_widget.dart';

class SliderWithContainerWidget extends StatelessWidget {
  ///This widget contain white container with slider
  const SliderWithContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 1.5;
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: size,
              width: size,
              child: const RadialSlider(),
            ),
          ],
        ));
  }
}
