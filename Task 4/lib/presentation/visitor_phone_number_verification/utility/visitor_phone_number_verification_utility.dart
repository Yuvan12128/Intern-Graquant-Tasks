import 'dart:math';

class VisitorPhoneNumberVerification {
  static int generateRandomNumber() {
    Random random = Random();
    int min = 100000;
    int max = 999999;
    int first = random.nextInt(max - min);
    int randomNumber = min + first;
    return randomNumber;
  }

  static Future<int> sendOTPMessage(String phoneNumber) async {
    final int otp = 123456;
    return otp;
  }
}
