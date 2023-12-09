import 'package:flutter/material.dart';
import 'package:goal_based_investment/model/goal_card_model.dart';
import 'package:goal_based_investment/widgets/commonWidget/vertical_spacing.dart';

import '../../utils/font_utils.dart';
import '../commonWidget/dotted_text.dart';

class GoalCardWidget extends StatelessWidget {
  const GoalCardWidget({super.key, required this.goal});

  final GoalModel goal;

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
                width: 250,
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 25,
                  bottom: 14,
                  right: 14,
                ),
                decoration: BoxDecoration(
                  color: goal.color,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: goal.name,
                              style: FontUtils.font16(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
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
                            text: "Lorem Ipsum ",
                          ),
                          TextSpan(
                            text: 'Goal in ${goal.interval}',
                            style: FontUtils.font13(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' ${goal.intervalType}',
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
        ],
      ),
    );
  }
}
