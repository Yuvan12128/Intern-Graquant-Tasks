import '../../../../data/graphql/component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Visitors {
  factory Variables$Query$Visitors({
    Input$VisitorFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  }) =>
      Variables$Query$Visitors._({
        if (filters != null) r'filters': filters,
        if (offset != null) r'offset': offset,
        if (first != null) r'first': first,
        if (sortBy != null) r'sortBy': sortBy,
        if (options != null) r'options': options,
      });

  Variables$Query$Visitors._(this._$data);

  factory Variables$Query$Visitors.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = l$filters == null
          ? null
          : Input$VisitorFilter.fromJson((l$filters as Map<String, dynamic>));
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
    return Variables$Query$Visitors._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VisitorFilter? get filters =>
      (_$data['filters'] as Input$VisitorFilter?);
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

  CopyWith$Variables$Query$Visitors<Variables$Query$Visitors> get copyWith =>
      CopyWith$Variables$Query$Visitors(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Visitors) ||
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

abstract class CopyWith$Variables$Query$Visitors<TRes> {
  factory CopyWith$Variables$Query$Visitors(
    Variables$Query$Visitors instance,
    TRes Function(Variables$Query$Visitors) then,
  ) = _CopyWithImpl$Variables$Query$Visitors;

  factory CopyWith$Variables$Query$Visitors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Visitors;

  TRes call({
    Input$VisitorFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  });
}

