import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';
import 'package:goal_based_investment/widgets/homeScreenWidget/investment_card_list.dart';

import '../../const/resource.dart';
import '../../controller/current_investment_controller.dart';
import '../../model/investment_model.dart';

class InvestmentComponent extends StatelessWidget {
  const InvestmentComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<InvestmentModel>>(
      stream: investmentController.getInvestment,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        if (snapshot.data!.isEmpty) {
          return Column(
            children: [
              const VerticalSpacing(height: 30),
              Image.asset(R.ASSETS_IMAGE_START_GOAL_INVEST_IMG_PNG),
              ElevatedButton(
                  onPressed: () {
                    investmentController.addInvestment();
                  },
                  child: const Text("Start Investing")),
              const Text(
                "You are one step away from your Goal",
              )
            ],
          );
        }

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InvestmentListWidget(
              snapshot: snapshot,
            ),
          ),
        );
      },
    );
  }
}
