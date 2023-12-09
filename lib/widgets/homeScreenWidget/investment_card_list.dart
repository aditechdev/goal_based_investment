// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:goal_based_investment/widgets/homeScreenWidget/investment_card_widget.dart';

import '../../model/investment_model.dart';

class InvestmentListWidget extends StatelessWidget {
  final AsyncSnapshot<List<InvestmentModel>> snapshot;

  const InvestmentListWidget({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          return const InvestmentTile();
        });
  }
}
