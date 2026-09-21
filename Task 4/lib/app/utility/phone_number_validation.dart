import 'package:skcl_vms/app/constant/regex_pattern.dart';

class PhoneNumberValidationUtility {
  static String? phoneNumberValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Phone number is empty';
      } else if (value.length < 10) {
        return 'Please enter 10 digit phone number';
      } else if (!phoneNumberPattern.hasMatch(value)) {
        return "Please Enter valid phone number";
      }
    }
    return null;
  }
}
