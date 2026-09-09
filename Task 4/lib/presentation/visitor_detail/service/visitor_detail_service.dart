import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/presentation/visitor_detail/service/gql/visitor.graphql.dart';

class VisitorDetailService {
  static Future<Mutation$DeleteVisitor$deleteVisitor$source>? deleteVisitor(
    String visitorId,
  ) async {
    return MockData.deleteVisitor(visitorId);
  }
}

