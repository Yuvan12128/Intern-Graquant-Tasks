import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/service/gql/visitor.graphql.dart';

class VisitorService {
  static Future<Mutation$CreateVisitor$createVisitor$source> createVisitor(
    FormGroup formGroup,
  ) async {
    return MockData.createVisitor(formGroup);
  }

  static Future<Mutation$UpdateVisitor$updateVisitor$source> updateVisitor(
    FormGroup formGroup,
  ) async {
    return MockData.updateVisitor(formGroup);
  }
}

