import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';

class PersonService {
  static Future<Query$Me$me> me() async {
    return MockData.getMe();
  }
}

