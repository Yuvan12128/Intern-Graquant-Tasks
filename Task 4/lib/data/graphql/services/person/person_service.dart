import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';

class PersonService {
  static Future<Query$Me$me> me() async {
    try {
      final QueryResult<Query$Me> queryResult =
          await GetIt.instance<GraphQLClient>().query$Me();
      GraphQlException.handleException(queryResult.exception);
      final Query$Me? parsedData = queryResult.parsedData;
      final Query$Me$me? personData = parsedData?.me;
      if (personData != null) {
        return personData;
      } else {
        throw Exception('me info is empty');
      }
    } catch (err) {
      throw err;
    }
  }
}
