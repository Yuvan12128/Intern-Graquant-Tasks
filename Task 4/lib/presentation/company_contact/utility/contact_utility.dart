import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';

const String fileName = 'floor_contact.utility.contact_utility.dart';

class ContactUtility {
  static List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
      getContactList(
    String floorNo,
    Map<int, AccountFloorDetail>? floorNameMap,
  ) {
    List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
        contactPersonList;
    if (floorNameMap != null) {
      contactPersonList = floorNameMap[int.parse(floorNo)]?.contactPersons;
    }
    return contactPersonList;
  }
}
