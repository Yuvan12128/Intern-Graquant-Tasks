import '../../../../data/graphql/component/schema.graphql.dart';

import 'dart:async';

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$DeleteVisitor {
  factory Variables$Mutation$DeleteVisitor({
    required String id,
    Input$Options? options,
  }) => Variables$Mutation$DeleteVisitor._({
    r'id': id,
    if (options != null) r'options': options,
  });

  Variables$Mutation$DeleteVisitor._(this._$data);

  factory Variables$Mutation$DeleteVisitor.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$Options.fromJson((l$options as Map<String, dynamic>));
    }
    return Variables$Mutation$DeleteVisitor._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$Options? get options => (_$data['options'] as Input$Options?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteVisitor<Variables$Mutation$DeleteVisitor>
  get copyWith => CopyWith$Variables$Mutation$DeleteVisitor(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteVisitor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$options = options;
    return Object.hashAll([
      l$id,
      _$data.containsKey('options') ? l$options : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteVisitor<TRes> {
  factory CopyWith$Variables$Mutation$DeleteVisitor(
    Variables$Mutation$DeleteVisitor instance,
    TRes Function(Variables$Mutation$DeleteVisitor) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteVisitor;

  factory CopyWith$Variables$Mutation$DeleteVisitor.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteVisitor;

  TRes call({String? id, Input$Options? options});
}

class _CopyWithImpl$Variables$Mutation$DeleteVisitor<TRes>
    implements CopyWith$Variables$Mutation$DeleteVisitor<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteVisitor(this._instance, this._then);

  final Variables$Mutation$DeleteVisitor _instance;

  final TRes Function(Variables$Mutation$DeleteVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? options = _undefined}) => _then(
    Variables$Mutation$DeleteVisitor._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (options != _undefined) 'options': (options as Input$Options?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteVisitor<TRes>
    implements CopyWith$Variables$Mutation$DeleteVisitor<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteVisitor(this._res);

  TRes _res;

  call({String? id, Input$Options? options}) => _res;
}

class Mutation$DeleteVisitor {
  Mutation$DeleteVisitor({
    required this.deleteVisitor,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteVisitor.fromJson(Map<String, dynamic> json) {
    final l$deleteVisitor = json['deleteVisitor'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteVisitor(
      deleteVisitor: Mutation$DeleteVisitor$deleteVisitor.fromJson(
        (l$deleteVisitor as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteVisitor$deleteVisitor deleteVisitor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteVisitor = deleteVisitor;
    _resultData['deleteVisitor'] = l$deleteVisitor.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteVisitor = deleteVisitor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteVisitor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteVisitor || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteVisitor = deleteVisitor;
    final lOther$deleteVisitor = other.deleteVisitor;
    if (l$deleteVisitor != lOther$deleteVisitor) {
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

extension UtilityExtension$Mutation$DeleteVisitor on Mutation$DeleteVisitor {
  CopyWith$Mutation$DeleteVisitor<Mutation$DeleteVisitor> get copyWith =>
      CopyWith$Mutation$DeleteVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteVisitor<TRes> {
  factory CopyWith$Mutation$DeleteVisitor(
    Mutation$DeleteVisitor instance,
    TRes Function(Mutation$DeleteVisitor) then,
  ) = _CopyWithImpl$Mutation$DeleteVisitor;

  factory CopyWith$Mutation$DeleteVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteVisitor;

  TRes call({
    Mutation$DeleteVisitor$deleteVisitor? deleteVisitor,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> get deleteVisitor;
}

class _CopyWithImpl$Mutation$DeleteVisitor<TRes>
    implements CopyWith$Mutation$DeleteVisitor<TRes> {
  _CopyWithImpl$Mutation$DeleteVisitor(this._instance, this._then);

  final Mutation$DeleteVisitor _instance;

  final TRes Function(Mutation$DeleteVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteVisitor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteVisitor(
      deleteVisitor: deleteVisitor == _undefined || deleteVisitor == null
          ? _instance.deleteVisitor
          : (deleteVisitor as Mutation$DeleteVisitor$deleteVisitor),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> get deleteVisitor {
    final local$deleteVisitor = _instance.deleteVisitor;
    return CopyWith$Mutation$DeleteVisitor$deleteVisitor(
      local$deleteVisitor,
      (e) => call(deleteVisitor: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteVisitor<TRes>
    implements CopyWith$Mutation$DeleteVisitor<TRes> {
  _CopyWithStubImpl$Mutation$DeleteVisitor(this._res);

  TRes _res;

  call({
    Mutation$DeleteVisitor$deleteVisitor? deleteVisitor,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> get deleteVisitor =>
      CopyWith$Mutation$DeleteVisitor$deleteVisitor.stub(_res);
}

const documentNodeMutationDeleteVisitor = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteVisitor'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
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
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteVisitor'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'options'),
                value: VariableNode(name: NameNode(value: 'options')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'source'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Mutation$DeleteVisitor _parserFn$Mutation$DeleteVisitor(
  Map<String, dynamic> data,
) => Mutation$DeleteVisitor.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteVisitor = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteVisitor?,
);

class Options$Mutation$DeleteVisitor
    extends graphql.MutationOptions<Mutation$DeleteVisitor> {
  Options$Mutation$DeleteVisitor({
    String? operationName,
    required Variables$Mutation$DeleteVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteVisitor? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteVisitor? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteVisitor>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
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
                 data == null ? null : _parserFn$Mutation$DeleteVisitor(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationDeleteVisitor,
         parserFn: _parserFn$Mutation$DeleteVisitor,
       );

  final OnMutationCompleted$Mutation$DeleteVisitor? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$DeleteVisitor
    extends graphql.WatchQueryOptions<Mutation$DeleteVisitor> {
  WatchOptions$Mutation$DeleteVisitor({
    String? operationName,
    required Variables$Mutation$DeleteVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteVisitor? typedOptimisticResult,
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
         document: documentNodeMutationDeleteVisitor,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$DeleteVisitor,
       );
}

extension ClientExtension$Mutation$DeleteVisitor on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteVisitor>> mutate$DeleteVisitor(
    Options$Mutation$DeleteVisitor options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$DeleteVisitor> watchMutation$DeleteVisitor(
    WatchOptions$Mutation$DeleteVisitor options,
  ) => this.watchMutation(options);
}

class Mutation$DeleteVisitor$deleteVisitor {
  Mutation$DeleteVisitor$deleteVisitor({
    this.source,
    this.$__typename = 'VisitorMutationResponse',
  });

  factory Mutation$DeleteVisitor$deleteVisitor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteVisitor$deleteVisitor(
      source: l$source == null
          ? null
          : Mutation$DeleteVisitor$deleteVisitor$source.fromJson(
              (l$source as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteVisitor$deleteVisitor$source? source;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$source = source;
    _resultData['source'] = l$source?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$source = source;
    final l$$__typename = $__typename;
    return Object.hashAll([l$source, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteVisitor$deleteVisitor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
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

extension UtilityExtension$Mutation$DeleteVisitor$deleteVisitor
    on Mutation$DeleteVisitor$deleteVisitor {
  CopyWith$Mutation$DeleteVisitor$deleteVisitor<
    Mutation$DeleteVisitor$deleteVisitor
  >
  get copyWith => CopyWith$Mutation$DeleteVisitor$deleteVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> {
  factory CopyWith$Mutation$DeleteVisitor$deleteVisitor(
    Mutation$DeleteVisitor$deleteVisitor instance,
    TRes Function(Mutation$DeleteVisitor$deleteVisitor) then,
  ) = _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor;

  factory CopyWith$Mutation$DeleteVisitor$deleteVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor;

  TRes call({
    Mutation$DeleteVisitor$deleteVisitor$source? source,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> get source;
}

class _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor<TRes>
    implements CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> {
  _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor(
    this._instance,
    this._then,
  );

  final Mutation$DeleteVisitor$deleteVisitor _instance;

  final TRes Function(Mutation$DeleteVisitor$deleteVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? source = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteVisitor$deleteVisitor(
          source: source == _undefined
              ? _instance.source
              : (source as Mutation$DeleteVisitor$deleteVisitor$source?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Mutation$DeleteVisitor$deleteVisitor$source.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteVisitor$deleteVisitor$source(
            local$source,
            (e) => call(source: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor<TRes>
    implements CopyWith$Mutation$DeleteVisitor$deleteVisitor<TRes> {
  _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor(this._res);

  TRes _res;

  call({
    Mutation$DeleteVisitor$deleteVisitor$source? source,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> get source =>
      CopyWith$Mutation$DeleteVisitor$deleteVisitor$source.stub(_res);
}

class Mutation$DeleteVisitor$deleteVisitor$source {
  Mutation$DeleteVisitor$deleteVisitor$source({
    this.id,
    this.$__typename = 'Visitor',
  });

  factory Mutation$DeleteVisitor$deleteVisitor$source.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteVisitor$deleteVisitor$source(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteVisitor$deleteVisitor$source ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$DeleteVisitor$deleteVisitor$source
    on Mutation$DeleteVisitor$deleteVisitor$source {
  CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<
    Mutation$DeleteVisitor$deleteVisitor$source
  >
  get copyWith =>
      CopyWith$Mutation$DeleteVisitor$deleteVisitor$source(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> {
  factory CopyWith$Mutation$DeleteVisitor$deleteVisitor$source(
    Mutation$DeleteVisitor$deleteVisitor$source instance,
    TRes Function(Mutation$DeleteVisitor$deleteVisitor$source) then,
  ) = _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor$source;

  factory CopyWith$Mutation$DeleteVisitor$deleteVisitor$source.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor$source;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor$source<TRes>
    implements CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> {
  _CopyWithImpl$Mutation$DeleteVisitor$deleteVisitor$source(
    this._instance,
    this._then,
  );

  final Mutation$DeleteVisitor$deleteVisitor$source _instance;

  final TRes Function(Mutation$DeleteVisitor$deleteVisitor$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteVisitor$deleteVisitor$source(
          id: id == _undefined ? _instance.id : (id as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor$source<TRes>
    implements CopyWith$Mutation$DeleteVisitor$deleteVisitor$source<TRes> {
  _CopyWithStubImpl$Mutation$DeleteVisitor$deleteVisitor$source(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
