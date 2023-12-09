import 'package:flutter/material.dart';

import 'goal_card_widget.dart';

class GoalCardListWidget extends StatelessWidget {
  const GoalCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        10,
        (index) => const GoalCardWidget(),
      ),
    );
  }
}
