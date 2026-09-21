class DateFilterUtility {
  static String? startDateValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Field is empty';
      }
    }
    return null;
  }

  static String? endDateValidation(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Field is empty';
      }
    }
    return null;
  }
}
