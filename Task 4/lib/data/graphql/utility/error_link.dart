import 'dart:convert';
import "package:gql_exec/gql_exec.dart";
import "package:gql_link/gql_link.dart";
import 'package:skcl_vms/app/model/auth_info.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/graphql/services/token/token_service.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

const String fileName = 'retry_link.dart';

class AuthToken extends ContextEntry {
  final String? token;
  const AuthToken({this.token});
  @override
  List<Object> get fieldsForEquality => [];
}

bool _hasUnAuthorizedError(Response response) {
  try {
    return response.errors != null &&
        response.errors!
                .where((GraphQLError error) =>
                    error.extensions != null &&
                    error.extensions?['code'] != null &&
                    error.extensions?['code'] == 'UNAUTHORIZED_ERROR')
                .toList()
                .length !=
            0;
  } catch (err) {
    throw err;
  }
}

Future<String> refreshCurrentToken() async {
  final String? authInfoString =
      await SecureStorage().readSecureData(ApiConstant.AUTH_INFO);
  if (authInfoString != null) {
    final AuthInfo authInfo = AuthInfo.fromJson(json.decode(authInfoString));
    final AuthInfo refreshTokenResponse =
        await TokenService.doRefresh(authInfo.refreshToken);
    final String? _accessToken = refreshTokenResponse.accessToken;
    final String? _refreshToken = refreshTokenResponse.refreshToken;
    if (_accessToken != null && _refreshToken != null) {
      return _accessToken;
    } else {
      throw Exception('Access token is empty on refresh token');
    }
  } else {
    throw Exception('Auth info value is missing in storage');
  }
}

Stream<Response> onGraphQLError(
  Request request,
  NextLink forward,
  Response response,
) async* {
  try {
    final String? operationName = request.operation.operationName;
    if (operationName == null) {
      if (_hasUnAuthorizedError(response)) {
        await refreshCurrentToken();
        yield* forward(request);
        return;
      }
    }
    throw response;
  } catch (err) {
    throw err;
  }
}

Stream<Response> onGraphQLException(
  Request request,
  NextLink forward,
  LinkException exception,
) async* {
  try {
    // final String? operationName = request.operation.operationName;
    // if (_hasUnAuthorizedError(exception.originalException)) {
    //   await refreshCurrentToken();
    //   // final String accessToken = await getNewAccessToken();
    //   // final updatedRequest = request.withContextEntry(
    //   //   AuthToken(token: accessToken),
    //   // );
    //   yield* forward(request);
    //   return;
    // }
    throw exception;
  } catch (err) {
    throw err;
  }
}
