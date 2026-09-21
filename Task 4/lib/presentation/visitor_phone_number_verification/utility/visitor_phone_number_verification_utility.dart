import 'dart:math';
import 'package:http/http.dart';
import 'dart:convert';

class VisitorPhoneNumberVerification {
  static final Client client = Client();
  static int generateRandomNumber() {
    Random random = Random();
    int min = 100000;
    int max = 999999;
    int first = random.nextInt(max - min);
    int randomNumber = min + first;
    return randomNumber;
  }

  static Future<int> sendOTPMessage(String phoneNumber) async {
    try {
      final String url = 'https://api.textlocal.in/send';
      final String apiKey = 'MzU2ODMxNGY1NjcxNDU0ZjU0NmM2ZTYyMzc0MTY1NjE=';
      final String sender = 'SKCLVM';
      final String numbers = phoneNumber;
      final int otp = generateRandomNumber();
      final String message = 'Welcome to SKCL\n\nYour registration OTP is $otp. Please share this OTP to complete your registration.';
      Map<String, String> requestBody = {
        'apiKey': apiKey,
        'sender': sender,
        'numbers': numbers,
        'message': Uri.encodeComponent(message),
      };
      Response response = await client.post(Uri.parse(url), body: requestBody);
      if (response.statusCode == 200) {
        dynamic jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == 'success') {
          return otp;
        } else {
          throw new Exception(jsonResponse.toString());
        }
      } else {
        dynamic jsonResponse = json.decode(response.body);
        throw new Exception(jsonResponse.toString());
      }
    } catch (err) {
      throw err;
    }
  }
}
