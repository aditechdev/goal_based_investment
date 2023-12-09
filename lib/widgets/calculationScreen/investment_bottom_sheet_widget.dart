import 'package:flutter/material.dart';

import '../../controller/amount_selection_controller.dart';
import '../../model/currency_model.dart';
import '../../utils/font_utils.dart';
import '../commonWidget/bottom_sheet_container_widget.dart';
import '../commonWidget/vertical_spacing.dart';

class InvestmentBottomSheetWidget extends StatelessWidget {
  const InvestmentBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      widget: Column(
        children: [
          const VerticalSpacing(height: 30),
          StreamBuilder<CurrencyModel>(
              stream: amountSelectionController.getSelectedCurrency,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Text("");
                }
                return Text(
                  "Goal amount ${snapshot.data!.amountInIndianFormat},",
                  style: FontUtils.font20(color: Colors.white),
                );
              }),
          Row(
            children: List.generate(
                investmentTime.length,
                (index) => Chip(
                    label: (investmentTime[index] == -1)
                        ? const Text("All")
                        : Text(investmentTime[index].toString()))),
          ),
          const Spacer(),
          SafeArea(
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Start Investment")),
          ),
          const VerticalSpacing(height: 20)
        ],
      ),
      color: Colors.deepPurple,
    );
  }
}

List<int> investmentTime = [1, 2, 3, 5, 7, 10, -1];
