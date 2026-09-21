import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/presentation/visitor_detail/service/gql/visitor.graphql.dart';

class VisitorDetailService {
  static Future<Mutation$DeleteVisitor$deleteVisitor$source>? deleteVisitor(
    String visitorId,
  ) async {
    try {
      final QueryResult<Mutation$DeleteVisitor> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$DeleteVisitor(
        Options$Mutation$DeleteVisitor(
          variables: Variables$Mutation$DeleteVisitor(
            id: visitorId,
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$DeleteVisitor? parsedData = mutationResult.parsedData;
      final Mutation$DeleteVisitor$deleteVisitor$source?
          deleteVisitorMutationResponse = parsedData?.deleteVisitor.source;
      if (deleteVisitorMutationResponse != null) {
        return deleteVisitorMutationResponse;
      } else {
        throw new Exception('Visitor delete returns null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
