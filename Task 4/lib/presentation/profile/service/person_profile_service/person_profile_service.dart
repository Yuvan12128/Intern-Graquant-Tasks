import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/presentation/profile/service/person_profile_service/gql/person_profile.graphql.dart';

class PersonProfileService {
  static Future<Mutation$ProfileUpdatePerson$updatePerson$source> updatePerson(
    String personId,
    String? firstName,
    String? lastName,
  ) async {
    try {
      final QueryResult<Mutation$ProfileUpdatePerson> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$ProfileUpdatePerson(
        Options$Mutation$ProfileUpdatePerson(
          variables: Variables$Mutation$ProfileUpdatePerson(
            id: personId,
            payload: Input$PersonRequest(
              firstName: firstName,
              lastName: lastName,
            ),
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$ProfileUpdatePerson? parsedData =
          mutationResult.parsedData;
      final Mutation$ProfileUpdatePerson$updatePerson$source? personData =
          parsedData?.updatePerson.source;
      if (personData != null) {
        return personData;
      } else {
        throw new Exception('Person update throws null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
