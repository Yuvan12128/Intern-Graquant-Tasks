class ProfileInitialUtility {
  static void nameChangedFun(String? value) {}
  static void surnameChangedFun(String? value) {}
  static void emailAddressChangedFun(String? value) {}
  static void mobileNumberChangesFun(String? value) {}

  static String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return 'FirstName is empty';
    } else {
      return null;
    }
  }

  static String? surnameValidation(String? value) {
    if (value!.isEmpty) {
      return 'LatName is empty';
    } else {
      return null;
    }
  }

  static String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return 'Email is empty';
    } else {
      return null;
    }
  }

  static String? mobileNumberValidation(String? value) {
    if (value!.isEmpty) {
      return 'Email is empty';
    } else {
      return null;
    }
  }
}
