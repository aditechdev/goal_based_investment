import 'package:flutter/material.dart';

import '../../widgets/homeScreenWidget/goal_card_list.dart';
import '../../widgets/homeScreenWidget/investment_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose your investment"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoalCardListWidget(),
          InvestmentComponent(),
        ],
      ),
    );
  }
}
