import 'package:intl/intl.dart' as intls;

String currencyFormat(num amt) {
  return intls.NumberFormat.currency(
          decimalDigits: 2, symbol: ' \$ ', name: 'USD')
      .format(amt);
}
