import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class DFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mmm-yyyy').format(date);
  }

  static String formatCurrency(double? amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹⟩').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //Assuming 10 digit phone number
    if (phoneNumber.length == 10) {
      var formatter = NumberFormat('###-###-###', 'en_IN');
      return formatter.format(int.parse(phoneNumber));
    }
    return phoneNumber;
  }

  Future<String> formatInternationPhoneNumber(
      String phoneNumber, String isoCode) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, isoCode);
    return number.phoneNumber ?? '';
  }
}
