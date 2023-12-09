import 'package:flutter/material.dart';

import '../../widgets/homeScreenWidget/goal_card_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          GoalCardListWidget(),
        ],
      ),
    );
  }
}
