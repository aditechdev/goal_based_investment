// import 'dart:core';

import 'package:rxdart/rxdart.dart';

import '../model/investment_model.dart';

class InvestmentController {
  final BehaviorSubject<List<InvestmentModel>> _investmentList =
      BehaviorSubject.seeded([]);

  addInvestment() {
    _investmentList.add(_list);
  }

  BehaviorSubject<List<InvestmentModel>> get getInvestment => _investmentList;
}

InvestmentController investmentController = InvestmentController();

List<InvestmentModel> _list = [
  InvestmentModel(
      amount: "5000",
      time: "1.2 Year",
      xirr: "11",
      roi: "15%",
      finalAmount: "60000"),
  InvestmentModel(
      amount: "5000",
      time: "1.2 Year",
      xirr: "11",
      roi: "15%",
      finalAmount: "60000"),
  InvestmentModel(
      amount: "5000",
      time: "1.2 Year",
      xirr: "11",
      roi: "15%",
      finalAmount: "60000"),
  InvestmentModel(
      amount: "5000",
      time: "1.2 Year",
      xirr: "11",
      roi: "15%",
      finalAmount: "60000")
];
