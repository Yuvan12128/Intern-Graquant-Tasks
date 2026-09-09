import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/presentation/profile/service/person_profile_service/gql/person_profile.graphql.dart';

class PersonProfileService {
  static Future<Mutation$ProfileUpdatePerson$updatePerson$source> updatePerson(
    String personId,
    String? firstName,
    String? lastName,
  ) async {
    return MockData.updatePerson(personId, firstName, lastName);
  }
}

