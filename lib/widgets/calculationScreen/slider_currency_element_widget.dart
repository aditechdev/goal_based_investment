import 'package:flutter/material.dart';
import 'package:goal_based_investment/controller/amount_selection_controller.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';

import '../../core/app_color_palater.dart';
import '../../model/currency_model.dart';
import '../../utils/font_utils.dart';
import '../commonWidget/dotted_text.dart';

class SliderCurrencyElementWidget extends StatelessWidget {
  const SliderCurrencyElementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text(
          //   AppStrings.creditAmount,
          //   style: FontUtils.font13(
          //     color: AppColorPallete.lightGrey,
          //   ),
          // ),
          StreamBuilder<CurrencyModel>(
              stream: amountSelectionController.getSelectedCurrency,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Container();
                }
                var data = snapshot.data!;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${data.currencySymbol} ",
                      style: FontUtils.font20(),
                    ),
                    DottedText(
                      widget: Text(
                        data.amountInIndianFormat,
                        style: FontUtils.font20(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                );
              }),
          const VerticalSpacing(height: 5),
          Text(
            "@10.04% monthly",
            style: FontUtils.font13(color: AppColorPallete.green),
          )
        ],
      ),
    );
  }
}
