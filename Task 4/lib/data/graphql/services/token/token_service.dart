import 'dart:async';
import 'dart:convert';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/app/model/auth_info.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/services/token/gql/token.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';
import 'package:dart_date/dart_date.dart';
import 'package:get_it/get_it.dart';

const String fileName = 'Token_provider.dart';

class TokenService {
  static SecureStorage secureStorage = SecureStorage();

  static Future<Mutation$AccessToken$accessToken$oAuth> getAccessToken(
    String idToken,
    String appName,
    String tokenProviderName,
  ) async {
    try {
      final QueryResult<Mutation$AccessToken> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$AccessToken(
        Options$Mutation$AccessToken(
          operationName: 'AccessToken',
          variables: Variables$Mutation$AccessToken(
            payload: Input$TokenRequest(
              grantType: Enum$GrantType.AUTHORIZATION_CODE,
              appName: appName,
              oAuthProviderName: tokenProviderName,
              code: idToken,
            ),
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$AccessToken? accessTokenResponse =
          mutationResult.parsedData;
      final Mutation$AccessToken$accessToken$oAuth? oAuthInfo =
          accessTokenResponse?.accessToken?.oAuth;
      if (oAuthInfo != null) {
        return oAuthInfo;
      } else {
        throw Exception('Token value is empty');
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<String?> getStoredAccessToken(String? operationName) async {
    try {
      if (operationName == null) {
        return await getStoredTokenValue();
      } else {
        // final List<String> _authenticationNotRequiredGqlRequests = ApiConstant
        //     .AUTHENTICATION_NOT_REQUIRED_GRAPHQL_OPERATION
        //     .split(',');
        // if (_authenticationNotRequiredGqlRequests.indexOf(operationName) < 0) {
        // } else {
        //   return null;
        // }
        return null;
      }
    } catch (err) {
      Log.error(
        null,
        fileName,
        'getStoredTokenInfo',
        err,
        'getStoredTokenInfo',
        null,
        false,
        null,
        null,
      );
      return null;
    }
  }

  static Future<String?> getStoredTokenValue() async {
    try {
      String? authInfoString =
          await secureStorage.readSecureData(ApiConstant.AUTH_INFO);
      if (authInfoString != null) {
        final AuthInfo authInfo =
            AuthInfo.fromJson(json.decode(authInfoString));
        final int diff = DateTime.parse(authInfo.tokenExpiryPeriod)
            .differenceInMinutes(DateTime.now());
        if (diff < 3) {
          final AuthInfo refreshTokenResponse =
              await doRefresh(authInfo.refreshToken);
          return refreshTokenResponse.accessToken;
        } else {
          return authInfo.accessToken;
        }
      } else {
        return null;
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<AuthInfo> storeTokenValue(dynamic oAuthInfo) async {
    try {
      final AuthInfo authInfo = new AuthInfo(
        accessToken: oAuthInfo.accessToken,
        refreshToken: oAuthInfo.refreshToken ?? '',
        expiresIn: oAuthInfo.expiresIn,
        tokenExpiryPeriod:
            DateTime.now().addSeconds(oAuthInfo.expiresIn).toString(),
      );
      await secureStorage.writeSecureData(
        ApiConstant.AUTH_INFO,
        authInfo.toString(),
      );
      return authInfo;
    } catch (err) {
      throw err;
    }
  }

  static Future<AuthInfo> doRefresh(String refreshToken) async {
    try {
      final QueryResult<Mutation$RefreshToken> mutationResult =
          await GetIt.instance<GraphQLClient>().mutate$RefreshToken(
        Options$Mutation$RefreshToken(
          operationName: 'RefreshToken',
          variables: Variables$Mutation$RefreshToken(
            payload: Input$RefreshTokenRequest(
              refreshToken: refreshToken,
            ),
          ),
        ),
      );
      GraphQlException.handleException(mutationResult.exception);
      final Mutation$RefreshToken? refreshTokenResponse =
          mutationResult.parsedData;
      final Mutation$RefreshToken$refreshToken$oAuth? oAuthInfo =
          refreshTokenResponse?.refreshToken?.oAuth;
      if (oAuthInfo != null) {
        final AuthInfo authInfo = await storeTokenValue(oAuthInfo);
        return authInfo;
      } else {
        throw Exception('Refresh token value is empty');
      }
    } catch (err) {
      throw err;
    }
  }
}
