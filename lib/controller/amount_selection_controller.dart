import 'package:rxdart/rxdart.dart';

import '../model/currency_model.dart';
import '../utils/currency_convertor_utils.dart';

class AmountSelectionController {
  final BehaviorSubject<CurrencyModel> _selectedCurrency =
      BehaviorSubject.seeded(
          currencyConvertorUtils.converToIndianCurrent(150000));

  updateCurrency(int currency) {
    final value = currencyConvertorUtils.converToIndianCurrent(currency);
    _selectedCurrency.add(value);
  }

  

  BehaviorSubject<CurrencyModel> get getSelectedCurrency => _selectedCurrency;
}

AmountSelectionController amountSelectionController = AmountSelectionController();
