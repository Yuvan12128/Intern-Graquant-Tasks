import 'package:graphql/client.dart';

class GraphQlException {
  static void handleException(OperationException? operationException) {
    try {
      if (operationException != null) {
        if (operationException.graphqlErrors.length > 0) {
          throw Exception(operationException.graphqlErrors);
        }

        if (operationException.linkException != null) {
          final dynamic error =
              operationException.linkException?.originalException;
          if (error != null) {
            handleCustomLinkException(
              error,
              operationException,
            );
          } else {
            throw Exception(operationException.linkException);
          }
        }
      }
    } catch (err) {
      throw err;
    }
  }

  static void handleCustomLinkException(
    dynamic error,
    dynamic linkException,
  ) {
    try {
      final List<Map<String, dynamic>> messages = [];
      error?.errors?.forEach(
        (item) {
          final dynamic extensions = item?.extensions;
          final Map<String, dynamic> errorMap = {
            'errorCode': extensions?['errorCode'],
            'transactionResponce': extensions['transaction'],
          };
          messages.add(errorMap);
        },
      );
      if (messages.length == 1) {
        throw Exception(linkException.linkException);
      } else {
        throw Exception(linkException.linkException);
      }
    } catch (err) {
      throw err;
    }
  }
}
