import '../../../component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$AccessToken {
  factory Variables$Mutation$AccessToken(
          {required Input$TokenRequest payload}) =>
      Variables$Mutation$AccessToken._({
        r'payload': payload,
      });

  Variables$Mutation$AccessToken._(this._$data);

  factory Variables$Mutation$AccessToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payload = data['payload'];
    result$data['payload'] =
        Input$TokenRequest.fromJson((l$payload as Map<String, dynamic>));
    return Variables$Mutation$AccessToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TokenRequest get payload => (_$data['payload'] as Input$TokenRequest);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payload = payload;
    result$data['payload'] = l$payload.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AccessToken<Variables$Mutation$AccessToken>
      get copyWith => CopyWith$Variables$Mutation$AccessToken(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AccessToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payload = payload;
    return Object.hashAll([l$payload]);
  }
}

abstract class CopyWith$Variables$Mutation$AccessToken<TRes> {
  factory CopyWith$Variables$Mutation$AccessToken(
    Variables$Mutation$AccessToken instance,
    TRes Function(Variables$Mutation$AccessToken) then,
  ) = _CopyWithImpl$Variables$Mutation$AccessToken;

  factory CopyWith$Variables$Mutation$AccessToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AccessToken;

  TRes call({Input$TokenRequest? payload});
}

