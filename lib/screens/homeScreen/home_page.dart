import 'package:flutter/material.dart';

import '../../widgets/homeScreenWidget/goal_card_list.dart';
import '../../widgets/homeScreenWidget/investment_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Your Investment"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: GoalCardListWidget(),
            ),
            InvestmentComponent()
          ],
        ),
      ),
    );
  }
}
