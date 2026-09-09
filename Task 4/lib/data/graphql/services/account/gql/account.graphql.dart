import '../../../component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Accounts {
  factory Variables$Query$Accounts({
    Input$AccountFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
  }) =>
      Variables$Query$Accounts._({
        if (filters != null) r'filters': filters,
        if (offset != null) r'offset': offset,
        if (first != null) r'first': first,
        if (sortBy != null) r'sortBy': sortBy,
      });

  Variables$Query$Accounts._(this._$data);

  factory Variables$Query$Accounts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = l$filters == null
          ? null
          : Input$AccountFilter.fromJson((l$filters as Map<String, dynamic>));
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('sortBy')) {
      final l$sortBy = data['sortBy'];
      result$data['sortBy'] =
          (l$sortBy as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Variables$Query$Accounts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountFilter? get filters =>
      (_$data['filters'] as Input$AccountFilter?);
  int? get offset => (_$data['offset'] as int?);
  int? get first => (_$data['first'] as int?);
  List<String?>? get sortBy => (_$data['sortBy'] as List<String?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filters')) {
      final l$filters = filters;
      result$data['filters'] = l$filters?.toJson();
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('sortBy')) {
      final l$sortBy = sortBy;
      result$data['sortBy'] = l$sortBy?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Accounts<Variables$Query$Accounts> get copyWith =>
      CopyWith$Variables$Query$Accounts(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Accounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (_$data.containsKey('filters') != other._$data.containsKey('filters')) {
      return false;
    }
    if (l$filters != lOther$filters) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$sortBy = sortBy;
    final lOther$sortBy = other.sortBy;
    if (_$data.containsKey('sortBy') != other._$data.containsKey('sortBy')) {
      return false;
    }
    if (l$sortBy != null && lOther$sortBy != null) {
      if (l$sortBy.length != lOther$sortBy.length) {
        return false;
      }
      for (int i = 0; i < l$sortBy.length; i++) {
        final l$sortBy$entry = l$sortBy[i];
        final lOther$sortBy$entry = lOther$sortBy[i];
        if (l$sortBy$entry != lOther$sortBy$entry) {
          return false;
        }
      }
    } else if (l$sortBy != lOther$sortBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filters = filters;
    final l$offset = offset;
    final l$first = first;
    final l$sortBy = sortBy;
    return Object.hashAll([
      _$data.containsKey('filters') ? l$filters : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('sortBy')
          ? l$sortBy == null
              ? null
              : Object.hashAll(l$sortBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Accounts<TRes> {
  factory CopyWith$Variables$Query$Accounts(
    Variables$Query$Accounts instance,
    TRes Function(Variables$Query$Accounts) then,
  ) = _CopyWithImpl$Variables$Query$Accounts;

  factory CopyWith$Variables$Query$Accounts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Accounts;

  TRes call({
    Input$AccountFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
  });
}

class _CopyWithImpl$Variables$Query$Accounts<TRes>
    implements CopyWith$Variables$Query$Accounts<TRes> {
  _CopyWithImpl$Variables$Query$Accounts(
    this._instance,
    this._then,
  );

  final Variables$Query$Accounts _instance;

  final TRes Function(Variables$Query$Accounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filters = _undefined,
    Object? offset = _undefined,
    Object? first = _undefined,
    Object? sortBy = _undefined,
  }) =>
      _then(Variables$Query$Accounts._({
        ..._instance._$data,
        if (filters != _undefined) 'filters': (filters as Input$AccountFilter?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (first != _undefined) 'first': (first as int?),
        if (sortBy != _undefined) 'sortBy': (sortBy as List<String?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Accounts<TRes>
    implements CopyWith$Variables$Query$Accounts<TRes> {
  _CopyWithStubImpl$Variables$Query$Accounts(this._res);

  TRes _res;

  call({
    Input$AccountFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
  }) =>
      _res;
}

class Query$Accounts {
  Query$Accounts({
    required this.accounts,
    this.$__typename = 'Query',
  });

  factory Query$Accounts.fromJson(Map<String, dynamic> json) {
    final l$accounts = json['accounts'];
    final l$$__typename = json['__typename'];
    return Query$Accounts(
      accounts: Query$Accounts$accounts.fromJson(
          (l$accounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Accounts$accounts accounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accounts = accounts;
    _resultData['accounts'] = l$accounts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accounts = accounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accounts = accounts;
    final lOther$accounts = other.accounts;
    if (l$accounts != lOther$accounts) {
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

extension UtilityExtension$Query$Accounts on Query$Accounts {
  CopyWith$Query$Accounts<Query$Accounts> get copyWith =>
      CopyWith$Query$Accounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Accounts<TRes> {
  factory CopyWith$Query$Accounts(
    Query$Accounts instance,
    TRes Function(Query$Accounts) then,
  ) = _CopyWithImpl$Query$Accounts;

  factory CopyWith$Query$Accounts.stub(TRes res) =
      _CopyWithStubImpl$Query$Accounts;

  TRes call({
    Query$Accounts$accounts? accounts,
    String? $__typename,
  });
  CopyWith$Query$Accounts$accounts<TRes> get accounts;
}

class _CopyWithImpl$Query$Accounts<TRes>
    implements CopyWith$Query$Accounts<TRes> {
  _CopyWithImpl$Query$Accounts(
    this._instance,
    this._then,
  );

  final Query$Accounts _instance;

  final TRes Function(Query$Accounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts(
        accounts: accounts == _undefined || accounts == null
            ? _instance.accounts
            : (accounts as Query$Accounts$accounts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Accounts$accounts<TRes> get accounts {
    final local$accounts = _instance.accounts;
    return CopyWith$Query$Accounts$accounts(
        local$accounts, (e) => call(accounts: e));
  }
}

class _CopyWithStubImpl$Query$Accounts<TRes>
    implements CopyWith$Query$Accounts<TRes> {
  _CopyWithStubImpl$Query$Accounts(this._res);

  TRes _res;

  call({
    Query$Accounts$accounts? accounts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Accounts$accounts<TRes> get accounts =>
      CopyWith$Query$Accounts$accounts.stub(_res);
}

const documentNodeQueryAccounts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Accounts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filters')),
        type: NamedTypeNode(
          name: NameNode(value: 'AccountFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sortBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'accounts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filters'),
            value: VariableNode(name: NameNode(value: 'filters')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sortBy'),
            value: VariableNode(name: NameNode(value: 'sortBy')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'places'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'blocks'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'floors'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'no'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'accountFloorId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'persons'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'firstName'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'lastName'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'emailAddress'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'phoneNumber'),
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
Query$Accounts _parserFn$Query$Accounts(Map<String, dynamic> data) =>
    Query$Accounts.fromJson(data);
typedef OnQueryComplete$Query$Accounts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Accounts?,
);

class Options$Query$Accounts extends graphql.QueryOptions<Query$Accounts> {
  Options$Query$Accounts({
    String? operationName,
    Variables$Query$Accounts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Accounts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Accounts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Accounts(data),
                  ),
          onError: onError,
          document: documentNodeQueryAccounts,
          parserFn: _parserFn$Query$Accounts,
        );

  final OnQueryComplete$Query$Accounts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Accounts
    extends graphql.WatchQueryOptions<Query$Accounts> {
  WatchOptions$Query$Accounts({
    String? operationName,
    Variables$Query$Accounts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Accounts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAccounts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Accounts,
        );
}

class FetchMoreOptions$Query$Accounts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Accounts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Accounts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryAccounts,
        );
}

extension ClientExtension$Query$Accounts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Accounts>> query$Accounts(
          [Options$Query$Accounts? options]) async =>
      await this.query(options ?? Options$Query$Accounts());
  graphql.ObservableQuery<Query$Accounts> watchQuery$Accounts(
          [WatchOptions$Query$Accounts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Accounts());
  void writeQuery$Accounts({
    required Query$Accounts data,
    Variables$Query$Accounts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryAccounts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Accounts? readQuery$Accounts({
    Variables$Query$Accounts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAccounts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Accounts.fromJson(result);
  }
}

class Query$Accounts$accounts {
  Query$Accounts$accounts({
    this.values,
    this.$__typename = 'Accounts',
  });

  factory Query$Accounts$accounts.fromJson(Map<String, dynamic> json) {
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts(
      values: (l$values as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Accounts$accounts$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Accounts$accounts$values?>? values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts$accounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
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

extension UtilityExtension$Query$Accounts$accounts on Query$Accounts$accounts {
  CopyWith$Query$Accounts$accounts<Query$Accounts$accounts> get copyWith =>
      CopyWith$Query$Accounts$accounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Accounts$accounts<TRes> {
  factory CopyWith$Query$Accounts$accounts(
    Query$Accounts$accounts instance,
    TRes Function(Query$Accounts$accounts) then,
  ) = _CopyWithImpl$Query$Accounts$accounts;

  factory CopyWith$Query$Accounts$accounts.stub(TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts;

  TRes call({
    List<Query$Accounts$accounts$values?>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$Accounts$accounts$values?>? Function(
              Iterable<
                  CopyWith$Query$Accounts$accounts$values<
                      Query$Accounts$accounts$values>?>?)
          _fn);
}

class _CopyWithImpl$Query$Accounts$accounts<TRes>
    implements CopyWith$Query$Accounts$accounts<TRes> {
  _CopyWithImpl$Query$Accounts$accounts(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts _instance;

  final TRes Function(Query$Accounts$accounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts(
        values: values == _undefined
            ? _instance.values
            : (values as List<Query$Accounts$accounts$values?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes values(
          Iterable<Query$Accounts$accounts$values?>? Function(
                  Iterable<
                      CopyWith$Query$Accounts$accounts$values<
                          Query$Accounts$accounts$values>?>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) => e == null
              ? null
              : CopyWith$Query$Accounts$accounts$values(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Accounts$accounts<TRes>
    implements CopyWith$Query$Accounts$accounts<TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts(this._res);

  TRes _res;

  call({
    List<Query$Accounts$accounts$values?>? values,
    String? $__typename,
  }) =>
      _res;
  values(_fn) => _res;
}

class Query$Accounts$accounts$values {
  Query$Accounts$accounts$values({
    this.id,
    this.name,
    this.places,
    this.$__typename = 'Account',
  });

  factory Query$Accounts$accounts$values.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$places = json['places'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts$values(
      id: (l$id as String?),
      name: (l$name as String?),
      places: (l$places as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Accounts$accounts$values$places.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final List<Query$Accounts$accounts$values$places?>? places;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$places = places;
    _resultData['places'] = l$places?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$places = places;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$places == null ? null : Object.hashAll(l$places.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts$accounts$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$places = places;
    final lOther$places = other.places;
    if (l$places != null && lOther$places != null) {
      if (l$places.length != lOther$places.length) {
        return false;
      }
      for (int i = 0; i < l$places.length; i++) {
        final l$places$entry = l$places[i];
        final lOther$places$entry = lOther$places[i];
        if (l$places$entry != lOther$places$entry) {
          return false;
        }
      }
    } else if (l$places != lOther$places) {
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

extension UtilityExtension$Query$Accounts$accounts$values
    on Query$Accounts$accounts$values {
  CopyWith$Query$Accounts$accounts$values<Query$Accounts$accounts$values>
      get copyWith => CopyWith$Query$Accounts$accounts$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Accounts$accounts$values<TRes> {
  factory CopyWith$Query$Accounts$accounts$values(
    Query$Accounts$accounts$values instance,
    TRes Function(Query$Accounts$accounts$values) then,
  ) = _CopyWithImpl$Query$Accounts$accounts$values;

  factory CopyWith$Query$Accounts$accounts$values.stub(TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts$values;

  TRes call({
    String? id,
    String? name,
    List<Query$Accounts$accounts$values$places?>? places,
    String? $__typename,
  });
  TRes places(
      Iterable<Query$Accounts$accounts$values$places?>? Function(
              Iterable<
                  CopyWith$Query$Accounts$accounts$values$places<
                      Query$Accounts$accounts$values$places>?>?)
          _fn);
}

class _CopyWithImpl$Query$Accounts$accounts$values<TRes>
    implements CopyWith$Query$Accounts$accounts$values<TRes> {
  _CopyWithImpl$Query$Accounts$accounts$values(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts$values _instance;

  final TRes Function(Query$Accounts$accounts$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? places = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts$values(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        places: places == _undefined
            ? _instance.places
            : (places as List<Query$Accounts$accounts$values$places?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes places(
          Iterable<Query$Accounts$accounts$values$places?>? Function(
                  Iterable<
                      CopyWith$Query$Accounts$accounts$values$places<
                          Query$Accounts$accounts$values$places>?>?)
              _fn) =>
      call(
          places: _fn(_instance.places?.map((e) => e == null
              ? null
              : CopyWith$Query$Accounts$accounts$values$places(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Accounts$accounts$values<TRes>
    implements CopyWith$Query$Accounts$accounts$values<TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts$values(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$Accounts$accounts$values$places?>? places,
    String? $__typename,
  }) =>
      _res;
  places(_fn) => _res;
}

class Query$Accounts$accounts$values$places {
  Query$Accounts$accounts$values$places({
    this.name,
    this.blocks,
    this.$__typename = 'AccountPlace',
  });

  factory Query$Accounts$accounts$values$places.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts$values$places(
      name: (l$name as String?),
      blocks: (l$blocks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Accounts$accounts$values$places$blocks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$Accounts$accounts$values$places$blocks?>? blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$blocks = blocks;
    _resultData['blocks'] = l$blocks?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$blocks == null ? null : Object.hashAll(l$blocks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts$accounts$values$places) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (l$blocks != null && lOther$blocks != null) {
      if (l$blocks.length != lOther$blocks.length) {
        return false;
      }
      for (int i = 0; i < l$blocks.length; i++) {
        final l$blocks$entry = l$blocks[i];
        final lOther$blocks$entry = lOther$blocks[i];
        if (l$blocks$entry != lOther$blocks$entry) {
          return false;
        }
      }
    } else if (l$blocks != lOther$blocks) {
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

extension UtilityExtension$Query$Accounts$accounts$values$places
    on Query$Accounts$accounts$values$places {
  CopyWith$Query$Accounts$accounts$values$places<
          Query$Accounts$accounts$values$places>
      get copyWith => CopyWith$Query$Accounts$accounts$values$places(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Accounts$accounts$values$places<TRes> {
  factory CopyWith$Query$Accounts$accounts$values$places(
    Query$Accounts$accounts$values$places instance,
    TRes Function(Query$Accounts$accounts$values$places) then,
  ) = _CopyWithImpl$Query$Accounts$accounts$values$places;

  factory CopyWith$Query$Accounts$accounts$values$places.stub(TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts$values$places;

  TRes call({
    String? name,
    List<Query$Accounts$accounts$values$places$blocks?>? blocks,
    String? $__typename,
  });
  TRes blocks(
      Iterable<Query$Accounts$accounts$values$places$blocks?>? Function(
              Iterable<
                  CopyWith$Query$Accounts$accounts$values$places$blocks<
                      Query$Accounts$accounts$values$places$blocks>?>?)
          _fn);
}

class _CopyWithImpl$Query$Accounts$accounts$values$places<TRes>
    implements CopyWith$Query$Accounts$accounts$values$places<TRes> {
  _CopyWithImpl$Query$Accounts$accounts$values$places(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts$values$places _instance;

  final TRes Function(Query$Accounts$accounts$values$places) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts$values$places(
        name: name == _undefined ? _instance.name : (name as String?),
        blocks: blocks == _undefined
            ? _instance.blocks
            : (blocks as List<Query$Accounts$accounts$values$places$blocks?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes blocks(
          Iterable<Query$Accounts$accounts$values$places$blocks?>? Function(
                  Iterable<
                      CopyWith$Query$Accounts$accounts$values$places$blocks<
                          Query$Accounts$accounts$values$places$blocks>?>?)
              _fn) =>
      call(
          blocks: _fn(_instance.blocks?.map((e) => e == null
              ? null
              : CopyWith$Query$Accounts$accounts$values$places$blocks(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Accounts$accounts$values$places<TRes>
    implements CopyWith$Query$Accounts$accounts$values$places<TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts$values$places(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$Accounts$accounts$values$places$blocks?>? blocks,
    String? $__typename,
  }) =>
      _res;
  blocks(_fn) => _res;
}

class Query$Accounts$accounts$values$places$blocks {
  Query$Accounts$accounts$values$places$blocks({
    this.name,
    this.floors,
    this.$__typename = 'PlaceBlock',
  });

  factory Query$Accounts$accounts$values$places$blocks.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$floors = json['floors'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts$values$places$blocks(
      name: (l$name as String?),
      floors: (l$floors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Accounts$accounts$values$places$blocks$floors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$Accounts$accounts$values$places$blocks$floors?>? floors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$floors = floors;
    _resultData['floors'] = l$floors?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$floors = floors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$floors == null ? null : Object.hashAll(l$floors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts$accounts$values$places$blocks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$floors = floors;
    final lOther$floors = other.floors;
    if (l$floors != null && lOther$floors != null) {
      if (l$floors.length != lOther$floors.length) {
        return false;
      }
      for (int i = 0; i < l$floors.length; i++) {
        final l$floors$entry = l$floors[i];
        final lOther$floors$entry = lOther$floors[i];
        if (l$floors$entry != lOther$floors$entry) {
          return false;
        }
      }
    } else if (l$floors != lOther$floors) {
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

extension UtilityExtension$Query$Accounts$accounts$values$places$blocks
    on Query$Accounts$accounts$values$places$blocks {
  CopyWith$Query$Accounts$accounts$values$places$blocks<
          Query$Accounts$accounts$values$places$blocks>
      get copyWith => CopyWith$Query$Accounts$accounts$values$places$blocks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Accounts$accounts$values$places$blocks<TRes> {
  factory CopyWith$Query$Accounts$accounts$values$places$blocks(
    Query$Accounts$accounts$values$places$blocks instance,
    TRes Function(Query$Accounts$accounts$values$places$blocks) then,
  ) = _CopyWithImpl$Query$Accounts$accounts$values$places$blocks;

  factory CopyWith$Query$Accounts$accounts$values$places$blocks.stub(TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks;

  TRes call({
    String? name,
    List<Query$Accounts$accounts$values$places$blocks$floors?>? floors,
    String? $__typename,
  });
  TRes floors(
      Iterable<Query$Accounts$accounts$values$places$blocks$floors?>? Function(
              Iterable<
                  CopyWith$Query$Accounts$accounts$values$places$blocks$floors<
                      Query$Accounts$accounts$values$places$blocks$floors>?>?)
          _fn);
}

class _CopyWithImpl$Query$Accounts$accounts$values$places$blocks<TRes>
    implements CopyWith$Query$Accounts$accounts$values$places$blocks<TRes> {
  _CopyWithImpl$Query$Accounts$accounts$values$places$blocks(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts$values$places$blocks _instance;

  final TRes Function(Query$Accounts$accounts$values$places$blocks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? floors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts$values$places$blocks(
        name: name == _undefined ? _instance.name : (name as String?),
        floors: floors == _undefined
            ? _instance.floors
            : (floors
                as List<Query$Accounts$accounts$values$places$blocks$floors?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes floors(
          Iterable<Query$Accounts$accounts$values$places$blocks$floors?>? Function(
                  Iterable<
                      CopyWith$Query$Accounts$accounts$values$places$blocks$floors<
                          Query$Accounts$accounts$values$places$blocks$floors>?>?)
              _fn) =>
      call(
          floors: _fn(_instance.floors?.map((e) => e == null
              ? null
              : CopyWith$Query$Accounts$accounts$values$places$blocks$floors(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks<TRes>
    implements CopyWith$Query$Accounts$accounts$values$places$blocks<TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$Accounts$accounts$values$places$blocks$floors?>? floors,
    String? $__typename,
  }) =>
      _res;
  floors(_fn) => _res;
}

class Query$Accounts$accounts$values$places$blocks$floors {
  Query$Accounts$accounts$values$places$blocks$floors({
    this.no,
    this.accountFloorId,
    this.persons,
    this.$__typename = 'BlockFloor',
  });

  factory Query$Accounts$accounts$values$places$blocks$floors.fromJson(
      Map<String, dynamic> json) {
    final l$no = json['no'];
    final l$accountFloorId = json['accountFloorId'];
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts$values$places$blocks$floors(
      no: (l$no as int?),
      accountFloorId: (l$accountFloorId as String?),
      persons: (l$persons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Accounts$accounts$values$places$blocks$floors$persons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? no;

  final String? accountFloorId;

  final List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
      persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$no = no;
    _resultData['no'] = l$no;
    final l$accountFloorId = accountFloorId;
    _resultData['accountFloorId'] = l$accountFloorId;
    final l$persons = persons;
    _resultData['persons'] = l$persons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$no = no;
    final l$accountFloorId = accountFloorId;
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$no,
      l$accountFloorId,
      l$persons == null ? null : Object.hashAll(l$persons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Accounts$accounts$values$places$blocks$floors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
      return false;
    }
    final l$accountFloorId = accountFloorId;
    final lOther$accountFloorId = other.accountFloorId;
    if (l$accountFloorId != lOther$accountFloorId) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons != null && lOther$persons != null) {
      if (l$persons.length != lOther$persons.length) {
        return false;
      }
      for (int i = 0; i < l$persons.length; i++) {
        final l$persons$entry = l$persons[i];
        final lOther$persons$entry = lOther$persons[i];
        if (l$persons$entry != lOther$persons$entry) {
          return false;
        }
      }
    } else if (l$persons != lOther$persons) {
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

extension UtilityExtension$Query$Accounts$accounts$values$places$blocks$floors
    on Query$Accounts$accounts$values$places$blocks$floors {
  CopyWith$Query$Accounts$accounts$values$places$blocks$floors<
          Query$Accounts$accounts$values$places$blocks$floors>
      get copyWith =>
          CopyWith$Query$Accounts$accounts$values$places$blocks$floors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Accounts$accounts$values$places$blocks$floors<
    TRes> {
  factory CopyWith$Query$Accounts$accounts$values$places$blocks$floors(
    Query$Accounts$accounts$values$places$blocks$floors instance,
    TRes Function(Query$Accounts$accounts$values$places$blocks$floors) then,
  ) = _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors;

  factory CopyWith$Query$Accounts$accounts$values$places$blocks$floors.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors;

  TRes call({
    int? no,
    String? accountFloorId,
    List<Query$Accounts$accounts$values$places$blocks$floors$persons?>? persons,
    String? $__typename,
  });
  TRes persons(
      Iterable<Query$Accounts$accounts$values$places$blocks$floors$persons?>? Function(
              Iterable<
                  CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
                      Query$Accounts$accounts$values$places$blocks$floors$persons>?>?)
          _fn);
}

class _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors<TRes>
    implements
        CopyWith$Query$Accounts$accounts$values$places$blocks$floors<TRes> {
  _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts$values$places$blocks$floors _instance;

  final TRes Function(Query$Accounts$accounts$values$places$blocks$floors)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? no = _undefined,
    Object? accountFloorId = _undefined,
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts$values$places$blocks$floors(
        no: no == _undefined ? _instance.no : (no as int?),
        accountFloorId: accountFloorId == _undefined
            ? _instance.accountFloorId
            : (accountFloorId as String?),
        persons: persons == _undefined
            ? _instance.persons
            : (persons as List<
                Query$Accounts$accounts$values$places$blocks$floors$persons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes persons(
          Iterable<Query$Accounts$accounts$values$places$blocks$floors$persons?>? Function(
                  Iterable<
                      CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
                          Query$Accounts$accounts$values$places$blocks$floors$persons>?>?)
              _fn) =>
      call(
          persons: _fn(_instance.persons?.map((e) => e == null
              ? null
              : CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors<
        TRes>
    implements
        CopyWith$Query$Accounts$accounts$values$places$blocks$floors<TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors(
      this._res);

  TRes _res;

  call({
    int? no,
    String? accountFloorId,
    List<Query$Accounts$accounts$values$places$blocks$floors$persons?>? persons,
    String? $__typename,
  }) =>
      _res;
  persons(_fn) => _res;
}

class Query$Accounts$accounts$values$places$blocks$floors$persons {
  Query$Accounts$accounts$values$places$blocks$floors$persons({
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.phoneNumber,
    this.$__typename = 'Person',
  });

  factory Query$Accounts$accounts$values$places$blocks$floors$persons.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$phoneNumber = json['phoneNumber'];
    final l$$__typename = json['__typename'];
    return Query$Accounts$accounts$values$places$blocks$floors$persons(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      emailAddress: (l$emailAddress as String?),
      phoneNumber: (l$phoneNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String? emailAddress;

  final String? phoneNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$phoneNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Accounts$accounts$values$places$blocks$floors$persons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
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

extension UtilityExtension$Query$Accounts$accounts$values$places$blocks$floors$persons
    on Query$Accounts$accounts$values$places$blocks$floors$persons {
  CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
          Query$Accounts$accounts$values$places$blocks$floors$persons>
      get copyWith =>
          CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
    TRes> {
  factory CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons(
    Query$Accounts$accounts$values$places$blocks$floors$persons instance,
    TRes Function(Query$Accounts$accounts$values$places$blocks$floors$persons)
        then,
  ) = _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors$persons;

  factory CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors$persons;

  TRes call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors$persons<
        TRes>
    implements
        CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
            TRes> {
  _CopyWithImpl$Query$Accounts$accounts$values$places$blocks$floors$persons(
    this._instance,
    this._then,
  );

  final Query$Accounts$accounts$values$places$blocks$floors$persons _instance;

  final TRes Function(
      Query$Accounts$accounts$values$places$blocks$floors$persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Accounts$accounts$values$places$blocks$floors$persons(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        emailAddress: emailAddress == _undefined
            ? _instance.emailAddress
            : (emailAddress as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors$persons<
        TRes>
    implements
        CopyWith$Query$Accounts$accounts$values$places$blocks$floors$persons<
            TRes> {
  _CopyWithStubImpl$Query$Accounts$accounts$values$places$blocks$floors$persons(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  }) =>
      _res;
}
