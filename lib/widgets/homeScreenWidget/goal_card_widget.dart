import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

import '../../utils/font_utils.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              const VerticalSpacing(height: 20),
              Container(
                // height: 90,
                width: 150,
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 25,
                  bottom: 14,
                  right: 14,
                ),
                // margin: ,1

                decoration: const BoxDecoration(
                  color: Colors.red,
                  // color: Color(int.parse(emiData.getColor())),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // CustomBigRadioButtomWidget(
                    //   topPadding: 5,
                    //   isSelected: isSelected,
                    //   selectedBoxColor:
                    //       Color(int.parse(emiData.getSelectedColor())),
                    //   unselectedBoxColor: Color(int.parse(emiData.getColor())),
                    // ),
                    // const VerticalSpace(height: 10),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              // text: emiData
                              //     .currency.currencyInIndianFormatWithSymbol,
                              style: FontUtils.font16(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: ' /mo',
                            style: FontUtils.font14(
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpacing(height: 3),
                    RichText(
                      text: TextSpan(
                        style: FontUtils.font13(
                          color: Colors.white.withOpacity(0.6),
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text: "for ",
                          ),
                          TextSpan(
                            text: 'emiData.month',
                            style: FontUtils.font13(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: ' months',
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpacing(height: 20),

                    DottedText(
                      dottedBodderColor: Colors.white.withOpacity(0.5),
                      widget: Text(
                        "SEE CALCULATION",
                        style: FontUtils.font14(
                            color: Colors.white.withOpacity(0.5)),
                      ),
                    )
                    // const
                  ],
                ),
              ),
            ],
          ),
          if (true)
            const Positioned(
              top: 10,
              left: 23,
              right: 23,
              child: RecomendedLabelWidget(),
            )
        ],
      ),
    );
  }
}

class RecomendedLabelWidget extends StatelessWidget {
  const RecomendedLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Center(
        child: Text(
          "recommended",
          style: FontUtils.font12(),
        ),
      ),
    );
  }
}

class DottedText extends StatelessWidget {
  final Text widget;
  final Color dottedBodderColor;
  final double strokeWidth;
  const DottedText({
    super.key,
    required this.widget,
    this.dottedBodderColor = Colors.black,
    this.strokeWidth = 0.6,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 2,
        decoration: DottedDecoration(
            linePosition: LinePosition.bottom,
            color: dottedBodderColor,
            strokeWidth: strokeWidth,
            shape: Shape.line),
        child: widget);
  }
}