class _CopyWithImpl$Variables$Query$Visitors<TRes>
    implements CopyWith$Variables$Query$Visitors<TRes> {
  _CopyWithImpl$Variables$Query$Visitors(
    this._instance,
    this._then,
  );

  final Variables$Query$Visitors _instance;

  final TRes Function(Variables$Query$Visitors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filters = _undefined,
    Object? offset = _undefined,
    Object? first = _undefined,
    Object? sortBy = _undefined,
    Object? options = _undefined,
  }) =>
      _then(Variables$Query$Visitors._({
        ..._instance._$data,
        if (filters != _undefined) 'filters': (filters as Input$VisitorFilter?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (first != _undefined) 'first': (first as int?),
        if (sortBy != _undefined) 'sortBy': (sortBy as List<String?>?),
        if (options != _undefined) 'options': (options as Input$Options?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Visitors<TRes>
    implements CopyWith$Variables$Query$Visitors<TRes> {
  _CopyWithStubImpl$Variables$Query$Visitors(this._res);

  TRes _res;

  call({
    Input$VisitorFilter? filters,
    int? offset,
    int? first,
    List<String?>? sortBy,
    Input$Options? options,
  }) =>
      _res;
}

class Query$Visitors {
  Query$Visitors({
    required this.visitors,
    this.$__typename = 'Query',
  });

  factory Query$Visitors.fromJson(Map<String, dynamic> json) {
    final l$visitors = json['visitors'];
    final l$$__typename = json['__typename'];
    return Query$Visitors(
      visitors: Query$Visitors$visitors.fromJson(
          (l$visitors as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Visitors$visitors visitors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitors = visitors;
    _resultData['visitors'] = l$visitors.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitors = visitors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$visitors,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitors = visitors;
    final lOther$visitors = other.visitors;
    if (l$visitors != lOther$visitors) {
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

extension UtilityExtension$Query$Visitors on Query$Visitors {
  CopyWith$Query$Visitors<Query$Visitors> get copyWith =>
      CopyWith$Query$Visitors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Visitors<TRes> {
  factory CopyWith$Query$Visitors(
    Query$Visitors instance,
    TRes Function(Query$Visitors) then,
  ) = _CopyWithImpl$Query$Visitors;

  factory CopyWith$Query$Visitors.stub(TRes res) =
      _CopyWithStubImpl$Query$Visitors;

  TRes call({
    Query$Visitors$visitors? visitors,
    String? $__typename,
  });
  CopyWith$Query$Visitors$visitors<TRes> get visitors;
}

class _CopyWithImpl$Query$Visitors<TRes>
    implements CopyWith$Query$Visitors<TRes> {
  _CopyWithImpl$Query$Visitors(
    this._instance,
    this._then,
  );

  final Query$Visitors _instance;

  final TRes Function(Query$Visitors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? visitors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors(
        visitors: visitors == _undefined || visitors == null
            ? _instance.visitors
            : (visitors as Query$Visitors$visitors),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Visitors$visitors<TRes> get visitors {
    final local$visitors = _instance.visitors;
    return CopyWith$Query$Visitors$visitors(
        local$visitors, (e) => call(visitors: e));
  }
}

class _CopyWithStubImpl$Query$Visitors<TRes>
    implements CopyWith$Query$Visitors<TRes> {
  _CopyWithStubImpl$Query$Visitors(this._res);

  TRes _res;

  call({
    Query$Visitors$visitors? visitors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Visitors$visitors<TRes> get visitors =>
      CopyWith$Query$Visitors$visitors.stub(_res);
}

const documentNodeQueryVisitors = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Visitors'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filters')),
        type: NamedTypeNode(
          name: NameNode(value: 'VisitorFilter'),
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
        name: NameNode(value: 'visitors'),
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
                name: NameNode(value: 'phoneNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'visitingDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'plannedVisit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'notes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'tools'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'purposeOfVisit'),
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
                name: NameNode(value: 'checkInDate'),
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
                name: NameNode(value: 'comingFrom'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'companyName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'placeName'),
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
                name: NameNode(value: 'createdByPerson'),
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
                name: NameNode(value: 'idProof'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'type1'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value1'),
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
                name: NameNode(value: 'additionalDetails'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'place'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'account'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'block'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'floor'),
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
                        name: NameNode(value: 'phoneNumber'),
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
Query$Visitors _parserFn$Query$Visitors(Map<String, dynamic> data) =>
    Query$Visitors.fromJson(data);
typedef OnQueryComplete$Query$Visitors = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Visitors?,
);

class Options$Query$Visitors extends graphql.QueryOptions<Query$Visitors> {
  Options$Query$Visitors({
    String? operationName,
    Variables$Query$Visitors? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Visitors? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Visitors? onComplete,
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
                    data == null ? null : _parserFn$Query$Visitors(data),
                  ),
          onError: onError,
          document: documentNodeQueryVisitors,
          parserFn: _parserFn$Query$Visitors,
        );

  final OnQueryComplete$Query$Visitors? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Visitors
    extends graphql.WatchQueryOptions<Query$Visitors> {
  WatchOptions$Query$Visitors({
    String? operationName,
    Variables$Query$Visitors? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Visitors? typedOptimisticResult,
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
          document: documentNodeQueryVisitors,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Visitors,
        );
}

class FetchMoreOptions$Query$Visitors extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Visitors({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Visitors? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryVisitors,
        );
}

extension ClientExtension$Query$Visitors on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Visitors>> query$Visitors(
          [Options$Query$Visitors? options]) async =>
      await this.query(options ?? Options$Query$Visitors());
  graphql.ObservableQuery<Query$Visitors> watchQuery$Visitors(
          [WatchOptions$Query$Visitors? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Visitors());
  void writeQuery$Visitors({
    required Query$Visitors data,
    Variables$Query$Visitors? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryVisitors),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Visitors? readQuery$Visitors({
    Variables$Query$Visitors? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryVisitors),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Visitors.fromJson(result);
  }
}

class Query$Visitors$visitors {
  Query$Visitors$visitors({
    this.values,
    this.$__typename = 'Visitors',
  });

  factory Query$Visitors$visitors.fromJson(Map<String, dynamic> json) {
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors(
      values: (l$values as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Visitors$visitors$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Visitors$visitors$values?>? values;

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
    if (!(other is Query$Visitors$visitors) ||
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

extension UtilityExtension$Query$Visitors$visitors on Query$Visitors$visitors {
  CopyWith$Query$Visitors$visitors<Query$Visitors$visitors> get copyWith =>
      CopyWith$Query$Visitors$visitors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Visitors$visitors<TRes> {
  factory CopyWith$Query$Visitors$visitors(
    Query$Visitors$visitors instance,
    TRes Function(Query$Visitors$visitors) then,
  ) = _CopyWithImpl$Query$Visitors$visitors;

  factory CopyWith$Query$Visitors$visitors.stub(TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors;

  TRes call({
    List<Query$Visitors$visitors$values?>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$Visitors$visitors$values?>? Function(
              Iterable<
                  CopyWith$Query$Visitors$visitors$values<
                      Query$Visitors$visitors$values>?>?)
          _fn);
}

class _CopyWithImpl$Query$Visitors$visitors<TRes>
    implements CopyWith$Query$Visitors$visitors<TRes> {
  _CopyWithImpl$Query$Visitors$visitors(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors _instance;

  final TRes Function(Query$Visitors$visitors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors(
        values: values == _undefined
            ? _instance.values
            : (values as List<Query$Visitors$visitors$values?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes values(
          Iterable<Query$Visitors$visitors$values?>? Function(
                  Iterable<
                      CopyWith$Query$Visitors$visitors$values<
                          Query$Visitors$visitors$values>?>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) => e == null
              ? null
              : CopyWith$Query$Visitors$visitors$values(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Visitors$visitors<TRes>
    implements CopyWith$Query$Visitors$visitors<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors(this._res);

  TRes _res;

  call({
    List<Query$Visitors$visitors$values?>? values,
    String? $__typename,
  }) =>
      _res;
  values(_fn) => _res;
}

class Query$Visitors$visitors$values {
  Query$Visitors$visitors$values({
    this.id,
    required this.firstName,
    this.lastName,
    this.phoneNumber,
    this.visitingDate,
    required this.type,
    required this.plannedVisit,
    this.createdDate,
    this.notes,
    this.tools,
    this.purposeOfVisit,
    this.emailAddress,
    this.checkInDate,
    required this.accountFloorId,
    this.comingFrom,
    this.createdByPerson,
    this.idProof,
    this.additionalDetails,
    this.$__typename = 'Visitor',
  });

  factory Query$Visitors$visitors$values.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    final l$visitingDate = json['visitingDate'];
    final l$type = json['type'];
    final l$plannedVisit = json['plannedVisit'];
    final l$createdDate = json['createdDate'];
    final l$notes = json['notes'];
    final l$tools = json['tools'];
    final l$purposeOfVisit = json['purposeOfVisit'];
    final l$emailAddress = json['emailAddress'];
    final l$checkInDate = json['checkInDate'];
    final l$accountFloorId = json['accountFloorId'];
    final l$comingFrom = json['comingFrom'];
    final l$createdByPerson = json['createdByPerson'];
    final l$idProof = json['idProof'];
    final l$additionalDetails = json['additionalDetails'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values(
      id: (l$id as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String?),
      phoneNumber: (l$phoneNumber as String?),
      visitingDate: l$visitingDate == null
          ? null
          : DateTime.parse((l$visitingDate as String)),
      type: fromJson$Enum$VisitorType((l$type as String)),
      plannedVisit: (l$plannedVisit as bool),
      createdDate: l$createdDate == null
          ? null
          : DateTime.parse((l$createdDate as String)),
      notes: (l$notes as String?),
      tools: (l$tools as String?),
      purposeOfVisit: (l$purposeOfVisit as String?),
      emailAddress: (l$emailAddress as String?),
      checkInDate: l$checkInDate == null
          ? null
          : DateTime.parse((l$checkInDate as String)),
      accountFloorId: (l$accountFloorId as String),
      comingFrom: l$comingFrom == null
          ? null
          : Query$Visitors$visitors$values$comingFrom.fromJson(
              (l$comingFrom as Map<String, dynamic>)),
      createdByPerson: l$createdByPerson == null
          ? null
          : Query$Visitors$visitors$values$createdByPerson.fromJson(
              (l$createdByPerson as Map<String, dynamic>)),
      idProof: l$idProof == null
          ? null
          : Query$Visitors$visitors$values$idProof.fromJson(
              (l$idProof as Map<String, dynamic>)),
      additionalDetails: l$additionalDetails == null
          ? null
          : Query$Visitors$visitors$values$additionalDetails.fromJson(
              (l$additionalDetails as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String firstName;

  final String? lastName;

  final String? phoneNumber;

  final DateTime? visitingDate;

  final Enum$VisitorType type;

  final bool plannedVisit;

  final DateTime? createdDate;

  final String? notes;

  final String? tools;

  final String? purposeOfVisit;

  final String? emailAddress;

  final DateTime? checkInDate;

  final String accountFloorId;

  final Query$Visitors$visitors$values$comingFrom? comingFrom;

  final Query$Visitors$visitors$values$createdByPerson? createdByPerson;

  final Query$Visitors$visitors$values$idProof? idProof;

  final Query$Visitors$visitors$values$additionalDetails? additionalDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$visitingDate = visitingDate;
    _resultData['visitingDate'] = l$visitingDate?.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$VisitorType(l$type);
    final l$plannedVisit = plannedVisit;
    _resultData['plannedVisit'] = l$plannedVisit;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate?.toIso8601String();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$tools = tools;
    _resultData['tools'] = l$tools;
    final l$purposeOfVisit = purposeOfVisit;
    _resultData['purposeOfVisit'] = l$purposeOfVisit;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$checkInDate = checkInDate;
    _resultData['checkInDate'] = l$checkInDate?.toIso8601String();
    final l$accountFloorId = accountFloorId;
    _resultData['accountFloorId'] = l$accountFloorId;
    final l$comingFrom = comingFrom;
    _resultData['comingFrom'] = l$comingFrom?.toJson();
    final l$createdByPerson = createdByPerson;
    _resultData['createdByPerson'] = l$createdByPerson?.toJson();
    final l$idProof = idProof;
    _resultData['idProof'] = l$idProof?.toJson();
    final l$additionalDetails = additionalDetails;
    _resultData['additionalDetails'] = l$additionalDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$visitingDate = visitingDate;
    final l$type = type;
    final l$plannedVisit = plannedVisit;
    final l$createdDate = createdDate;
    final l$notes = notes;
    final l$tools = tools;
    final l$purposeOfVisit = purposeOfVisit;
    final l$emailAddress = emailAddress;
    final l$checkInDate = checkInDate;
    final l$accountFloorId = accountFloorId;
    final l$comingFrom = comingFrom;
    final l$createdByPerson = createdByPerson;
    final l$idProof = idProof;
    final l$additionalDetails = additionalDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$visitingDate,
      l$type,
      l$plannedVisit,
      l$createdDate,
      l$notes,
      l$tools,
      l$purposeOfVisit,
      l$emailAddress,
      l$checkInDate,
      l$accountFloorId,
      l$comingFrom,
      l$createdByPerson,
      l$idProof,
      l$additionalDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values) ||
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
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$visitingDate = visitingDate;
    final lOther$visitingDate = other.visitingDate;
    if (l$visitingDate != lOther$visitingDate) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$plannedVisit = plannedVisit;
    final lOther$plannedVisit = other.plannedVisit;
    if (l$plannedVisit != lOther$plannedVisit) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$tools = tools;
    final lOther$tools = other.tools;
    if (l$tools != lOther$tools) {
      return false;
    }
    final l$purposeOfVisit = purposeOfVisit;
    final lOther$purposeOfVisit = other.purposeOfVisit;
    if (l$purposeOfVisit != lOther$purposeOfVisit) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$checkInDate = checkInDate;
    final lOther$checkInDate = other.checkInDate;
    if (l$checkInDate != lOther$checkInDate) {
      return false;
    }
    final l$accountFloorId = accountFloorId;
    final lOther$accountFloorId = other.accountFloorId;
    if (l$accountFloorId != lOther$accountFloorId) {
      return false;
    }
    final l$comingFrom = comingFrom;
    final lOther$comingFrom = other.comingFrom;
    if (l$comingFrom != lOther$comingFrom) {
      return false;
    }
    final l$createdByPerson = createdByPerson;
    final lOther$createdByPerson = other.createdByPerson;
    if (l$createdByPerson != lOther$createdByPerson) {
      return false;
    }
    final l$idProof = idProof;
    final lOther$idProof = other.idProof;
    if (l$idProof != lOther$idProof) {
      return false;
    }
    final l$additionalDetails = additionalDetails;
    final lOther$additionalDetails = other.additionalDetails;
    if (l$additionalDetails != lOther$additionalDetails) {
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

extension UtilityExtension$Query$Visitors$visitors$values
    on Query$Visitors$visitors$values {
  CopyWith$Query$Visitors$visitors$values<Query$Visitors$visitors$values>
      get copyWith => CopyWith$Query$Visitors$visitors$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values<TRes> {
  factory CopyWith$Query$Visitors$visitors$values(
    Query$Visitors$visitors$values instance,
    TRes Function(Query$Visitors$visitors$values) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values;

  factory CopyWith$Query$Visitors$visitors$values.stub(TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    DateTime? visitingDate,
    Enum$VisitorType? type,
    bool? plannedVisit,
    DateTime? createdDate,
    String? notes,
    String? tools,
    String? purposeOfVisit,
    String? emailAddress,
    DateTime? checkInDate,
    String? accountFloorId,
    Query$Visitors$visitors$values$comingFrom? comingFrom,
    Query$Visitors$visitors$values$createdByPerson? createdByPerson,
    Query$Visitors$visitors$values$idProof? idProof,
    Query$Visitors$visitors$values$additionalDetails? additionalDetails,
    String? $__typename,
  });
  CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> get comingFrom;
  CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes>
      get createdByPerson;
  CopyWith$Query$Visitors$visitors$values$idProof<TRes> get idProof;
  CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes>
      get additionalDetails;
}

class _CopyWithImpl$Query$Visitors$visitors$values<TRes>
    implements CopyWith$Query$Visitors$visitors$values<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values _instance;

  final TRes Function(Query$Visitors$visitors$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? visitingDate = _undefined,
    Object? type = _undefined,
    Object? plannedVisit = _undefined,
    Object? createdDate = _undefined,
    Object? notes = _undefined,
    Object? tools = _undefined,
    Object? purposeOfVisit = _undefined,
    Object? emailAddress = _undefined,
    Object? checkInDate = _undefined,
    Object? accountFloorId = _undefined,
    Object? comingFrom = _undefined,
    Object? createdByPerson = _undefined,
    Object? idProof = _undefined,
    Object? additionalDetails = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values(
        id: id == _undefined ? _instance.id : (id as String?),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        visitingDate: visitingDate == _undefined
            ? _instance.visitingDate
            : (visitingDate as DateTime?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$VisitorType),
        plannedVisit: plannedVisit == _undefined || plannedVisit == null
            ? _instance.plannedVisit
            : (plannedVisit as bool),
        createdDate: createdDate == _undefined
            ? _instance.createdDate
            : (createdDate as DateTime?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        tools: tools == _undefined ? _instance.tools : (tools as String?),
        purposeOfVisit: purposeOfVisit == _undefined
            ? _instance.purposeOfVisit
            : (purposeOfVisit as String?),
        emailAddress: emailAddress == _undefined
            ? _instance.emailAddress
            : (emailAddress as String?),
        checkInDate: checkInDate == _undefined
            ? _instance.checkInDate
            : (checkInDate as DateTime?),
        accountFloorId: accountFloorId == _undefined || accountFloorId == null
            ? _instance.accountFloorId
            : (accountFloorId as String),
        comingFrom: comingFrom == _undefined
            ? _instance.comingFrom
            : (comingFrom as Query$Visitors$visitors$values$comingFrom?),
        createdByPerson: createdByPerson == _undefined
            ? _instance.createdByPerson
            : (createdByPerson
                as Query$Visitors$visitors$values$createdByPerson?),
        idProof: idProof == _undefined
            ? _instance.idProof
            : (idProof as Query$Visitors$visitors$values$idProof?),
        additionalDetails: additionalDetails == _undefined
            ? _instance.additionalDetails
            : (additionalDetails
                as Query$Visitors$visitors$values$additionalDetails?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> get comingFrom {
    final local$comingFrom = _instance.comingFrom;
    return local$comingFrom == null
        ? CopyWith$Query$Visitors$visitors$values$comingFrom.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$comingFrom(
            local$comingFrom, (e) => call(comingFrom: e));
  }

  CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes>
      get createdByPerson {
    final local$createdByPerson = _instance.createdByPerson;
    return local$createdByPerson == null
        ? CopyWith$Query$Visitors$visitors$values$createdByPerson.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$createdByPerson(
            local$createdByPerson, (e) => call(createdByPerson: e));
  }

  CopyWith$Query$Visitors$visitors$values$idProof<TRes> get idProof {
    final local$idProof = _instance.idProof;
    return local$idProof == null
        ? CopyWith$Query$Visitors$visitors$values$idProof.stub(_then(_instance))
        : CopyWith$Query$Visitors$visitors$values$idProof(
            local$idProof, (e) => call(idProof: e));
  }

  CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes>
      get additionalDetails {
    final local$additionalDetails = _instance.additionalDetails;
    return local$additionalDetails == null
        ? CopyWith$Query$Visitors$visitors$values$additionalDetails.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$additionalDetails(
            local$additionalDetails, (e) => call(additionalDetails: e));
  }
}

class _CopyWithStubImpl$Query$Visitors$visitors$values<TRes>
    implements CopyWith$Query$Visitors$visitors$values<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    DateTime? visitingDate,
    Enum$VisitorType? type,
    bool? plannedVisit,
    DateTime? createdDate,
    String? notes,
    String? tools,
    String? purposeOfVisit,
    String? emailAddress,
    DateTime? checkInDate,
    String? accountFloorId,
    Query$Visitors$visitors$values$comingFrom? comingFrom,
    Query$Visitors$visitors$values$createdByPerson? createdByPerson,
    Query$Visitors$visitors$values$idProof? idProof,
    Query$Visitors$visitors$values$additionalDetails? additionalDetails,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> get comingFrom =>
      CopyWith$Query$Visitors$visitors$values$comingFrom.stub(_res);
  CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes>
      get createdByPerson =>
          CopyWith$Query$Visitors$visitors$values$createdByPerson.stub(_res);
  CopyWith$Query$Visitors$visitors$values$idProof<TRes> get idProof =>
      CopyWith$Query$Visitors$visitors$values$idProof.stub(_res);
  CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes>
      get additionalDetails =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails.stub(_res);
}

class Query$Visitors$visitors$values$comingFrom {
  Query$Visitors$visitors$values$comingFrom({
    this.companyName,
    this.placeName,
    this.$__typename = 'ComingFrom',
  });

  factory Query$Visitors$visitors$values$comingFrom.fromJson(
      Map<String, dynamic> json) {
    final l$companyName = json['companyName'];
    final l$placeName = json['placeName'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$comingFrom(
      companyName: (l$companyName as String?),
      placeName: (l$placeName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? companyName;

  final String? placeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyName = companyName;
    _resultData['companyName'] = l$companyName;
    final l$placeName = placeName;
    _resultData['placeName'] = l$placeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyName = companyName;
    final l$placeName = placeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyName,
      l$placeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$comingFrom) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$placeName = placeName;
    final lOther$placeName = other.placeName;
    if (l$placeName != lOther$placeName) {
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

extension UtilityExtension$Query$Visitors$visitors$values$comingFrom
    on Query$Visitors$visitors$values$comingFrom {
  CopyWith$Query$Visitors$visitors$values$comingFrom<
          Query$Visitors$visitors$values$comingFrom>
      get copyWith => CopyWith$Query$Visitors$visitors$values$comingFrom(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> {
  factory CopyWith$Query$Visitors$visitors$values$comingFrom(
    Query$Visitors$visitors$values$comingFrom instance,
    TRes Function(Query$Visitors$visitors$values$comingFrom) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$comingFrom;

  factory CopyWith$Query$Visitors$visitors$values$comingFrom.stub(TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$comingFrom;

  TRes call({
    String? companyName,
    String? placeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$comingFrom<TRes>
    implements CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$comingFrom(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$comingFrom _instance;

  final TRes Function(Query$Visitors$visitors$values$comingFrom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyName = _undefined,
    Object? placeName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$comingFrom(
        companyName: companyName == _undefined
            ? _instance.companyName
            : (companyName as String?),
        placeName: placeName == _undefined
            ? _instance.placeName
            : (placeName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$comingFrom<TRes>
    implements CopyWith$Query$Visitors$visitors$values$comingFrom<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$comingFrom(this._res);

  TRes _res;

  call({
    String? companyName,
    String? placeName,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$createdByPerson {
  Query$Visitors$visitors$values$createdByPerson({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.$__typename = 'Person',
  });

  factory Query$Visitors$visitors$values$createdByPerson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$createdByPerson(
      id: (l$id as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      phoneNumber: (l$phoneNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? firstName;

  final String? lastName;

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
    final l$phoneNumber = phoneNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$createdByPerson) ||
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

extension UtilityExtension$Query$Visitors$visitors$values$createdByPerson
    on Query$Visitors$visitors$values$createdByPerson {
  CopyWith$Query$Visitors$visitors$values$createdByPerson<
          Query$Visitors$visitors$values$createdByPerson>
      get copyWith => CopyWith$Query$Visitors$visitors$values$createdByPerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes> {
  factory CopyWith$Query$Visitors$visitors$values$createdByPerson(
    Query$Visitors$visitors$values$createdByPerson instance,
    TRes Function(Query$Visitors$visitors$values$createdByPerson) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$createdByPerson;

  factory CopyWith$Query$Visitors$visitors$values$createdByPerson.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$createdByPerson;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$createdByPerson<TRes>
    implements CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$createdByPerson(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$createdByPerson _instance;

  final TRes Function(Query$Visitors$visitors$values$createdByPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$createdByPerson(
        id: id == _undefined ? _instance.id : (id as String?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$createdByPerson<TRes>
    implements CopyWith$Query$Visitors$visitors$values$createdByPerson<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$createdByPerson(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$idProof {
  Query$Visitors$visitors$values$idProof({
    this.type1,
    this.value1,
    this.$__typename = 'IDProof',
  });

  factory Query$Visitors$visitors$values$idProof.fromJson(
      Map<String, dynamic> json) {
    final l$type1 = json['type1'];
    final l$value1 = json['value1'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$idProof(
      type1: (l$type1 as String?),
      value1: (l$value1 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? type1;

  final String? value1;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type1 = type1;
    _resultData['type1'] = l$type1;
    final l$value1 = value1;
    _resultData['value1'] = l$value1;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type1 = type1;
    final l$value1 = value1;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type1,
      l$value1,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$idProof) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type1 = type1;
    final lOther$type1 = other.type1;
    if (l$type1 != lOther$type1) {
      return false;
    }
    final l$value1 = value1;
    final lOther$value1 = other.value1;
    if (l$value1 != lOther$value1) {
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

extension UtilityExtension$Query$Visitors$visitors$values$idProof
    on Query$Visitors$visitors$values$idProof {
  CopyWith$Query$Visitors$visitors$values$idProof<
          Query$Visitors$visitors$values$idProof>
      get copyWith => CopyWith$Query$Visitors$visitors$values$idProof(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$idProof<TRes> {
  factory CopyWith$Query$Visitors$visitors$values$idProof(
    Query$Visitors$visitors$values$idProof instance,
    TRes Function(Query$Visitors$visitors$values$idProof) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$idProof;

  factory CopyWith$Query$Visitors$visitors$values$idProof.stub(TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$idProof;

  TRes call({
    String? type1,
    String? value1,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$idProof<TRes>
    implements CopyWith$Query$Visitors$visitors$values$idProof<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$idProof(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$idProof _instance;

  final TRes Function(Query$Visitors$visitors$values$idProof) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type1 = _undefined,
    Object? value1 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$idProof(
        type1: type1 == _undefined ? _instance.type1 : (type1 as String?),
        value1: value1 == _undefined ? _instance.value1 : (value1 as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$idProof<TRes>
    implements CopyWith$Query$Visitors$visitors$values$idProof<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$idProof(this._res);

  TRes _res;

  call({
    String? type1,
    String? value1,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$additionalDetails {
  Query$Visitors$visitors$values$additionalDetails({
    this.place,
    this.account,
    this.block,
    this.floor,
    this.persons,
    this.$__typename = 'AdditionalDetails',
  });

  factory Query$Visitors$visitors$values$additionalDetails.fromJson(
      Map<String, dynamic> json) {
    final l$place = json['place'];
    final l$account = json['account'];
    final l$block = json['block'];
    final l$floor = json['floor'];
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails(
      place: l$place == null
          ? null
          : Query$Visitors$visitors$values$additionalDetails$place.fromJson(
              (l$place as Map<String, dynamic>)),
      account: l$account == null
          ? null
          : Query$Visitors$visitors$values$additionalDetails$account.fromJson(
              (l$account as Map<String, dynamic>)),
      block: l$block == null
          ? null
          : Query$Visitors$visitors$values$additionalDetails$block.fromJson(
              (l$block as Map<String, dynamic>)),
      floor: l$floor == null
          ? null
          : Query$Visitors$visitors$values$additionalDetails$floor.fromJson(
              (l$floor as Map<String, dynamic>)),
      persons: (l$persons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Visitors$visitors$values$additionalDetails$persons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Visitors$visitors$values$additionalDetails$place? place;

  final Query$Visitors$visitors$values$additionalDetails$account? account;

  final Query$Visitors$visitors$values$additionalDetails$block? block;

  final Query$Visitors$visitors$values$additionalDetails$floor? floor;

  final List<Query$Visitors$visitors$values$additionalDetails$persons?>?
      persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$place = place;
    _resultData['place'] = l$place?.toJson();
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
    final l$block = block;
    _resultData['block'] = l$block?.toJson();
    final l$floor = floor;
    _resultData['floor'] = l$floor?.toJson();
    final l$persons = persons;
    _resultData['persons'] = l$persons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$place = place;
    final l$account = account;
    final l$block = block;
    final l$floor = floor;
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$place,
      l$account,
      l$block,
      l$floor,
      l$persons == null ? null : Object.hashAll(l$persons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$place = place;
    final lOther$place = other.place;
    if (l$place != lOther$place) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$block = block;
    final lOther$block = other.block;
    if (l$block != lOther$block) {
      return false;
    }
    final l$floor = floor;
    final lOther$floor = other.floor;
    if (l$floor != lOther$floor) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails
    on Query$Visitors$visitors$values$additionalDetails {
  CopyWith$Query$Visitors$visitors$values$additionalDetails<
          Query$Visitors$visitors$values$additionalDetails>
      get copyWith => CopyWith$Query$Visitors$visitors$values$additionalDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails(
    Query$Visitors$visitors$values$additionalDetails instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails;

  TRes call({
    Query$Visitors$visitors$values$additionalDetails$place? place,
    Query$Visitors$visitors$values$additionalDetails$account? account,
    Query$Visitors$visitors$values$additionalDetails$block? block,
    Query$Visitors$visitors$values$additionalDetails$floor? floor,
    List<Query$Visitors$visitors$values$additionalDetails$persons?>? persons,
    String? $__typename,
  });
  CopyWith$Query$Visitors$visitors$values$additionalDetails$place<TRes>
      get place;
  CopyWith$Query$Visitors$visitors$values$additionalDetails$account<TRes>
      get account;
  CopyWith$Query$Visitors$visitors$values$additionalDetails$block<TRes>
      get block;
  CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<TRes>
      get floor;
  TRes persons(
      Iterable<Query$Visitors$visitors$values$additionalDetails$persons?>? Function(
              Iterable<
                  CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
                      Query$Visitors$visitors$values$additionalDetails$persons>?>?)
          _fn);
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails<TRes>
    implements CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? place = _undefined,
    Object? account = _undefined,
    Object? block = _undefined,
    Object? floor = _undefined,
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails(
        place: place == _undefined
            ? _instance.place
            : (place
                as Query$Visitors$visitors$values$additionalDetails$place?),
        account: account == _undefined
            ? _instance.account
            : (account
                as Query$Visitors$visitors$values$additionalDetails$account?),
        block: block == _undefined
            ? _instance.block
            : (block
                as Query$Visitors$visitors$values$additionalDetails$block?),
        floor: floor == _undefined
            ? _instance.floor
            : (floor
                as Query$Visitors$visitors$values$additionalDetails$floor?),
        persons: persons == _undefined
            ? _instance.persons
            : (persons as List<
                Query$Visitors$visitors$values$additionalDetails$persons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Visitors$visitors$values$additionalDetails$place<TRes>
      get place {
    final local$place = _instance.place;
    return local$place == null
        ? CopyWith$Query$Visitors$visitors$values$additionalDetails$place.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$additionalDetails$place(
            local$place, (e) => call(place: e));
  }

  CopyWith$Query$Visitors$visitors$values$additionalDetails$account<TRes>
      get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$Visitors$visitors$values$additionalDetails$account
            .stub(_then(_instance))
        : CopyWith$Query$Visitors$visitors$values$additionalDetails$account(
            local$account, (e) => call(account: e));
  }

  CopyWith$Query$Visitors$visitors$values$additionalDetails$block<TRes>
      get block {
    final local$block = _instance.block;
    return local$block == null
        ? CopyWith$Query$Visitors$visitors$values$additionalDetails$block.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$additionalDetails$block(
            local$block, (e) => call(block: e));
  }

  CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<TRes>
      get floor {
    final local$floor = _instance.floor;
    return local$floor == null
        ? CopyWith$Query$Visitors$visitors$values$additionalDetails$floor.stub(
            _then(_instance))
        : CopyWith$Query$Visitors$visitors$values$additionalDetails$floor(
            local$floor, (e) => call(floor: e));
  }

  TRes persons(
          Iterable<Query$Visitors$visitors$values$additionalDetails$persons?>? Function(
                  Iterable<
                      CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
                          Query$Visitors$visitors$values$additionalDetails$persons>?>?)
              _fn) =>
      call(
          persons: _fn(_instance.persons?.map((e) => e == null
              ? null
              : CopyWith$Query$Visitors$visitors$values$additionalDetails$persons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails<TRes>
    implements CopyWith$Query$Visitors$visitors$values$additionalDetails<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails(this._res);

  TRes _res;

  call({
    Query$Visitors$visitors$values$additionalDetails$place? place,
    Query$Visitors$visitors$values$additionalDetails$account? account,
    Query$Visitors$visitors$values$additionalDetails$block? block,
    Query$Visitors$visitors$values$additionalDetails$floor? floor,
    List<Query$Visitors$visitors$values$additionalDetails$persons?>? persons,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Visitors$visitors$values$additionalDetails$place<TRes>
      get place =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$place.stub(
              _res);
  CopyWith$Query$Visitors$visitors$values$additionalDetails$account<TRes>
      get account =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$account
              .stub(_res);
  CopyWith$Query$Visitors$visitors$values$additionalDetails$block<TRes>
      get block =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$block.stub(
              _res);
  CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<TRes>
      get floor =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$floor.stub(
              _res);
  persons(_fn) => _res;
}

class Query$Visitors$visitors$values$additionalDetails$place {
  Query$Visitors$visitors$values$additionalDetails$place({
    this.name,
    this.$__typename = 'Place',
  });

  factory Query$Visitors$visitors$values$additionalDetails$place.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails$place(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails$place) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails$place
    on Query$Visitors$visitors$values$additionalDetails$place {
  CopyWith$Query$Visitors$visitors$values$additionalDetails$place<
          Query$Visitors$visitors$values$additionalDetails$place>
      get copyWith =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$place(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails$place<
    TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$place(
    Query$Visitors$visitors$values$additionalDetails$place instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails$place) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$place;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$place.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$place;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$place<TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$place<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$place(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails$place _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails$place)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails$place(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$place<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$place<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$place(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$additionalDetails$account {
  Query$Visitors$visitors$values$additionalDetails$account({
    this.name,
    this.$__typename = 'Account',
  });

  factory Query$Visitors$visitors$values$additionalDetails$account.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails$account(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails$account) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails$account
    on Query$Visitors$visitors$values$additionalDetails$account {
  CopyWith$Query$Visitors$visitors$values$additionalDetails$account<
          Query$Visitors$visitors$values$additionalDetails$account>
      get copyWith =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails$account<
    TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$account(
    Query$Visitors$visitors$values$additionalDetails$account instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails$account)
        then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$account;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$account.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$account;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$account<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$account<
            TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$account(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails$account _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails$account)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails$account(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$account<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$account<
            TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$account(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$additionalDetails$block {
  Query$Visitors$visitors$values$additionalDetails$block({
    this.name,
    this.$__typename = 'Block',
  });

  factory Query$Visitors$visitors$values$additionalDetails$block.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails$block(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails$block) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails$block
    on Query$Visitors$visitors$values$additionalDetails$block {
  CopyWith$Query$Visitors$visitors$values$additionalDetails$block<
          Query$Visitors$visitors$values$additionalDetails$block>
      get copyWith =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$block(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails$block<
    TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$block(
    Query$Visitors$visitors$values$additionalDetails$block instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails$block) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$block;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$block.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$block;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$block<TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$block<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$block(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails$block _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails$block)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails$block(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$block<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$block<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$block(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$additionalDetails$floor {
  Query$Visitors$visitors$values$additionalDetails$floor({
    this.no,
    this.$__typename = 'Floor',
  });

  factory Query$Visitors$visitors$values$additionalDetails$floor.fromJson(
      Map<String, dynamic> json) {
    final l$no = json['no'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails$floor(
      no: (l$no as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? no;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$no = no;
    _resultData['no'] = l$no;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$no = no;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$no,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails$floor) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails$floor
    on Query$Visitors$visitors$values$additionalDetails$floor {
  CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<
          Query$Visitors$visitors$values$additionalDetails$floor>
      get copyWith =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$floor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<
    TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$floor(
    Query$Visitors$visitors$values$additionalDetails$floor instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails$floor) then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$floor;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$floor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$floor;

  TRes call({
    int? no,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$floor<TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$floor(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails$floor _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails$floor)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? no = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails$floor(
        no: no == _undefined ? _instance.no : (no as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$floor<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$floor<TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$floor(
      this._res);

  TRes _res;

  call({
    int? no,
    String? $__typename,
  }) =>
      _res;
}

class Query$Visitors$visitors$values$additionalDetails$persons {
  Query$Visitors$visitors$values$additionalDetails$persons({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.emailAddress,
    this.$__typename = 'Person',
  });

  factory Query$Visitors$visitors$values$additionalDetails$persons.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$Visitors$visitors$values$additionalDetails$persons(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      phoneNumber: (l$phoneNumber as String?),
      emailAddress: (l$emailAddress as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String? phoneNumber;

  final String? emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$emailAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Visitors$visitors$values$additionalDetails$persons) ||
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
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$Visitors$visitors$values$additionalDetails$persons
    on Query$Visitors$visitors$values$additionalDetails$persons {
  CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
          Query$Visitors$visitors$values$additionalDetails$persons>
      get copyWith =>
          CopyWith$Query$Visitors$visitors$values$additionalDetails$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
    TRes> {
  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$persons(
    Query$Visitors$visitors$values$additionalDetails$persons instance,
    TRes Function(Query$Visitors$visitors$values$additionalDetails$persons)
        then,
  ) = _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$persons;

  factory CopyWith$Query$Visitors$visitors$values$additionalDetails$persons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$persons;

  TRes call({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$persons<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
            TRes> {
  _CopyWithImpl$Query$Visitors$visitors$values$additionalDetails$persons(
    this._instance,
    this._then,
  );

  final Query$Visitors$visitors$values$additionalDetails$persons _instance;

  final TRes Function(Query$Visitors$visitors$values$additionalDetails$persons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Visitors$visitors$values$additionalDetails$persons(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        emailAddress: emailAddress == _undefined
            ? _instance.emailAddress
            : (emailAddress as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$persons<
        TRes>
    implements
        CopyWith$Query$Visitors$visitors$values$additionalDetails$persons<
            TRes> {
  _CopyWithStubImpl$Query$Visitors$visitors$values$additionalDetails$persons(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? $__typename,
  }) =>
      _res;
}
