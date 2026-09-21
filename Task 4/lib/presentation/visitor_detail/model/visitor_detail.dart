import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

class VisitorDetail {
  Query$Visitors$visitors$values? visitoryHistory;
  VisitorDetail({
    required this.visitoryHistory,
  });
}
