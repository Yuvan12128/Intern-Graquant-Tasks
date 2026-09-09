import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

class VisitorHistoryService {
  static Future<List<Query$Visitors$visitors$values?>> getVisitors(
    VisitorFilter? visitorFilter,
    int offset,
    int first,
  ) async {
    return MockData.getVisitors(visitorFilter, offset, first);
  }
}

