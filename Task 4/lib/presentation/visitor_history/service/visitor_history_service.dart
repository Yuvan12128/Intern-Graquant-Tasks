import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/data/graphql/utility/visitor/utility/gql_visitor_filter_utility.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

class VisitorHistoryService {
  static Future<List<Query$Visitors$visitors$values?>> getVisitors(
    VisitorFilter? visitorFilter,
    int offset,
    int first,
  ) async {
    try {
      Input$VisitorFilter inputVisitorFilter =
          GQLVisitorFilterUtility.inputVisitorFilter(visitorFilter);
      final QueryResult<Query$Visitors> queryResult =
          await GetIt.instance<GraphQLClient>().query$Visitors(
        Options$Query$Visitors(
          variables: Variables$Query$Visitors(
            filters: inputVisitorFilter,
            first: first,
            offset: offset,
            sortBy: [ApiConstant.SORT_BY_VISITING_DATE_DESCENDING],
          ),
        ),
      );
      GraphQlException.handleException(queryResult.exception);
      final Query$Visitors? parsedData = queryResult.parsedData;
      final List<Query$Visitors$visitors$values?>? visitorData =
          parsedData?.visitors.values;
      if (visitorData != null) {
        return visitorData;
      } else {
        throw new Exception('Visitors get throws null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
