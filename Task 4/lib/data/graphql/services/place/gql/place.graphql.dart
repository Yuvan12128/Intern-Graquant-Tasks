import '../../../component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Places {
  factory Variables$Query$Places({
    Input$PlaceFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  }) =>
      Variables$Query$Places._({
        if (filters != null) r'filters': filters,
        if (offset != null) r'offset': offset,
        if (first != null) r'first': first,
        if (sortBy != null) r'sortBy': sortBy,
        if (options != null) r'options': options,
      });

  Variables$Query$Places._(this._$data);

  factory Variables$Query$Places.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = l$filters == null
          ? null
          : Input$PlaceFilter.fromJson((l$filters as Map<String, dynamic>));
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
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$Options.fromJson((l$options as Map<String, dynamic>));
    }
    return Variables$Query$Places._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PlaceFilter? get filters => (_$data['filters'] as Input$PlaceFilter?);
  int? get offset => (_$data['offset'] as int?);
  int? get first => (_$data['first'] as int?);
  List<String?>? get sortBy => (_$data['sortBy'] as List<String?>?);
  Input$Options? get options => (_$data['options'] as Input$Options?);
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
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Places<Variables$Query$Places> get copyWith =>
      CopyWith$Variables$Query$Places(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Places) ||
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
    final l$options = options;
    final lOther$options = other.options;
    if (_$data.containsKey('options') != other._$data.containsKey('options')) {
      return false;
    }
    if (l$options != lOther$options) {
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
    final l$options = options;
    return Object.hashAll([
      _$data.containsKey('filters') ? l$filters : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('sortBy')
          ? l$sortBy == null
              ? null
              : Object.hashAll(l$sortBy.map((v) => v))
          : const {},
      _$data.containsKey('options') ? l$options : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Places<TRes> {
  factory CopyWith$Variables$Query$Places(
    Variables$Query$Places instance,
    TRes Function(Variables$Query$Places) then,
  ) = _CopyWithImpl$Variables$Query$Places;

  factory CopyWith$Variables$Query$Places.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Places;

  TRes call({
    Input$PlaceFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  });
}

class _CopyWithImpl$Variables$Query$Places<TRes>
    implements CopyWith$Variables$Query$Places<TRes> {
  _CopyWithImpl$Variables$Query$Places(
    this._instance,
    this._then,
  );

  final Variables$Query$Places _instance;

  final TRes Function(Variables$Query$Places) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filters = _undefined,
    Object? offset = _undefined,
    Object? first = _undefined,
    Object? sortBy = _undefined,
    Object? options = _undefined,
  }) =>
      _then(Variables$Query$Places._({
        ..._instance._$data,
        if (filters != _undefined) 'filters': (filters as Input$PlaceFilter?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (first != _undefined) 'first': (first as int?),
        if (sortBy != _undefined) 'sortBy': (sortBy as List<String?>?),
        if (options != _undefined) 'options': (options as Input$Options?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Places<TRes>
    implements CopyWith$Variables$Query$Places<TRes> {
  _CopyWithStubImpl$Variables$Query$Places(this._res);

  TRes _res;

  call({
    Input$PlaceFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  }) =>
      _res;
}

class Query$Places {
  Query$Places({
    required this.places,
    this.$__typename = 'Query',
  });

  factory Query$Places.fromJson(Map<String, dynamic> json) {
    final l$places = json['places'];
    final l$$__typename = json['__typename'];
    return Query$Places(
      places: Query$Places$places.fromJson((l$places as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Places$places places;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$places = places;
    _resultData['places'] = l$places.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$places = places;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$places,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Places) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$places = places;
    final lOther$places = other.places;
    if (l$places != lOther$places) {
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

extension UtilityExtension$Query$Places on Query$Places {
  CopyWith$Query$Places<Query$Places> get copyWith => CopyWith$Query$Places(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Places<TRes> {
  factory CopyWith$Query$Places(
    Query$Places instance,
    TRes Function(Query$Places) then,
  ) = _CopyWithImpl$Query$Places;

  factory CopyWith$Query$Places.stub(TRes res) = _CopyWithStubImpl$Query$Places;

  TRes call({
    Query$Places$places? places,
    String? $__typename,
  });
  CopyWith$Query$Places$places<TRes> get places;
}

class _CopyWithImpl$Query$Places<TRes> implements CopyWith$Query$Places<TRes> {
  _CopyWithImpl$Query$Places(
    this._instance,
    this._then,
  );

  final Query$Places _instance;

  final TRes Function(Query$Places) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? places = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places(
        places: places == _undefined || places == null
            ? _instance.places
            : (places as Query$Places$places),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Places$places<TRes> get places {
    final local$places = _instance.places;
    return CopyWith$Query$Places$places(local$places, (e) => call(places: e));
  }
}

class _CopyWithStubImpl$Query$Places<TRes>
    implements CopyWith$Query$Places<TRes> {
  _CopyWithStubImpl$Query$Places(this._res);

  TRes _res;

  call({
    Query$Places$places? places,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Places$places<TRes> get places =>
      CopyWith$Query$Places$places.stub(_res);
}

const documentNodeQueryPlaces = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Places'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filters')),
        type: NamedTypeNode(
          name: NameNode(value: 'PlaceFilter'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'Options'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'places'),
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
          ArgumentNode(
            name: NameNode(value: 'options'),
            value: VariableNode(name: NameNode(value: 'options')),
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
                name: NameNode(value: 'blocks'),
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
                    name: NameNode(value: 'floors'),
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
                        name: NameNode(value: 'no'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountPersons'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'accountFloorId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'account'),
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
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
                          ),
                          FieldNode(
                            name: NameNode(value: 'persons'),
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
Query$Places _parserFn$Query$Places(Map<String, dynamic> data) =>
    Query$Places.fromJson(data);
typedef OnQueryComplete$Query$Places = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Places?,
);

class Options$Query$Places extends graphql.QueryOptions<Query$Places> {
  Options$Query$Places({
    String? operationName,
    Variables$Query$Places? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Places? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Places? onComplete,
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
                    data == null ? null : _parserFn$Query$Places(data),
                  ),
          onError: onError,
          document: documentNodeQueryPlaces,
          parserFn: _parserFn$Query$Places,
        );

  final OnQueryComplete$Query$Places? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Places
    extends graphql.WatchQueryOptions<Query$Places> {
  WatchOptions$Query$Places({
    String? operationName,
    Variables$Query$Places? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Places? typedOptimisticResult,
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
          document: documentNodeQueryPlaces,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Places,
        );
}

class FetchMoreOptions$Query$Places extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Places({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Places? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPlaces,
        );
}

extension ClientExtension$Query$Places on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Places>> query$Places(
          [Options$Query$Places? options]) async =>
      await this.query(options ?? Options$Query$Places());
  graphql.ObservableQuery<Query$Places> watchQuery$Places(
          [WatchOptions$Query$Places? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Places());
  void writeQuery$Places({
    required Query$Places data,
    Variables$Query$Places? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPlaces),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Places? readQuery$Places({
    Variables$Query$Places? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPlaces),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Places.fromJson(result);
  }
}

class Query$Places$places {
  Query$Places$places({
    this.values,
    this.$__typename = 'Places',
  });

  factory Query$Places$places.fromJson(Map<String, dynamic> json) {
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$Places$places(
      values: (l$values as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Places$places$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Places$places$values?>? values;

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
    if (!(other is Query$Places$places) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Places$places on Query$Places$places {
  CopyWith$Query$Places$places<Query$Places$places> get copyWith =>
      CopyWith$Query$Places$places(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Places$places<TRes> {
  factory CopyWith$Query$Places$places(
    Query$Places$places instance,
    TRes Function(Query$Places$places) then,
  ) = _CopyWithImpl$Query$Places$places;

  factory CopyWith$Query$Places$places.stub(TRes res) =
      _CopyWithStubImpl$Query$Places$places;

  TRes call({
    List<Query$Places$places$values?>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$Places$places$values?>? Function(
              Iterable<
                  CopyWith$Query$Places$places$values<
                      Query$Places$places$values>?>?)
          _fn);
}

class _CopyWithImpl$Query$Places$places<TRes>
    implements CopyWith$Query$Places$places<TRes> {
  _CopyWithImpl$Query$Places$places(
    this._instance,
    this._then,
  );

  final Query$Places$places _instance;

  final TRes Function(Query$Places$places) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places(
        values: values == _undefined
            ? _instance.values
            : (values as List<Query$Places$places$values?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes values(
          Iterable<Query$Places$places$values?>? Function(
                  Iterable<
                      CopyWith$Query$Places$places$values<
                          Query$Places$places$values>?>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) => e == null
              ? null
              : CopyWith$Query$Places$places$values(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Places$places<TRes>
    implements CopyWith$Query$Places$places<TRes> {
  _CopyWithStubImpl$Query$Places$places(this._res);

  TRes _res;

  call({
    List<Query$Places$places$values?>? values,
    String? $__typename,
  }) =>
      _res;
  values(_fn) => _res;
}

class Query$Places$places$values {
  Query$Places$places$values({
    this.id,
    this.name,
    this.blocks,
    this.$__typename = 'Place',
  });

  factory Query$Places$places$values.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$blocks = json['blocks'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values(
      id: (l$id as String?),
      name: (l$name as String?),
      blocks: (l$blocks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Places$places$values$blocks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final List<Query$Places$places$values$blocks?>? blocks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$blocks = blocks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Query$Places$places$values) ||
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

extension UtilityExtension$Query$Places$places$values
    on Query$Places$places$values {
  CopyWith$Query$Places$places$values<Query$Places$places$values>
      get copyWith => CopyWith$Query$Places$places$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values<TRes> {
  factory CopyWith$Query$Places$places$values(
    Query$Places$places$values instance,
    TRes Function(Query$Places$places$values) then,
  ) = _CopyWithImpl$Query$Places$places$values;

  factory CopyWith$Query$Places$places$values.stub(TRes res) =
      _CopyWithStubImpl$Query$Places$places$values;

  TRes call({
    String? id,
    String? name,
    List<Query$Places$places$values$blocks?>? blocks,
    String? $__typename,
  });
  TRes blocks(
      Iterable<Query$Places$places$values$blocks?>? Function(
              Iterable<
                  CopyWith$Query$Places$places$values$blocks<
                      Query$Places$places$values$blocks>?>?)
          _fn);
}

class _CopyWithImpl$Query$Places$places$values<TRes>
    implements CopyWith$Query$Places$places$values<TRes> {
  _CopyWithImpl$Query$Places$places$values(
    this._instance,
    this._then,
  );

  final Query$Places$places$values _instance;

  final TRes Function(Query$Places$places$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? blocks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        blocks: blocks == _undefined
            ? _instance.blocks
            : (blocks as List<Query$Places$places$values$blocks?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes blocks(
          Iterable<Query$Places$places$values$blocks?>? Function(
                  Iterable<
                      CopyWith$Query$Places$places$values$blocks<
                          Query$Places$places$values$blocks>?>?)
              _fn) =>
      call(
          blocks: _fn(_instance.blocks?.map((e) => e == null
              ? null
              : CopyWith$Query$Places$places$values$blocks(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Places$places$values<TRes>
    implements CopyWith$Query$Places$places$values<TRes> {
  _CopyWithStubImpl$Query$Places$places$values(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$Places$places$values$blocks?>? blocks,
    String? $__typename,
  }) =>
      _res;
  blocks(_fn) => _res;
}

class Query$Places$places$values$blocks {
  Query$Places$places$values$blocks({
    this.id,
    this.name,
    this.floors,
    this.$__typename = 'Block',
  });

  factory Query$Places$places$values$blocks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$floors = json['floors'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values$blocks(
      id: (l$id as String?),
      name: (l$name as String?),
      floors: (l$floors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Places$places$values$blocks$floors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final List<Query$Places$places$values$blocks$floors?>? floors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$floors = floors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Query$Places$places$values$blocks) ||
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

extension UtilityExtension$Query$Places$places$values$blocks
    on Query$Places$places$values$blocks {
  CopyWith$Query$Places$places$values$blocks<Query$Places$places$values$blocks>
      get copyWith => CopyWith$Query$Places$places$values$blocks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values$blocks<TRes> {
  factory CopyWith$Query$Places$places$values$blocks(
    Query$Places$places$values$blocks instance,
    TRes Function(Query$Places$places$values$blocks) then,
  ) = _CopyWithImpl$Query$Places$places$values$blocks;

  factory CopyWith$Query$Places$places$values$blocks.stub(TRes res) =
      _CopyWithStubImpl$Query$Places$places$values$blocks;

  TRes call({
    String? id,
    String? name,
    List<Query$Places$places$values$blocks$floors?>? floors,
    String? $__typename,
  });
  TRes floors(
      Iterable<Query$Places$places$values$blocks$floors?>? Function(
              Iterable<
                  CopyWith$Query$Places$places$values$blocks$floors<
                      Query$Places$places$values$blocks$floors>?>?)
          _fn);
}

class _CopyWithImpl$Query$Places$places$values$blocks<TRes>
    implements CopyWith$Query$Places$places$values$blocks<TRes> {
  _CopyWithImpl$Query$Places$places$values$blocks(
    this._instance,
    this._then,
  );

  final Query$Places$places$values$blocks _instance;

  final TRes Function(Query$Places$places$values$blocks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? floors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values$blocks(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        floors: floors == _undefined
            ? _instance.floors
            : (floors as List<Query$Places$places$values$blocks$floors?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes floors(
          Iterable<Query$Places$places$values$blocks$floors?>? Function(
                  Iterable<
                      CopyWith$Query$Places$places$values$blocks$floors<
                          Query$Places$places$values$blocks$floors>?>?)
              _fn) =>
      call(
          floors: _fn(_instance.floors?.map((e) => e == null
              ? null
              : CopyWith$Query$Places$places$values$blocks$floors(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Places$places$values$blocks<TRes>
    implements CopyWith$Query$Places$places$values$blocks<TRes> {
  _CopyWithStubImpl$Query$Places$places$values$blocks(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$Places$places$values$blocks$floors?>? floors,
    String? $__typename,
  }) =>
      _res;
  floors(_fn) => _res;
}

class Query$Places$places$values$blocks$floors {
  Query$Places$places$values$blocks$floors({
    this.id,
    this.no,
    this.accountPersons,
    this.$__typename = 'Floor',
  });

  factory Query$Places$places$values$blocks$floors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$no = json['no'];
    final l$accountPersons = json['accountPersons'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values$blocks$floors(
      id: (l$id as String?),
      no: (l$no as int?),
      accountPersons: (l$accountPersons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Places$places$values$blocks$floors$accountPersons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final int? no;

  final List<Query$Places$places$values$blocks$floors$accountPersons?>?
      accountPersons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$no = no;
    _resultData['no'] = l$no;
    final l$accountPersons = accountPersons;
    _resultData['accountPersons'] =
        l$accountPersons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$no = no;
    final l$accountPersons = accountPersons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$no,
      l$accountPersons == null
          ? null
          : Object.hashAll(l$accountPersons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Places$places$values$blocks$floors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
      return false;
    }
    final l$accountPersons = accountPersons;
    final lOther$accountPersons = other.accountPersons;
    if (l$accountPersons != null && lOther$accountPersons != null) {
      if (l$accountPersons.length != lOther$accountPersons.length) {
        return false;
      }
      for (int i = 0; i < l$accountPersons.length; i++) {
        final l$accountPersons$entry = l$accountPersons[i];
        final lOther$accountPersons$entry = lOther$accountPersons[i];
        if (l$accountPersons$entry != lOther$accountPersons$entry) {
          return false;
        }
      }
    } else if (l$accountPersons != lOther$accountPersons) {
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

extension UtilityExtension$Query$Places$places$values$blocks$floors
    on Query$Places$places$values$blocks$floors {
  CopyWith$Query$Places$places$values$blocks$floors<
          Query$Places$places$values$blocks$floors>
      get copyWith => CopyWith$Query$Places$places$values$blocks$floors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values$blocks$floors<TRes> {
  factory CopyWith$Query$Places$places$values$blocks$floors(
    Query$Places$places$values$blocks$floors instance,
    TRes Function(Query$Places$places$values$blocks$floors) then,
  ) = _CopyWithImpl$Query$Places$places$values$blocks$floors;

  factory CopyWith$Query$Places$places$values$blocks$floors.stub(TRes res) =
      _CopyWithStubImpl$Query$Places$places$values$blocks$floors;

  TRes call({
    String? id,
    int? no,
    List<Query$Places$places$values$blocks$floors$accountPersons?>?
        accountPersons,
    String? $__typename,
  });
  TRes accountPersons(
      Iterable<Query$Places$places$values$blocks$floors$accountPersons?>? Function(
              Iterable<
                  CopyWith$Query$Places$places$values$blocks$floors$accountPersons<
                      Query$Places$places$values$blocks$floors$accountPersons>?>?)
          _fn);
}

class _CopyWithImpl$Query$Places$places$values$blocks$floors<TRes>
    implements CopyWith$Query$Places$places$values$blocks$floors<TRes> {
  _CopyWithImpl$Query$Places$places$values$blocks$floors(
    this._instance,
    this._then,
  );

  final Query$Places$places$values$blocks$floors _instance;

  final TRes Function(Query$Places$places$values$blocks$floors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? no = _undefined,
    Object? accountPersons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values$blocks$floors(
        id: id == _undefined ? _instance.id : (id as String?),
        no: no == _undefined ? _instance.no : (no as int?),
        accountPersons: accountPersons == _undefined
            ? _instance.accountPersons
            : (accountPersons as List<
                Query$Places$places$values$blocks$floors$accountPersons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes accountPersons(
          Iterable<Query$Places$places$values$blocks$floors$accountPersons?>? Function(
                  Iterable<
                      CopyWith$Query$Places$places$values$blocks$floors$accountPersons<
                          Query$Places$places$values$blocks$floors$accountPersons>?>?)
              _fn) =>
      call(
          accountPersons: _fn(_instance.accountPersons?.map((e) => e == null
              ? null
              : CopyWith$Query$Places$places$values$blocks$floors$accountPersons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Places$places$values$blocks$floors<TRes>
    implements CopyWith$Query$Places$places$values$blocks$floors<TRes> {
  _CopyWithStubImpl$Query$Places$places$values$blocks$floors(this._res);

  TRes _res;

  call({
    String? id,
    int? no,
    List<Query$Places$places$values$blocks$floors$accountPersons?>?
        accountPersons,
    String? $__typename,
  }) =>
      _res;
  accountPersons(_fn) => _res;
}

class Query$Places$places$values$blocks$floors$accountPersons {
  Query$Places$places$values$blocks$floors$accountPersons({
    this.accountFloorId,
    this.account,
    this.persons,
    this.$__typename = 'AccountPersons',
  });

  factory Query$Places$places$values$blocks$floors$accountPersons.fromJson(
      Map<String, dynamic> json) {
    final l$accountFloorId = json['accountFloorId'];
    final l$account = json['account'];
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values$blocks$floors$accountPersons(
      accountFloorId: (l$accountFloorId as String?),
      account: l$account == null
          ? null
          : Query$Places$places$values$blocks$floors$accountPersons$account
              .fromJson((l$account as Map<String, dynamic>)),
      persons: (l$persons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Places$places$values$blocks$floors$accountPersons$persons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountFloorId;

  final Query$Places$places$values$blocks$floors$accountPersons$account?
      account;

  final List<Query$Places$places$values$blocks$floors$accountPersons$persons?>?
      persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountFloorId = accountFloorId;
    _resultData['accountFloorId'] = l$accountFloorId;
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
    final l$persons = persons;
    _resultData['persons'] = l$persons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountFloorId = accountFloorId;
    final l$account = account;
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountFloorId,
      l$account,
      l$persons == null ? null : Object.hashAll(l$persons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Places$places$values$blocks$floors$accountPersons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountFloorId = accountFloorId;
    final lOther$accountFloorId = other.accountFloorId;
    if (l$accountFloorId != lOther$accountFloorId) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$Places$places$values$blocks$floors$accountPersons
    on Query$Places$places$values$blocks$floors$accountPersons {
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons<
          Query$Places$places$values$blocks$floors$accountPersons>
      get copyWith =>
          CopyWith$Query$Places$places$values$blocks$floors$accountPersons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values$blocks$floors$accountPersons<
    TRes> {
  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons(
    Query$Places$places$values$blocks$floors$accountPersons instance,
    TRes Function(Query$Places$places$values$blocks$floors$accountPersons) then,
  ) = _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons;

  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons;

  TRes call({
    String? accountFloorId,
    Query$Places$places$values$blocks$floors$accountPersons$account? account,
    List<Query$Places$places$values$blocks$floors$accountPersons$persons?>?
        persons,
    String? $__typename,
  });
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<TRes>
      get account;
  TRes persons(
      Iterable<Query$Places$places$values$blocks$floors$accountPersons$persons?>? Function(
              Iterable<
                  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
                      Query$Places$places$values$blocks$floors$accountPersons$persons>?>?)
          _fn);
}

class _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons<TRes> {
  _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons(
    this._instance,
    this._then,
  );

  final Query$Places$places$values$blocks$floors$accountPersons _instance;

  final TRes Function(Query$Places$places$values$blocks$floors$accountPersons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountFloorId = _undefined,
    Object? account = _undefined,
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values$blocks$floors$accountPersons(
        accountFloorId: accountFloorId == _undefined
            ? _instance.accountFloorId
            : (accountFloorId as String?),
        account: account == _undefined
            ? _instance.account
            : (account
                as Query$Places$places$values$blocks$floors$accountPersons$account?),
        persons: persons == _undefined
            ? _instance.persons
            : (persons as List<
                Query$Places$places$values$blocks$floors$accountPersons$persons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<TRes>
      get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account
            .stub(_then(_instance))
        : CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account(
            local$account, (e) => call(account: e));
  }

  TRes persons(
          Iterable<Query$Places$places$values$blocks$floors$accountPersons$persons?>? Function(
                  Iterable<
                      CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
                          Query$Places$places$values$blocks$floors$accountPersons$persons>?>?)
              _fn) =>
      call(
          persons: _fn(_instance.persons?.map((e) => e == null
              ? null
              : CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons<TRes> {
  _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons(
      this._res);

  TRes _res;

  call({
    String? accountFloorId,
    Query$Places$places$values$blocks$floors$accountPersons$account? account,
    List<Query$Places$places$values$blocks$floors$accountPersons$persons?>?
        persons,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<TRes>
      get account =>
          CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account
              .stub(_res);
  persons(_fn) => _res;
}

class Query$Places$places$values$blocks$floors$accountPersons$account {
  Query$Places$places$values$blocks$floors$accountPersons$account({
    this.id,
    this.name,
    this.$__typename = 'Account',
  });

  factory Query$Places$places$values$blocks$floors$accountPersons$account.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values$blocks$floors$accountPersons$account(
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Places$places$values$blocks$floors$accountPersons$account) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Places$places$values$blocks$floors$accountPersons$account
    on Query$Places$places$values$blocks$floors$accountPersons$account {
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<
          Query$Places$places$values$blocks$floors$accountPersons$account>
      get copyWith =>
          CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<
    TRes> {
  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account(
    Query$Places$places$values$blocks$floors$accountPersons$account instance,
    TRes Function(
            Query$Places$places$values$blocks$floors$accountPersons$account)
        then,
  ) = _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$account;

  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$account;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$account<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<
            TRes> {
  _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$account(
    this._instance,
    this._then,
  );

  final Query$Places$places$values$blocks$floors$accountPersons$account
      _instance;

  final TRes Function(
      Query$Places$places$values$blocks$floors$accountPersons$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values$blocks$floors$accountPersons$account(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$account<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons$account<
            TRes> {
  _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$account(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Places$places$values$blocks$floors$accountPersons$persons {
  Query$Places$places$values$blocks$floors$accountPersons$persons({
    this.id,
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.phoneNumber,
    this.$__typename = 'Person',
  });

  factory Query$Places$places$values$blocks$floors$accountPersons$persons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$phoneNumber = json['phoneNumber'];
    final l$$__typename = json['__typename'];
    return Query$Places$places$values$blocks$floors$accountPersons$persons(
      id: (l$id as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      emailAddress: (l$emailAddress as String?),
      phoneNumber: (l$phoneNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? firstName;

  final String? lastName;

  final String? emailAddress;

  final String? phoneNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
            is Query$Places$places$values$blocks$floors$accountPersons$persons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Places$places$values$blocks$floors$accountPersons$persons
    on Query$Places$places$values$blocks$floors$accountPersons$persons {
  CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
          Query$Places$places$values$blocks$floors$accountPersons$persons>
      get copyWith =>
          CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
    TRes> {
  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons(
    Query$Places$places$values$blocks$floors$accountPersons$persons instance,
    TRes Function(
            Query$Places$places$values$blocks$floors$accountPersons$persons)
        then,
  ) = _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$persons;

  factory CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$persons;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$persons<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
            TRes> {
  _CopyWithImpl$Query$Places$places$values$blocks$floors$accountPersons$persons(
    this._instance,
    this._then,
  );

  final Query$Places$places$values$blocks$floors$accountPersons$persons
      _instance;

  final TRes Function(
      Query$Places$places$values$blocks$floors$accountPersons$persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Places$places$values$blocks$floors$accountPersons$persons(
        id: id == _undefined ? _instance.id : (id as String?),
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

class _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$persons<
        TRes>
    implements
        CopyWith$Query$Places$places$values$blocks$floors$accountPersons$persons<
            TRes> {
  _CopyWithStubImpl$Query$Places$places$values$blocks$floors$accountPersons$persons(
      this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  }) =>
      _res;
}
