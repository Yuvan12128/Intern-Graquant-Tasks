import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';

class AccountFloorDetail {
  final List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
      contactPersons;
  final String? accountFloorId;
  AccountFloorDetail(
    this.contactPersons,
    this.accountFloorId,
  );
}
