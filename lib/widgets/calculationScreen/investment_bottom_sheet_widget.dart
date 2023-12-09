import 'package:carousel_slider/carousel_slider.dart';
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select Time Interval",
                    style: FontUtils.font16(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      _investmentTime.length,
                      (index) => Chip(
                        label: (_investmentTime[index] == -1)
                            ? const Text("All")
                            : Text(
                                _investmentTime[index].toString(),
                              ),
                      ),
                    ),
                  ),
                ),
                const Text("Investment Calculation"),
              ],
            ),
          ),
          CarouselSlider(
            items: List.generate(
              10,
              (index) => Card(
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width - 30,
                  color: Colors.black,
                ),
              ),
            ),
            options: CarouselOptions(
              aspectRatio: 2.5,
              enlargeCenterPage: true,
              autoPlay: false,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              enlargeFactor: 0.4,
            ),
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

List<int> _investmentTime = [1, 2, 3, 5, 7, 10, 20, 30, 50, -1];
