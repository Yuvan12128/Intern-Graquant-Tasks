import '../../../../data/graphql/component/schema.graphql.dart';

import 'dart:async';

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CreateVisitor {
  factory Variables$Mutation$CreateVisitor({
    required Input$VisitorRequest payload,
  }) => Variables$Mutation$CreateVisitor._({r'payload': payload});

  Variables$Mutation$CreateVisitor._(this._$data);

  factory Variables$Mutation$CreateVisitor.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payload = data['payload'];
    result$data['payload'] = Input$VisitorRequest.fromJson(
      (l$payload as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateVisitor._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VisitorRequest get payload =>
      (_$data['payload'] as Input$VisitorRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payload = payload;
    result$data['payload'] = l$payload.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateVisitor<Variables$Mutation$CreateVisitor>
  get copyWith => CopyWith$Variables$Mutation$CreateVisitor(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateVisitor ||
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

abstract class CopyWith$Variables$Mutation$CreateVisitor<TRes> {
  factory CopyWith$Variables$Mutation$CreateVisitor(
    Variables$Mutation$CreateVisitor instance,
    TRes Function(Variables$Mutation$CreateVisitor) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateVisitor;

  factory CopyWith$Variables$Mutation$CreateVisitor.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateVisitor;

  TRes call({Input$VisitorRequest? payload});
}

class _CopyWithImpl$Variables$Mutation$CreateVisitor<TRes>
    implements CopyWith$Variables$Mutation$CreateVisitor<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateVisitor(this._instance, this._then);

  final Variables$Mutation$CreateVisitor _instance;

  final TRes Function(Variables$Mutation$CreateVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? payload = _undefined}) => _then(
    Variables$Mutation$CreateVisitor._({
      ..._instance._$data,
      if (payload != _undefined && payload != null)
        'payload': (payload as Input$VisitorRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateVisitor<TRes>
    implements CopyWith$Variables$Mutation$CreateVisitor<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateVisitor(this._res);

  TRes _res;

  call({Input$VisitorRequest? payload}) => _res;
}

class Mutation$CreateVisitor {
  Mutation$CreateVisitor({
    required this.createVisitor,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateVisitor.fromJson(Map<String, dynamic> json) {
    final l$createVisitor = json['createVisitor'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateVisitor(
      createVisitor: Mutation$CreateVisitor$createVisitor.fromJson(
        (l$createVisitor as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateVisitor$createVisitor createVisitor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createVisitor = createVisitor;
    _resultData['createVisitor'] = l$createVisitor.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createVisitor = createVisitor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createVisitor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateVisitor || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createVisitor = createVisitor;
    final lOther$createVisitor = other.createVisitor;
    if (l$createVisitor != lOther$createVisitor) {
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

extension UtilityExtension$Mutation$CreateVisitor on Mutation$CreateVisitor {
  CopyWith$Mutation$CreateVisitor<Mutation$CreateVisitor> get copyWith =>
      CopyWith$Mutation$CreateVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateVisitor<TRes> {
  factory CopyWith$Mutation$CreateVisitor(
    Mutation$CreateVisitor instance,
    TRes Function(Mutation$CreateVisitor) then,
  ) = _CopyWithImpl$Mutation$CreateVisitor;

  factory CopyWith$Mutation$CreateVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateVisitor;

  TRes call({
    Mutation$CreateVisitor$createVisitor? createVisitor,
    String? $__typename,
  });
  CopyWith$Mutation$CreateVisitor$createVisitor<TRes> get createVisitor;
}

class _CopyWithImpl$Mutation$CreateVisitor<TRes>
    implements CopyWith$Mutation$CreateVisitor<TRes> {
  _CopyWithImpl$Mutation$CreateVisitor(this._instance, this._then);

  final Mutation$CreateVisitor _instance;

  final TRes Function(Mutation$CreateVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createVisitor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateVisitor(
      createVisitor: createVisitor == _undefined || createVisitor == null
          ? _instance.createVisitor
          : (createVisitor as Mutation$CreateVisitor$createVisitor),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateVisitor$createVisitor<TRes> get createVisitor {
    final local$createVisitor = _instance.createVisitor;
    return CopyWith$Mutation$CreateVisitor$createVisitor(
      local$createVisitor,
      (e) => call(createVisitor: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateVisitor<TRes>
    implements CopyWith$Mutation$CreateVisitor<TRes> {
  _CopyWithStubImpl$Mutation$CreateVisitor(this._res);

  TRes _res;

  call({
    Mutation$CreateVisitor$createVisitor? createVisitor,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateVisitor$createVisitor<TRes> get createVisitor =>
      CopyWith$Mutation$CreateVisitor$createVisitor.stub(_res);
}

const documentNodeMutationCreateVisitor = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateVisitor'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'payload')),
          type: NamedTypeNode(
            name: NameNode(value: 'VisitorRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createVisitor'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'payload'),
                value: VariableNode(name: NameNode(value: 'payload')),
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
Mutation$CreateVisitor _parserFn$Mutation$CreateVisitor(
  Map<String, dynamic> data,
) => Mutation$CreateVisitor.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateVisitor = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateVisitor?,
);

class Options$Mutation$CreateVisitor
    extends graphql.MutationOptions<Mutation$CreateVisitor> {
  Options$Mutation$CreateVisitor({
    String? operationName,
    required Variables$Mutation$CreateVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateVisitor? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateVisitor? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateVisitor>? update,
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
                 data == null ? null : _parserFn$Mutation$CreateVisitor(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreateVisitor,
         parserFn: _parserFn$Mutation$CreateVisitor,
       );

  final OnMutationCompleted$Mutation$CreateVisitor? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CreateVisitor
    extends graphql.WatchQueryOptions<Mutation$CreateVisitor> {
  WatchOptions$Mutation$CreateVisitor({
    String? operationName,
    required Variables$Mutation$CreateVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateVisitor? typedOptimisticResult,
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
         document: documentNodeMutationCreateVisitor,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CreateVisitor,
       );
}

extension ClientExtension$Mutation$CreateVisitor on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateVisitor>> mutate$CreateVisitor(
    Options$Mutation$CreateVisitor options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreateVisitor> watchMutation$CreateVisitor(
    WatchOptions$Mutation$CreateVisitor options,
  ) => this.watchMutation(options);
}

class Mutation$CreateVisitor$createVisitor {
  Mutation$CreateVisitor$createVisitor({
    this.source,
    this.$__typename = 'VisitorMutationResponse',
  });

  factory Mutation$CreateVisitor$createVisitor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateVisitor$createVisitor(
      source: l$source == null
          ? null
          : Mutation$CreateVisitor$createVisitor$source.fromJson(
              (l$source as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateVisitor$createVisitor$source? source;

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
    if (other is! Mutation$CreateVisitor$createVisitor ||
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

extension UtilityExtension$Mutation$CreateVisitor$createVisitor
    on Mutation$CreateVisitor$createVisitor {
  CopyWith$Mutation$CreateVisitor$createVisitor<
    Mutation$CreateVisitor$createVisitor
  >
  get copyWith => CopyWith$Mutation$CreateVisitor$createVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateVisitor$createVisitor<TRes> {
  factory CopyWith$Mutation$CreateVisitor$createVisitor(
    Mutation$CreateVisitor$createVisitor instance,
    TRes Function(Mutation$CreateVisitor$createVisitor) then,
  ) = _CopyWithImpl$Mutation$CreateVisitor$createVisitor;

  factory CopyWith$Mutation$CreateVisitor$createVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor;

  TRes call({
    Mutation$CreateVisitor$createVisitor$source? source,
    String? $__typename,
  });
  CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> get source;
}

class _CopyWithImpl$Mutation$CreateVisitor$createVisitor<TRes>
    implements CopyWith$Mutation$CreateVisitor$createVisitor<TRes> {
  _CopyWithImpl$Mutation$CreateVisitor$createVisitor(
    this._instance,
    this._then,
  );

  final Mutation$CreateVisitor$createVisitor _instance;

  final TRes Function(Mutation$CreateVisitor$createVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? source = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateVisitor$createVisitor(
          source: source == _undefined
              ? _instance.source
              : (source as Mutation$CreateVisitor$createVisitor$source?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Mutation$CreateVisitor$createVisitor$source.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateVisitor$createVisitor$source(
            local$source,
            (e) => call(source: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor<TRes>
    implements CopyWith$Mutation$CreateVisitor$createVisitor<TRes> {
  _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor(this._res);

  TRes _res;

  call({
    Mutation$CreateVisitor$createVisitor$source? source,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> get source =>
      CopyWith$Mutation$CreateVisitor$createVisitor$source.stub(_res);
}

class Mutation$CreateVisitor$createVisitor$source {
  Mutation$CreateVisitor$createVisitor$source({
    this.id,
    required this.firstName,
    this.lastName,
    this.emailAddress,
    this.phoneNumber,
    this.$__typename = 'Visitor',
  });

  factory Mutation$CreateVisitor$createVisitor$source.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$phoneNumber = json['phoneNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateVisitor$createVisitor$source(
      id: (l$id as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String?),
      emailAddress: (l$emailAddress as String?),
      phoneNumber: (l$phoneNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String firstName;

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
    if (other is! Mutation$CreateVisitor$createVisitor$source ||
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

extension UtilityExtension$Mutation$CreateVisitor$createVisitor$source
    on Mutation$CreateVisitor$createVisitor$source {
  CopyWith$Mutation$CreateVisitor$createVisitor$source<
    Mutation$CreateVisitor$createVisitor$source
  >
  get copyWith =>
      CopyWith$Mutation$CreateVisitor$createVisitor$source(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> {
  factory CopyWith$Mutation$CreateVisitor$createVisitor$source(
    Mutation$CreateVisitor$createVisitor$source instance,
    TRes Function(Mutation$CreateVisitor$createVisitor$source) then,
  ) = _CopyWithImpl$Mutation$CreateVisitor$createVisitor$source;

  factory CopyWith$Mutation$CreateVisitor$createVisitor$source.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor$source;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateVisitor$createVisitor$source<TRes>
    implements CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> {
  _CopyWithImpl$Mutation$CreateVisitor$createVisitor$source(
    this._instance,
    this._then,
  );

  final Mutation$CreateVisitor$createVisitor$source _instance;

  final TRes Function(Mutation$CreateVisitor$createVisitor$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateVisitor$createVisitor$source(
      id: id == _undefined ? _instance.id : (id as String?),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      emailAddress: emailAddress == _undefined
          ? _instance.emailAddress
          : (emailAddress as String?),
      phoneNumber: phoneNumber == _undefined
          ? _instance.phoneNumber
          : (phoneNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor$source<TRes>
    implements CopyWith$Mutation$CreateVisitor$createVisitor$source<TRes> {
  _CopyWithStubImpl$Mutation$CreateVisitor$createVisitor$source(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  }) => _res;
}

class Variables$Mutation$UpdateVisitor {
  factory Variables$Mutation$UpdateVisitor({
    required String id,
    required Input$VisitorRequest payload,
  }) => Variables$Mutation$UpdateVisitor._({r'id': id, r'payload': payload});

  Variables$Mutation$UpdateVisitor._(this._$data);

  factory Variables$Mutation$UpdateVisitor.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$payload = data['payload'];
    result$data['payload'] = Input$VisitorRequest.fromJson(
      (l$payload as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateVisitor._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$VisitorRequest get payload =>
      (_$data['payload'] as Input$VisitorRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$payload = payload;
    result$data['payload'] = l$payload.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateVisitor<Variables$Mutation$UpdateVisitor>
  get copyWith => CopyWith$Variables$Mutation$UpdateVisitor(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateVisitor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$payload = payload;
    return Object.hashAll([l$id, l$payload]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateVisitor<TRes> {
  factory CopyWith$Variables$Mutation$UpdateVisitor(
    Variables$Mutation$UpdateVisitor instance,
    TRes Function(Variables$Mutation$UpdateVisitor) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateVisitor;

  factory CopyWith$Variables$Mutation$UpdateVisitor.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateVisitor;

  TRes call({String? id, Input$VisitorRequest? payload});
}

class _CopyWithImpl$Variables$Mutation$UpdateVisitor<TRes>
    implements CopyWith$Variables$Mutation$UpdateVisitor<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateVisitor(this._instance, this._then);

  final Variables$Mutation$UpdateVisitor _instance;

  final TRes Function(Variables$Mutation$UpdateVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? payload = _undefined}) => _then(
    Variables$Mutation$UpdateVisitor._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (payload != _undefined && payload != null)
        'payload': (payload as Input$VisitorRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateVisitor<TRes>
    implements CopyWith$Variables$Mutation$UpdateVisitor<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateVisitor(this._res);

  TRes _res;

  call({String? id, Input$VisitorRequest? payload}) => _res;
}

class Mutation$UpdateVisitor {
  Mutation$UpdateVisitor({
    required this.updateVisitor,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateVisitor.fromJson(Map<String, dynamic> json) {
    final l$updateVisitor = json['updateVisitor'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateVisitor(
      updateVisitor: Mutation$UpdateVisitor$updateVisitor.fromJson(
        (l$updateVisitor as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateVisitor$updateVisitor updateVisitor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateVisitor = updateVisitor;
    _resultData['updateVisitor'] = l$updateVisitor.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateVisitor = updateVisitor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateVisitor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateVisitor || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateVisitor = updateVisitor;
    final lOther$updateVisitor = other.updateVisitor;
    if (l$updateVisitor != lOther$updateVisitor) {
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

extension UtilityExtension$Mutation$UpdateVisitor on Mutation$UpdateVisitor {
  CopyWith$Mutation$UpdateVisitor<Mutation$UpdateVisitor> get copyWith =>
      CopyWith$Mutation$UpdateVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateVisitor<TRes> {
  factory CopyWith$Mutation$UpdateVisitor(
    Mutation$UpdateVisitor instance,
    TRes Function(Mutation$UpdateVisitor) then,
  ) = _CopyWithImpl$Mutation$UpdateVisitor;

  factory CopyWith$Mutation$UpdateVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateVisitor;

  TRes call({
    Mutation$UpdateVisitor$updateVisitor? updateVisitor,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> get updateVisitor;
}

class _CopyWithImpl$Mutation$UpdateVisitor<TRes>
    implements CopyWith$Mutation$UpdateVisitor<TRes> {
  _CopyWithImpl$Mutation$UpdateVisitor(this._instance, this._then);

  final Mutation$UpdateVisitor _instance;

  final TRes Function(Mutation$UpdateVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateVisitor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateVisitor(
      updateVisitor: updateVisitor == _undefined || updateVisitor == null
          ? _instance.updateVisitor
          : (updateVisitor as Mutation$UpdateVisitor$updateVisitor),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> get updateVisitor {
    final local$updateVisitor = _instance.updateVisitor;
    return CopyWith$Mutation$UpdateVisitor$updateVisitor(
      local$updateVisitor,
      (e) => call(updateVisitor: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateVisitor<TRes>
    implements CopyWith$Mutation$UpdateVisitor<TRes> {
  _CopyWithStubImpl$Mutation$UpdateVisitor(this._res);

  TRes _res;

  call({
    Mutation$UpdateVisitor$updateVisitor? updateVisitor,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> get updateVisitor =>
      CopyWith$Mutation$UpdateVisitor$updateVisitor.stub(_res);
}

const documentNodeMutationUpdateVisitor = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateVisitor'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'payload')),
          type: NamedTypeNode(
            name: NameNode(value: 'VisitorRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateVisitor'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'payload'),
                value: VariableNode(name: NameNode(value: 'payload')),
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
Mutation$UpdateVisitor _parserFn$Mutation$UpdateVisitor(
  Map<String, dynamic> data,
) => Mutation$UpdateVisitor.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateVisitor = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateVisitor?,
);

class Options$Mutation$UpdateVisitor
    extends graphql.MutationOptions<Mutation$UpdateVisitor> {
  Options$Mutation$UpdateVisitor({
    String? operationName,
    required Variables$Mutation$UpdateVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateVisitor? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateVisitor? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateVisitor>? update,
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
                 data == null ? null : _parserFn$Mutation$UpdateVisitor(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateVisitor,
         parserFn: _parserFn$Mutation$UpdateVisitor,
       );

  final OnMutationCompleted$Mutation$UpdateVisitor? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UpdateVisitor
    extends graphql.WatchQueryOptions<Mutation$UpdateVisitor> {
  WatchOptions$Mutation$UpdateVisitor({
    String? operationName,
    required Variables$Mutation$UpdateVisitor variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateVisitor? typedOptimisticResult,
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
         document: documentNodeMutationUpdateVisitor,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UpdateVisitor,
       );
}

extension ClientExtension$Mutation$UpdateVisitor on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateVisitor>> mutate$UpdateVisitor(
    Options$Mutation$UpdateVisitor options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$UpdateVisitor> watchMutation$UpdateVisitor(
    WatchOptions$Mutation$UpdateVisitor options,
  ) => this.watchMutation(options);
}

class Mutation$UpdateVisitor$updateVisitor {
  Mutation$UpdateVisitor$updateVisitor({
    this.source,
    this.$__typename = 'VisitorMutationResponse',
  });

  factory Mutation$UpdateVisitor$updateVisitor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateVisitor$updateVisitor(
      source: l$source == null
          ? null
          : Mutation$UpdateVisitor$updateVisitor$source.fromJson(
              (l$source as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateVisitor$updateVisitor$source? source;

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
    if (other is! Mutation$UpdateVisitor$updateVisitor ||
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

extension UtilityExtension$Mutation$UpdateVisitor$updateVisitor
    on Mutation$UpdateVisitor$updateVisitor {
  CopyWith$Mutation$UpdateVisitor$updateVisitor<
    Mutation$UpdateVisitor$updateVisitor
  >
  get copyWith => CopyWith$Mutation$UpdateVisitor$updateVisitor(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> {
  factory CopyWith$Mutation$UpdateVisitor$updateVisitor(
    Mutation$UpdateVisitor$updateVisitor instance,
    TRes Function(Mutation$UpdateVisitor$updateVisitor) then,
  ) = _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor;

  factory CopyWith$Mutation$UpdateVisitor$updateVisitor.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor;

  TRes call({
    Mutation$UpdateVisitor$updateVisitor$source? source,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> get source;
}

class _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor<TRes>
    implements CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> {
  _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor(
    this._instance,
    this._then,
  );

  final Mutation$UpdateVisitor$updateVisitor _instance;

  final TRes Function(Mutation$UpdateVisitor$updateVisitor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? source = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateVisitor$updateVisitor(
          source: source == _undefined
              ? _instance.source
              : (source as Mutation$UpdateVisitor$updateVisitor$source?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Mutation$UpdateVisitor$updateVisitor$source.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateVisitor$updateVisitor$source(
            local$source,
            (e) => call(source: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor<TRes>
    implements CopyWith$Mutation$UpdateVisitor$updateVisitor<TRes> {
  _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor(this._res);

  TRes _res;

  call({
    Mutation$UpdateVisitor$updateVisitor$source? source,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> get source =>
      CopyWith$Mutation$UpdateVisitor$updateVisitor$source.stub(_res);
}

class Mutation$UpdateVisitor$updateVisitor$source {
  Mutation$UpdateVisitor$updateVisitor$source({
    this.id,
    required this.firstName,
    this.lastName,
    this.emailAddress,
    this.phoneNumber,
    this.$__typename = 'Visitor',
  });

  factory Mutation$UpdateVisitor$updateVisitor$source.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$phoneNumber = json['phoneNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateVisitor$updateVisitor$source(
      id: (l$id as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String?),
      emailAddress: (l$emailAddress as String?),
      phoneNumber: (l$phoneNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String firstName;

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
    if (other is! Mutation$UpdateVisitor$updateVisitor$source ||
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

extension UtilityExtension$Mutation$UpdateVisitor$updateVisitor$source
    on Mutation$UpdateVisitor$updateVisitor$source {
  CopyWith$Mutation$UpdateVisitor$updateVisitor$source<
    Mutation$UpdateVisitor$updateVisitor$source
  >
  get copyWith =>
      CopyWith$Mutation$UpdateVisitor$updateVisitor$source(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> {
  factory CopyWith$Mutation$UpdateVisitor$updateVisitor$source(
    Mutation$UpdateVisitor$updateVisitor$source instance,
    TRes Function(Mutation$UpdateVisitor$updateVisitor$source) then,
  ) = _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor$source;

  factory CopyWith$Mutation$UpdateVisitor$updateVisitor$source.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor$source;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor$source<TRes>
    implements CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> {
  _CopyWithImpl$Mutation$UpdateVisitor$updateVisitor$source(
    this._instance,
    this._then,
  );

  final Mutation$UpdateVisitor$updateVisitor$source _instance;

  final TRes Function(Mutation$UpdateVisitor$updateVisitor$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateVisitor$updateVisitor$source(
      id: id == _undefined ? _instance.id : (id as String?),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      emailAddress: emailAddress == _undefined
          ? _instance.emailAddress
          : (emailAddress as String?),
      phoneNumber: phoneNumber == _undefined
          ? _instance.phoneNumber
          : (phoneNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor$source<TRes>
    implements CopyWith$Mutation$UpdateVisitor$updateVisitor$source<TRes> {
  _CopyWithStubImpl$Mutation$UpdateVisitor$updateVisitor$source(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? $__typename,
  }) => _res;
}
