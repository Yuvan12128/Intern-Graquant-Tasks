import 'dart:async';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

class SignIn {
  static SecureStorage secureStorage = SecureStorage();

  static Future<bool> signIn(
    String idToken,
    String appName,
    String tokenProviderName,
  ) async {
    return true;
  }

  // static Future<bool> writePersonIdOnLocalStorage() async {
  //   try {
  //     bool isProfileUpdated = false;
  //     final Query$Me$me meInfo = await PersonService.me();
  //     await secureStorage.writeSecureData(
  //         FieldConstant.PERSON_ID, meInfo.person?.id ?? '');
  //     isProfileUpdated = true;
  //     return isProfileUpdated;
  //   } catch (err) {
  //     throw err;
  //   }
  // }
}
