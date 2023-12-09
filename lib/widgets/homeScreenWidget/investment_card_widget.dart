import 'package:flutter/material.dart';

class InvestmentTile extends StatelessWidget {
  const InvestmentTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text("Home Load"),
        subtitle: Text("You are 10 points away from your goal"),
      ),
    );
  }
}
