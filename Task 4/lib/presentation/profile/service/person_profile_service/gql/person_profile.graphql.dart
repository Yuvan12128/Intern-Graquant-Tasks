import '../../../../../data/graphql/component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$ProfileUpdatePerson {
  factory Variables$Mutation$ProfileUpdatePerson({
    required String id,
    required Input$PersonRequest payload,
  }) =>
      Variables$Mutation$ProfileUpdatePerson._({
        r'id': id,
        r'payload': payload,
      });

  Variables$Mutation$ProfileUpdatePerson._(this._$data);

  factory Variables$Mutation$ProfileUpdatePerson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$payload = data['payload'];
    result$data['payload'] =
        Input$PersonRequest.fromJson((l$payload as Map<String, dynamic>));
    return Variables$Mutation$ProfileUpdatePerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$PersonRequest get payload => (_$data['payload'] as Input$PersonRequest);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$payload = payload;
    result$data['payload'] = l$payload.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ProfileUpdatePerson<
          Variables$Mutation$ProfileUpdatePerson>
      get copyWith => CopyWith$Variables$Mutation$ProfileUpdatePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ProfileUpdatePerson) ||
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
    return Object.hashAll([
      l$id,
      l$payload,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ProfileUpdatePerson<TRes> {
  factory CopyWith$Variables$Mutation$ProfileUpdatePerson(
    Variables$Mutation$ProfileUpdatePerson instance,
    TRes Function(Variables$Mutation$ProfileUpdatePerson) then,
  ) = _CopyWithImpl$Variables$Mutation$ProfileUpdatePerson;

  factory CopyWith$Variables$Mutation$ProfileUpdatePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ProfileUpdatePerson;

  TRes call({
    String? id,
    Input$PersonRequest? payload,
  });
}

class _CopyWithImpl$Variables$Mutation$ProfileUpdatePerson<TRes>
    implements CopyWith$Variables$Mutation$ProfileUpdatePerson<TRes> {
  _CopyWithImpl$Variables$Mutation$ProfileUpdatePerson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ProfileUpdatePerson _instance;

  final TRes Function(Variables$Mutation$ProfileUpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? payload = _undefined,
  }) =>
      _then(Variables$Mutation$ProfileUpdatePerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (payload != _undefined && payload != null)
          'payload': (payload as Input$PersonRequest),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ProfileUpdatePerson<TRes>
    implements CopyWith$Variables$Mutation$ProfileUpdatePerson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ProfileUpdatePerson(this._res);

  TRes _res;

  call({
    String? id,
    Input$PersonRequest? payload,
  }) =>
      _res;
}

class Mutation$ProfileUpdatePerson {
  Mutation$ProfileUpdatePerson({
    required this.updatePerson,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ProfileUpdatePerson.fromJson(Map<String, dynamic> json) {
    final l$updatePerson = json['updatePerson'];
    final l$$__typename = json['__typename'];
    return Mutation$ProfileUpdatePerson(
      updatePerson: Mutation$ProfileUpdatePerson$updatePerson.fromJson(
          (l$updatePerson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ProfileUpdatePerson$updatePerson updatePerson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePerson = updatePerson;
    _resultData['updatePerson'] = l$updatePerson.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePerson = updatePerson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePerson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ProfileUpdatePerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePerson = updatePerson;
    final lOther$updatePerson = other.updatePerson;
    if (l$updatePerson != lOther$updatePerson) {
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

extension UtilityExtension$Mutation$ProfileUpdatePerson
    on Mutation$ProfileUpdatePerson {
  CopyWith$Mutation$ProfileUpdatePerson<Mutation$ProfileUpdatePerson>
      get copyWith => CopyWith$Mutation$ProfileUpdatePerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ProfileUpdatePerson<TRes> {
  factory CopyWith$Mutation$ProfileUpdatePerson(
    Mutation$ProfileUpdatePerson instance,
    TRes Function(Mutation$ProfileUpdatePerson) then,
  ) = _CopyWithImpl$Mutation$ProfileUpdatePerson;

  factory CopyWith$Mutation$ProfileUpdatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ProfileUpdatePerson;

  TRes call({
    Mutation$ProfileUpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  });
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> get updatePerson;
}

class _CopyWithImpl$Mutation$ProfileUpdatePerson<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson<TRes> {
  _CopyWithImpl$Mutation$ProfileUpdatePerson(
    this._instance,
    this._then,
  );

  final Mutation$ProfileUpdatePerson _instance;

  final TRes Function(Mutation$ProfileUpdatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePerson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ProfileUpdatePerson(
        updatePerson: updatePerson == _undefined || updatePerson == null
            ? _instance.updatePerson
            : (updatePerson as Mutation$ProfileUpdatePerson$updatePerson),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> get updatePerson {
    final local$updatePerson = _instance.updatePerson;
    return CopyWith$Mutation$ProfileUpdatePerson$updatePerson(
        local$updatePerson, (e) => call(updatePerson: e));
  }
}

class _CopyWithStubImpl$Mutation$ProfileUpdatePerson<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson<TRes> {
  _CopyWithStubImpl$Mutation$ProfileUpdatePerson(this._res);

  TRes _res;

  call({
    Mutation$ProfileUpdatePerson$updatePerson? updatePerson,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> get updatePerson =>
      CopyWith$Mutation$ProfileUpdatePerson$updatePerson.stub(_res);
}

const documentNodeMutationProfileUpdatePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ProfileUpdatePerson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payload')),
        type: NamedTypeNode(
          name: NameNode(value: 'PersonRequest'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePerson'),
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
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'source'),
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
]);
Mutation$ProfileUpdatePerson _parserFn$Mutation$ProfileUpdatePerson(
        Map<String, dynamic> data) =>
    Mutation$ProfileUpdatePerson.fromJson(data);
typedef OnMutationCompleted$Mutation$ProfileUpdatePerson = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ProfileUpdatePerson?,
);

class Options$Mutation$ProfileUpdatePerson
    extends graphql.MutationOptions<Mutation$ProfileUpdatePerson> {
  Options$Mutation$ProfileUpdatePerson({
    String? operationName,
    required Variables$Mutation$ProfileUpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ProfileUpdatePerson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ProfileUpdatePerson? onCompleted,
    graphql.OnMutationUpdate<Mutation$ProfileUpdatePerson>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$ProfileUpdatePerson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationProfileUpdatePerson,
          parserFn: _parserFn$Mutation$ProfileUpdatePerson,
        );

  final OnMutationCompleted$Mutation$ProfileUpdatePerson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ProfileUpdatePerson
    extends graphql.WatchQueryOptions<Mutation$ProfileUpdatePerson> {
  WatchOptions$Mutation$ProfileUpdatePerson({
    String? operationName,
    required Variables$Mutation$ProfileUpdatePerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ProfileUpdatePerson? typedOptimisticResult,
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
          document: documentNodeMutationProfileUpdatePerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ProfileUpdatePerson,
        );
}

extension ClientExtension$Mutation$ProfileUpdatePerson
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ProfileUpdatePerson>>
      mutate$ProfileUpdatePerson(
              Options$Mutation$ProfileUpdatePerson options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ProfileUpdatePerson>
      watchMutation$ProfileUpdatePerson(
              WatchOptions$Mutation$ProfileUpdatePerson options) =>
          this.watchMutation(options);
}

class Mutation$ProfileUpdatePerson$updatePerson {
  Mutation$ProfileUpdatePerson$updatePerson({
    this.source,
    this.$__typename = 'PersonMutationResponse',
  });

  factory Mutation$ProfileUpdatePerson$updatePerson.fromJson(
      Map<String, dynamic> json) {
    final l$source = json['source'];
    final l$$__typename = json['__typename'];
    return Mutation$ProfileUpdatePerson$updatePerson(
      source: l$source == null
          ? null
          : Mutation$ProfileUpdatePerson$updatePerson$source.fromJson(
              (l$source as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ProfileUpdatePerson$updatePerson$source? source;

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
    return Object.hashAll([
      l$source,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ProfileUpdatePerson$updatePerson) ||
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

extension UtilityExtension$Mutation$ProfileUpdatePerson$updatePerson
    on Mutation$ProfileUpdatePerson$updatePerson {
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson<
          Mutation$ProfileUpdatePerson$updatePerson>
      get copyWith => CopyWith$Mutation$ProfileUpdatePerson$updatePerson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> {
  factory CopyWith$Mutation$ProfileUpdatePerson$updatePerson(
    Mutation$ProfileUpdatePerson$updatePerson instance,
    TRes Function(Mutation$ProfileUpdatePerson$updatePerson) then,
  ) = _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson;

  factory CopyWith$Mutation$ProfileUpdatePerson$updatePerson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson;

  TRes call({
    Mutation$ProfileUpdatePerson$updatePerson$source? source,
    String? $__typename,
  });
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> get source;
}

class _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> {
  _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson(
    this._instance,
    this._then,
  );

  final Mutation$ProfileUpdatePerson$updatePerson _instance;

  final TRes Function(Mutation$ProfileUpdatePerson$updatePerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? source = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ProfileUpdatePerson$updatePerson(
        source: source == _undefined
            ? _instance.source
            : (source as Mutation$ProfileUpdatePerson$updatePerson$source?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source.stub(
            _then(_instance))
        : CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source(
            local$source, (e) => call(source: e));
  }
}

class _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson$updatePerson<TRes> {
  _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson(this._res);

  TRes _res;

  call({
    Mutation$ProfileUpdatePerson$updatePerson$source? source,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> get source =>
      CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source.stub(_res);
}

class Mutation$ProfileUpdatePerson$updatePerson$source {
  Mutation$ProfileUpdatePerson$updatePerson$source({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.emailAddress,
    this.$__typename = 'Person',
  });

  factory Mutation$ProfileUpdatePerson$updatePerson$source.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Mutation$ProfileUpdatePerson$updatePerson$source(
      id: (l$id as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      phoneNumber: (l$phoneNumber as String?),
      emailAddress: (l$emailAddress as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? firstName;

  final String? lastName;

  final String? phoneNumber;

  final String? emailAddress;

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
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
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
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Mutation$ProfileUpdatePerson$updatePerson$source) ||
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

extension UtilityExtension$Mutation$ProfileUpdatePerson$updatePerson$source
    on Mutation$ProfileUpdatePerson$updatePerson$source {
  CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<
          Mutation$ProfileUpdatePerson$updatePerson$source>
      get copyWith => CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> {
  factory CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source(
    Mutation$ProfileUpdatePerson$updatePerson$source instance,
    TRes Function(Mutation$ProfileUpdatePerson$updatePerson$source) then,
  ) = _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson$source;

  factory CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson$source;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson$source<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> {
  _CopyWithImpl$Mutation$ProfileUpdatePerson$updatePerson$source(
    this._instance,
    this._then,
  );

  final Mutation$ProfileUpdatePerson$updatePerson$source _instance;

  final TRes Function(Mutation$ProfileUpdatePerson$updatePerson$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ProfileUpdatePerson$updatePerson$source(
        id: id == _undefined ? _instance.id : (id as String?),
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

class _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson$source<TRes>
    implements CopyWith$Mutation$ProfileUpdatePerson$updatePerson$source<TRes> {
  _CopyWithStubImpl$Mutation$ProfileUpdatePerson$updatePerson$source(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? $__typename,
  }) =>
      _res;
}
