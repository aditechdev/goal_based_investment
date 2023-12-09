import 'package:intl/intl.dart';

import '../model/currency_model.dart';

class CurrencyConvertorUtils {
  CurrencyModel converToIndianCurrent(int currency) {
    final indianCurrencyFormatter =
        NumberFormat.currency(locale: 'en_IN', symbol: '\u{20B9}');

    final formattedCurrency = indianCurrencyFormatter.format(currency);
    final currencySymbol = formattedCurrency[0];
    final amountInIndianFormat =
        formattedCurrency.substring(1, formattedCurrency.length - 3);

    return CurrencyModel(
        currencyInInt: currency,
        amountInIndianFormat: amountInIndianFormat,
        currencyInIndianFormatWithSymbol: formattedCurrency,
        currencySymbol: currencySymbol);
  }
}

CurrencyConvertorUtils currencyConvertorUtils = CurrencyConvertorUtils();
