import 'dart:async';

import "package:gql_exec/gql_exec.dart";
import "package:gql_http_link/gql_http_link.dart";
import "package:gql_link/gql_link.dart";
import 'package:skcl_vms/data/graphql/services/token/token_service.dart';

typedef _RequestTransformer = FutureOr<Request> Function(Request request);

typedef OnException = FutureOr<String> Function(
  HttpLinkServerException exception,
);

class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink() : super(requestTransformer: transform());

  static _RequestTransformer transform() => (Request request) async {
        final String? operationName = request.operation.operationName;
        String? token = await TokenService.getStoredAccessToken(operationName);
        // print("request ${request.variables}");
        // print("token ${token}");
        return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              if (token != null) 'Authorization': 'Bearer $token',
            },
          ),
        );
      };
}

class _AsyncReqTransformLink extends Link {
  final _RequestTransformer requestTransformer;

  _AsyncReqTransformLink({
    required this.requestTransformer,
  });

  @override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) async* {
    final req = await requestTransformer(request);

    yield* forward!(req);
  }
}
