import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_investment/data/goal_data.dart';

import 'goal_card_widget.dart';

class GoalCardListWidget extends StatelessWidget {
  const GoalCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.5,
        enlargeCenterPage: true,
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeFactor: 0.4,
      ),
      items: List.generate(
        goalData.length,
        (index) {
          var goal = goalData[index];
          return GoalCardWidget(goal: goal,);
        },
      ),
    );
  }
}
