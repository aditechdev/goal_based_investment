import 'package:flutter/material.dart';
import 'package:goal_based_investment/controller/goal_controller.dart';
import 'package:goal_based_investment/model/goal_card_model.dart';

import '../../widgets/calculationScreen/slider_with_container_widget.dart';
import '../../widgets/commonWidget/button_widget.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<GoalModel>(
          stream: goalController.getSelectedGoal,
          builder: (context, snapshot) {
            return Text(
              snapshot.hasData ? "${snapshot.data!.name} Investment" : "",
            );
          },
        ),
      ),
      body: const Column(
        children: [
          SliderWithContainerWidget(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: BottomCurvedButton(onTap: () {}, btnText: "Start Investment",),
      ),
    );
  }
}
