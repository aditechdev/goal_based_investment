import 'package:goal_based_investment/model/currency_model.dart';

class InvestmentTypeModel {
  int month;
  CurrencyModel currency;

  InvestmentTypeModel({
    required this.month,
    required this.currency,
  });

  bool isRecomended() {
    return month == 9;
  }

  getColor() {
    switch (month) {
      case 12:
        return "0xff42353d";
      case 9:
        return "0xff7A738E";
      case 6:
        return "0xff5c6988";
      case 3:
        return "0xff42353d";

      default:
        "0xff42353d";
    }
  }

  getSelectedColor() {
    switch (month) {
      case 12:
        return "0xFF342930";
      case 9:
        return "0xFF6B657E";
      case 6:
        return "0xFF4E5974";
      case 3:
        return "0xFF342930";

      default:
        "0xFF342930";
    }
  }
}
