import 'dart:async';
import 'package:skcl_vms/data/graphql/services/token/gql/token.graphql.dart';
import 'package:skcl_vms/data/graphql/services/token/token_service.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

class SignIn {
  static SecureStorage secureStorage = SecureStorage();

  static Future<bool> signIn(
    String idToken,
    String appName,
    String tokenProviderName,
  ) async {
    bool isSignIn = false;
    try {
      final Mutation$AccessToken$accessToken$oAuth oAuthInfo =
          await TokenService.getAccessToken(
        idToken,
        appName,
        tokenProviderName,
      );
      await TokenService.storeTokenValue(oAuthInfo);
      isSignIn = true;
      return isSignIn;
    } catch (err) {
      throw err;
    }
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
