import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

class PersonInfo {
  static Future<String> getUserPersonId() async {
    try {
      String? personId =
          await SecureStorage().readSecureData(FieldConstant.PERSON_ID);
      if (personId != null) {
        return personId;
      } else {
        throw Exception('Person id is empty');
      }
    } catch (err) {
      throw err;
    }
  }

  static String personNameBuilder(
    String? firstName,
    String? lastName,
  ) {
    try {
      String visitorFullName = '';
      if (firstName != null) {
        visitorFullName += firstName.toLowerCase().capitalizeFirstofEach;
      }
      if (lastName != null) {
        visitorFullName += firstName != null
            ? " ${lastName.toLowerCase().capitalizeFirstofEach}"
            : lastName.toLowerCase().capitalizeFirstofEach;
      }
      return visitorFullName;
    } catch (err) {
      throw err;
    }
  }
}
