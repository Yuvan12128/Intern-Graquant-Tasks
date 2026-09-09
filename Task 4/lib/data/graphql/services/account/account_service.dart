import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';

class AccountService {
  static Future<List<Query$Accounts$accounts$values?>> getAccounts(
    AccountFilter? accountFilter,
    int offset,
    int first,
  ) async {
    return MockData.getAccounts(accountFilter, offset, first);
  }
}