class _CopyWithImpl$Variables$Mutation$AccessToken<TRes>
    implements CopyWith$Variables$Mutation$AccessToken<TRes> {
  _CopyWithImpl$Variables$Mutation$AccessToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AccessToken _instance;

  final TRes Function(Variables$Mutation$AccessToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? payload = _undefined}) =>
      _then(Variables$Mutation$AccessToken._({
        ..._instance._$data,
        if (payload != _undefined && payload != null)
          'payload': (payload as Input$TokenRequest),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AccessToken<TRes>
    implements CopyWith$Variables$Mutation$AccessToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AccessToken(this._res);

  TRes _res;

  call({Input$TokenRequest? payload}) => _res;
}

class Mutation$AccessToken {
  Mutation$AccessToken({
    this.accessToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AccessToken.fromJson(Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$$__typename = json['__typename'];
    return Mutation$AccessToken(
      accessToken: l$accessToken == null
          ? null
          : Mutation$AccessToken$accessToken.fromJson(
              (l$accessToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AccessToken$accessToken? accessToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AccessToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AccessToken on Mutation$AccessToken {
  CopyWith$Mutation$AccessToken<Mutation$AccessToken> get copyWith =>
      CopyWith$Mutation$AccessToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AccessToken<TRes> {
  factory CopyWith$Mutation$AccessToken(
    Mutation$AccessToken instance,
    TRes Function(Mutation$AccessToken) then,
  ) = _CopyWithImpl$Mutation$AccessToken;

  factory CopyWith$Mutation$AccessToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AccessToken;

  TRes call({
    Mutation$AccessToken$accessToken? accessToken,
    String? $__typename,
  });
  CopyWith$Mutation$AccessToken$accessToken<TRes> get accessToken;
}

class _CopyWithImpl$Mutation$AccessToken<TRes>
    implements CopyWith$Mutation$AccessToken<TRes> {
  _CopyWithImpl$Mutation$AccessToken(
    this._instance,
    this._then,
  );

  final Mutation$AccessToken _instance;

  final TRes Function(Mutation$AccessToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AccessToken(
        accessToken: accessToken == _undefined
            ? _instance.accessToken
            : (accessToken as Mutation$AccessToken$accessToken?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AccessToken$accessToken<TRes> get accessToken {
    final local$accessToken = _instance.accessToken;
    return local$accessToken == null
        ? CopyWith$Mutation$AccessToken$accessToken.stub(_then(_instance))
        : CopyWith$Mutation$AccessToken$accessToken(
            local$accessToken, (e) => call(accessToken: e));
  }
}

class _CopyWithStubImpl$Mutation$AccessToken<TRes>
    implements CopyWith$Mutation$AccessToken<TRes> {
  _CopyWithStubImpl$Mutation$AccessToken(this._res);

  TRes _res;

  call({
    Mutation$AccessToken$accessToken? accessToken,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AccessToken$accessToken<TRes> get accessToken =>
      CopyWith$Mutation$AccessToken$accessToken.stub(_res);
}

const documentNodeMutationAccessToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AccessToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payload')),
        type: NamedTypeNode(
          name: NameNode(value: 'TokenRequest'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'accessToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'payload'),
            value: VariableNode(name: NameNode(value: 'payload')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'oAuth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'accessToken'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refreshToken'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expiresIn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$AccessToken _parserFn$Mutation$AccessToken(
        Map<String, dynamic> data) =>
    Mutation$AccessToken.fromJson(data);
typedef OnMutationCompleted$Mutation$AccessToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AccessToken?,
);

class Options$Mutation$AccessToken
    extends graphql.MutationOptions<Mutation$AccessToken> {
  Options$Mutation$AccessToken({
    String? operationName,
    required Variables$Mutation$AccessToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AccessToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AccessToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$AccessToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$AccessToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAccessToken,
          parserFn: _parserFn$Mutation$AccessToken,
        );

  final OnMutationCompleted$Mutation$AccessToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AccessToken
    extends graphql.WatchQueryOptions<Mutation$AccessToken> {
  WatchOptions$Mutation$AccessToken({
    String? operationName,
    required Variables$Mutation$AccessToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AccessToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationAccessToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AccessToken,
        );
}

extension ClientExtension$Mutation$AccessToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AccessToken>> mutate$AccessToken(
          Options$Mutation$AccessToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AccessToken> watchMutation$AccessToken(
          WatchOptions$Mutation$AccessToken options) =>
      this.watchMutation(options);
}

class Mutation$AccessToken$accessToken {
  Mutation$AccessToken$accessToken({
    this.oAuth,
    this.$__typename = 'TokenResponse',
  });

  factory Mutation$AccessToken$accessToken.fromJson(Map<String, dynamic> json) {
    final l$oAuth = json['oAuth'];
    final l$$__typename = json['__typename'];
    return Mutation$AccessToken$accessToken(
      oAuth: l$oAuth == null
          ? null
          : Mutation$AccessToken$accessToken$oAuth.fromJson(
              (l$oAuth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AccessToken$accessToken$oAuth? oAuth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$oAuth = oAuth;
    _resultData['oAuth'] = l$oAuth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$oAuth = oAuth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$oAuth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AccessToken$accessToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oAuth = oAuth;
    final lOther$oAuth = other.oAuth;
    if (l$oAuth != lOther$oAuth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AccessToken$accessToken
    on Mutation$AccessToken$accessToken {
  CopyWith$Mutation$AccessToken$accessToken<Mutation$AccessToken$accessToken>
      get copyWith => CopyWith$Mutation$AccessToken$accessToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AccessToken$accessToken<TRes> {
  factory CopyWith$Mutation$AccessToken$accessToken(
    Mutation$AccessToken$accessToken instance,
    TRes Function(Mutation$AccessToken$accessToken) then,
  ) = _CopyWithImpl$Mutation$AccessToken$accessToken;

  factory CopyWith$Mutation$AccessToken$accessToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AccessToken$accessToken;

  TRes call({
    Mutation$AccessToken$accessToken$oAuth? oAuth,
    String? $__typename,
  });
  CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> get oAuth;
}

class _CopyWithImpl$Mutation$AccessToken$accessToken<TRes>
    implements CopyWith$Mutation$AccessToken$accessToken<TRes> {
  _CopyWithImpl$Mutation$AccessToken$accessToken(
    this._instance,
    this._then,
  );

  final Mutation$AccessToken$accessToken _instance;

  final TRes Function(Mutation$AccessToken$accessToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oAuth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AccessToken$accessToken(
        oAuth: oAuth == _undefined
            ? _instance.oAuth
            : (oAuth as Mutation$AccessToken$accessToken$oAuth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> get oAuth {
    final local$oAuth = _instance.oAuth;
    return local$oAuth == null
        ? CopyWith$Mutation$AccessToken$accessToken$oAuth.stub(_then(_instance))
        : CopyWith$Mutation$AccessToken$accessToken$oAuth(
            local$oAuth, (e) => call(oAuth: e));
  }
}

class _CopyWithStubImpl$Mutation$AccessToken$accessToken<TRes>
    implements CopyWith$Mutation$AccessToken$accessToken<TRes> {
  _CopyWithStubImpl$Mutation$AccessToken$accessToken(this._res);

  TRes _res;

  call({
    Mutation$AccessToken$accessToken$oAuth? oAuth,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> get oAuth =>
      CopyWith$Mutation$AccessToken$accessToken$oAuth.stub(_res);
}

class Mutation$AccessToken$accessToken$oAuth {
  Mutation$AccessToken$accessToken$oAuth({
    required this.accessToken,
    this.refreshToken,
    required this.expiresIn,
    this.$__typename = 'OAuthResponse',
  });

  factory Mutation$AccessToken$accessToken$oAuth.fromJson(
      Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$expiresIn = json['expiresIn'];
    final l$$__typename = json['__typename'];
    return Mutation$AccessToken$accessToken$oAuth(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String?),
      expiresIn: (l$expiresIn as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String? refreshToken;

  final int expiresIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$expiresIn = expiresIn;
    _resultData['expiresIn'] = l$expiresIn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$expiresIn = expiresIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$expiresIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AccessToken$accessToken$oAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$expiresIn = expiresIn;
    final lOther$expiresIn = other.expiresIn;
    if (l$expiresIn != lOther$expiresIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AccessToken$accessToken$oAuth
    on Mutation$AccessToken$accessToken$oAuth {
  CopyWith$Mutation$AccessToken$accessToken$oAuth<
          Mutation$AccessToken$accessToken$oAuth>
      get copyWith => CopyWith$Mutation$AccessToken$accessToken$oAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> {
  factory CopyWith$Mutation$AccessToken$accessToken$oAuth(
    Mutation$AccessToken$accessToken$oAuth instance,
    TRes Function(Mutation$AccessToken$accessToken$oAuth) then,
  ) = _CopyWithImpl$Mutation$AccessToken$accessToken$oAuth;

  factory CopyWith$Mutation$AccessToken$accessToken$oAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AccessToken$accessToken$oAuth;

  TRes call({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AccessToken$accessToken$oAuth<TRes>
    implements CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> {
  _CopyWithImpl$Mutation$AccessToken$accessToken$oAuth(
    this._instance,
    this._then,
  );

  final Mutation$AccessToken$accessToken$oAuth _instance;

  final TRes Function(Mutation$AccessToken$accessToken$oAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? expiresIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AccessToken$accessToken$oAuth(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined
            ? _instance.refreshToken
            : (refreshToken as String?),
        expiresIn: expiresIn == _undefined || expiresIn == null
            ? _instance.expiresIn
            : (expiresIn as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AccessToken$accessToken$oAuth<TRes>
    implements CopyWith$Mutation$AccessToken$accessToken$oAuth<TRes> {
  _CopyWithStubImpl$Mutation$AccessToken$accessToken$oAuth(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RefreshToken {
  factory Variables$Mutation$RefreshToken(
          {required Input$RefreshTokenRequest payload}) =>
      Variables$Mutation$RefreshToken._({
        r'payload': payload,
      });

  Variables$Mutation$RefreshToken._(this._$data);

  factory Variables$Mutation$RefreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payload = data['payload'];
    result$data['payload'] =
        Input$RefreshTokenRequest.fromJson((l$payload as Map<String, dynamic>));
    return Variables$Mutation$RefreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RefreshTokenRequest get payload =>
      (_$data['payload'] as Input$RefreshTokenRequest);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payload = payload;
    result$data['payload'] = l$payload.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RefreshToken<Variables$Mutation$RefreshToken>
      get copyWith => CopyWith$Variables$Mutation$RefreshToken(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RefreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payload = payload;
    return Object.hashAll([l$payload]);
  }
}

abstract class CopyWith$Variables$Mutation$RefreshToken<TRes> {
  factory CopyWith$Variables$Mutation$RefreshToken(
    Variables$Mutation$RefreshToken instance,
    TRes Function(Variables$Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Variables$Mutation$RefreshToken;

  factory CopyWith$Variables$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RefreshToken;

  TRes call({Input$RefreshTokenRequest? payload});
}

class _CopyWithImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Variables$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RefreshToken _instance;

  final TRes Function(Variables$Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? payload = _undefined}) =>
      _then(Variables$Mutation$RefreshToken._({
        ..._instance._$data,
        if (payload != _undefined && payload != null)
          'payload': (payload as Input$RefreshTokenRequest),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RefreshToken(this._res);

  TRes _res;

  call({Input$RefreshTokenRequest? payload}) => _res;
}

class Mutation$RefreshToken {
  Mutation$RefreshToken({
    this.refreshToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RefreshToken.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken(
      refreshToken: l$refreshToken == null
          ? null
          : Mutation$RefreshToken$refreshToken.fromJson(
              (l$refreshToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RefreshToken$refreshToken? refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken on Mutation$RefreshToken {
  CopyWith$Mutation$RefreshToken<Mutation$RefreshToken> get copyWith =>
      CopyWith$Mutation$RefreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RefreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken(
    Mutation$RefreshToken instance,
    TRes Function(Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken;

  factory CopyWith$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken;

  TRes call({
    Mutation$RefreshToken$refreshToken? refreshToken,
    String? $__typename,
  });
  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken;
}

class _CopyWithImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken _instance;

  final TRes Function(Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken(
        refreshToken: refreshToken == _undefined
            ? _instance.refreshToken
            : (refreshToken as Mutation$RefreshToken$refreshToken?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return local$refreshToken == null
        ? CopyWith$Mutation$RefreshToken$refreshToken.stub(_then(_instance))
        : CopyWith$Mutation$RefreshToken$refreshToken(
            local$refreshToken, (e) => call(refreshToken: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken(this._res);

  TRes _res;

  call({
    Mutation$RefreshToken$refreshToken? refreshToken,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken =>
      CopyWith$Mutation$RefreshToken$refreshToken.stub(_res);
}

const documentNodeMutationRefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RefreshToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payload')),
        type: NamedTypeNode(
          name: NameNode(value: 'RefreshTokenRequest'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'refreshToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'payload'),
            value: VariableNode(name: NameNode(value: 'payload')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'oAuth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'accessToken'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refreshToken'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expiresIn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$RefreshToken _parserFn$Mutation$RefreshToken(
        Map<String, dynamic> data) =>
    Mutation$RefreshToken.fromJson(data);
typedef OnMutationCompleted$Mutation$RefreshToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RefreshToken?,
);

class Options$Mutation$RefreshToken
    extends graphql.MutationOptions<Mutation$RefreshToken> {
  Options$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RefreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshToken,
          parserFn: _parserFn$Mutation$RefreshToken,
        );

  final OnMutationCompleted$Mutation$RefreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RefreshToken
    extends graphql.WatchQueryOptions<Mutation$RefreshToken> {
  WatchOptions$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationRefreshToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RefreshToken,
        );
}

extension ClientExtension$Mutation$RefreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RefreshToken>> mutate$RefreshToken(
          Options$Mutation$RefreshToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RefreshToken> watchMutation$RefreshToken(
          WatchOptions$Mutation$RefreshToken options) =>
      this.watchMutation(options);
}

class Mutation$RefreshToken$refreshToken {
  Mutation$RefreshToken$refreshToken({
    this.oAuth,
    this.$__typename = 'TokenResponse',
  });

  factory Mutation$RefreshToken$refreshToken.fromJson(
      Map<String, dynamic> json) {
    final l$oAuth = json['oAuth'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken$refreshToken(
      oAuth: l$oAuth == null
          ? null
          : Mutation$RefreshToken$refreshToken$oAuth.fromJson(
              (l$oAuth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RefreshToken$refreshToken$oAuth? oAuth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$oAuth = oAuth;
    _resultData['oAuth'] = l$oAuth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$oAuth = oAuth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$oAuth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken$refreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oAuth = oAuth;
    final lOther$oAuth = other.oAuth;
    if (l$oAuth != lOther$oAuth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken$refreshToken
    on Mutation$RefreshToken$refreshToken {
  CopyWith$Mutation$RefreshToken$refreshToken<
          Mutation$RefreshToken$refreshToken>
      get copyWith => CopyWith$Mutation$RefreshToken$refreshToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken$refreshToken(
    Mutation$RefreshToken$refreshToken instance,
    TRes Function(Mutation$RefreshToken$refreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken$refreshToken;

  factory CopyWith$Mutation$RefreshToken$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken$refreshToken;

  TRes call({
    Mutation$RefreshToken$refreshToken$oAuth? oAuth,
    String? $__typename,
  });
  CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> get oAuth;
}

class _CopyWithImpl$Mutation$RefreshToken$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken$refreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken$refreshToken _instance;

  final TRes Function(Mutation$RefreshToken$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oAuth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken$refreshToken(
        oAuth: oAuth == _undefined
            ? _instance.oAuth
            : (oAuth as Mutation$RefreshToken$refreshToken$oAuth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> get oAuth {
    final local$oAuth = _instance.oAuth;
    return local$oAuth == null
        ? CopyWith$Mutation$RefreshToken$refreshToken$oAuth.stub(
            _then(_instance))
        : CopyWith$Mutation$RefreshToken$refreshToken$oAuth(
            local$oAuth, (e) => call(oAuth: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshToken$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken$refreshToken(this._res);

  TRes _res;

  call({
    Mutation$RefreshToken$refreshToken$oAuth? oAuth,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> get oAuth =>
      CopyWith$Mutation$RefreshToken$refreshToken$oAuth.stub(_res);
}

class Mutation$RefreshToken$refreshToken$oAuth {
  Mutation$RefreshToken$refreshToken$oAuth({
    required this.accessToken,
    this.refreshToken,
    required this.expiresIn,
    this.$__typename = 'OAuthResponse',
  });

  factory Mutation$RefreshToken$refreshToken$oAuth.fromJson(
      Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$expiresIn = json['expiresIn'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken$refreshToken$oAuth(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String?),
      expiresIn: (l$expiresIn as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String? refreshToken;

  final int expiresIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$expiresIn = expiresIn;
    _resultData['expiresIn'] = l$expiresIn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$expiresIn = expiresIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$expiresIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken$refreshToken$oAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$expiresIn = expiresIn;
    final lOther$expiresIn = other.expiresIn;
    if (l$expiresIn != lOther$expiresIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken$refreshToken$oAuth
    on Mutation$RefreshToken$refreshToken$oAuth {
  CopyWith$Mutation$RefreshToken$refreshToken$oAuth<
          Mutation$RefreshToken$refreshToken$oAuth>
      get copyWith => CopyWith$Mutation$RefreshToken$refreshToken$oAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> {
  factory CopyWith$Mutation$RefreshToken$refreshToken$oAuth(
    Mutation$RefreshToken$refreshToken$oAuth instance,
    TRes Function(Mutation$RefreshToken$refreshToken$oAuth) then,
  ) = _CopyWithImpl$Mutation$RefreshToken$refreshToken$oAuth;

  factory CopyWith$Mutation$RefreshToken$refreshToken$oAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken$refreshToken$oAuth;

  TRes call({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RefreshToken$refreshToken$oAuth<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> {
  _CopyWithImpl$Mutation$RefreshToken$refreshToken$oAuth(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken$refreshToken$oAuth _instance;

  final TRes Function(Mutation$RefreshToken$refreshToken$oAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? expiresIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken$refreshToken$oAuth(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined
            ? _instance.refreshToken
            : (refreshToken as String?),
        expiresIn: expiresIn == _undefined || expiresIn == null
            ? _instance.expiresIn
            : (expiresIn as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RefreshToken$refreshToken$oAuth<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken$oAuth<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken$refreshToken$oAuth(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
    String? $__typename,
  }) =>
      _res;
}
