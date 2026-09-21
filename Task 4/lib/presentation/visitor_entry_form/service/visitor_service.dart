import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/data/graphql/utility/visitor/utility/gql_visitor_input_request_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/service/gql/visitor.graphql.dart';

class VisitorService {
  static Future<Mutation$CreateVisitor$createVisitor$source> createVisitor(
    FormGroup formGroup,
  ) async {
    try {
      final QueryResult<Mutation$CreateVisitor> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$CreateVisitor(
        Options$Mutation$CreateVisitor(
          variables: Variables$Mutation$CreateVisitor(
            payload: GQLVisitorInputUtility.inputVisitorFilter(
              formGroup,
            ),
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$CreateVisitor? parsedData = mutationResult.parsedData;
      final Mutation$CreateVisitor$createVisitor$source?
          visitorMutationResponse = parsedData?.createVisitor.source;
      if (visitorMutationResponse != null) {
        return visitorMutationResponse;
      } else {
        throw new Exception('Visitor creation returns null value');
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<Mutation$UpdateVisitor$updateVisitor$source> updateVisitor(
    FormGroup formGroup,
  ) async {
    try {
      final QueryResult<Mutation$UpdateVisitor> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$UpdateVisitor(
        Options$Mutation$UpdateVisitor(
          variables: Variables$Mutation$UpdateVisitor(
            id: formGroup.control(FieldConstant.ID).value,
            payload: GQLVisitorInputUtility.inputVisitorFilter(
              formGroup,
            ),
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$UpdateVisitor? parsedData = mutationResult.parsedData;
      final Mutation$UpdateVisitor$updateVisitor$source?
          visitorMutationResponse = parsedData?.updateVisitor.source;
      if (visitorMutationResponse != null) {
        return visitorMutationResponse;
      } else {
        throw new Exception('Visitor update returns null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
