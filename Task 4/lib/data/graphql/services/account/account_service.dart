import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/account/gql_account_filter_utility.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';

class AccountService {
  static Future<List<Query$Accounts$accounts$values?>> getAccounts(
    AccountFilter? accountFilter,
    int offset,
    int first,
  ) async {
    try {
      Input$AccountFilter inputAccountFilter =
          GQLAccountsFilterUtility.inputAccountsFilter(accountFilter);
      final QueryResult<Query$Accounts> queryResult =
          await GetIt.instance<GraphQLClient>().query$Accounts(
        Options$Query$Accounts(
          variables: Variables$Query$Accounts(
            filters: inputAccountFilter,
            offset: offset,
            first: first,
            sortBy: [ApiConstant.SORT_BY_UPDATED_DATE_DESCENDING],
          ),
        ),
      );
      GraphQlException.handleException(queryResult.exception);
      final Query$Accounts? parsedData = queryResult.parsedData;
      final List<Query$Accounts$accounts$values?>? accountsData =
          parsedData?.accounts.values;
      if (accountsData != null) {
        return accountsData;
      } else {
        throw new Exception('Accounts get throws null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
