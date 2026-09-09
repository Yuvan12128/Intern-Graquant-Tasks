import '../../../component/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Me {
  Query$Me({
    required this.me,
    this.$__typename = 'Query',
  });

  factory Query$Me.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$Me(
      me: Query$Me$me.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Me$me me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
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

extension UtilityExtension$Query$Me on Query$Me {
  CopyWith$Query$Me<Query$Me> get copyWith => CopyWith$Query$Me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me<TRes> {
  factory CopyWith$Query$Me(
    Query$Me instance,
    TRes Function(Query$Me) then,
  ) = _CopyWithImpl$Query$Me;

  factory CopyWith$Query$Me.stub(TRes res) = _CopyWithStubImpl$Query$Me;

  TRes call({
    Query$Me$me? me,
    String? $__typename,
  });
  CopyWith$Query$Me$me<TRes> get me;
}

class _CopyWithImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithImpl$Query$Me(
    this._instance,
    this._then,
  );

  final Query$Me _instance;

  final TRes Function(Query$Me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Me(
        me: me == _undefined || me == null ? _instance.me : (me as Query$Me$me),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Me$me<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Query$Me$me(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithStubImpl$Query$Me(this._res);

  TRes _res;

  call({
    Query$Me$me? me,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Me$me<TRes> get me => CopyWith$Query$Me$me.stub(_res);
}

const documentNodeQueryMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Me'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'person'),
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
                name: NameNode(value: 'roleType'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lifeState'),
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
            name: NameNode(value: 'credential'),
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
                name: NameNode(value: 'uId'),
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
Query$Me _parserFn$Query$Me(Map<String, dynamic> data) =>
    Query$Me.fromJson(data);
typedef OnQueryComplete$Query$Me = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Me?,
);

class Options$Query$Me extends graphql.QueryOptions<Query$Me> {
  Options$Query$Me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Me? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$Me(data),
                  ),
          onError: onError,
          document: documentNodeQueryMe,
          parserFn: _parserFn$Query$Me,
        );

  final OnQueryComplete$Query$Me? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Me extends graphql.WatchQueryOptions<Query$Me> {
  WatchOptions$Query$Me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Me,
        );
}

class FetchMoreOptions$Query$Me extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Me({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMe,
        );
}

extension ClientExtension$Query$Me on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Me>> query$Me(
          [Options$Query$Me? options]) async =>
      await this.query(options ?? Options$Query$Me());
  graphql.ObservableQuery<Query$Me> watchQuery$Me(
          [WatchOptions$Query$Me? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Me());
  void writeQuery$Me({
    required Query$Me data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryMe)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Me? readQuery$Me({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMe)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Me.fromJson(result);
  }
}

class Query$Me$me {
  Query$Me$me({
    this.person,
    this.account,
    this.credential,
    this.$__typename = 'UserInfo',
  });

  factory Query$Me$me.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$account = json['account'];
    final l$credential = json['credential'];
    final l$$__typename = json['__typename'];
    return Query$Me$me(
      person: l$person == null
          ? null
          : Query$Me$me$person.fromJson((l$person as Map<String, dynamic>)),
      account: l$account == null
          ? null
          : Query$Me$me$account.fromJson((l$account as Map<String, dynamic>)),
      credential: l$credential == null
          ? null
          : Query$Me$me$credential.fromJson(
              (l$credential as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Me$me$person? person;

  final Query$Me$me$account? account;

  final Query$Me$me$credential? credential;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person?.toJson();
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
    final l$credential = credential;
    _resultData['credential'] = l$credential?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$account = account;
    final l$credential = credential;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$account,
      l$credential,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$credential = credential;
    final lOther$credential = other.credential;
    if (l$credential != lOther$credential) {
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

extension UtilityExtension$Query$Me$me on Query$Me$me {
  CopyWith$Query$Me$me<Query$Me$me> get copyWith => CopyWith$Query$Me$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$me<TRes> {
  factory CopyWith$Query$Me$me(
    Query$Me$me instance,
    TRes Function(Query$Me$me) then,
  ) = _CopyWithImpl$Query$Me$me;

  factory CopyWith$Query$Me$me.stub(TRes res) = _CopyWithStubImpl$Query$Me$me;

  TRes call({
    Query$Me$me$person? person,
    Query$Me$me$account? account,
    Query$Me$me$credential? credential,
    String? $__typename,
  });
  CopyWith$Query$Me$me$person<TRes> get person;
  CopyWith$Query$Me$me$account<TRes> get account;
  CopyWith$Query$Me$me$credential<TRes> get credential;
}

class _CopyWithImpl$Query$Me$me<TRes> implements CopyWith$Query$Me$me<TRes> {
  _CopyWithImpl$Query$Me$me(
    this._instance,
    this._then,
  );

  final Query$Me$me _instance;

  final TRes Function(Query$Me$me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? account = _undefined,
    Object? credential = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Me$me(
        person: person == _undefined
            ? _instance.person
            : (person as Query$Me$me$person?),
        account: account == _undefined
            ? _instance.account
            : (account as Query$Me$me$account?),
        credential: credential == _undefined
            ? _instance.credential
            : (credential as Query$Me$me$credential?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Me$me$person<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith$Query$Me$me$person.stub(_then(_instance))
        : CopyWith$Query$Me$me$person(local$person, (e) => call(person: e));
  }

  CopyWith$Query$Me$me$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$Me$me$account.stub(_then(_instance))
        : CopyWith$Query$Me$me$account(local$account, (e) => call(account: e));
  }

  CopyWith$Query$Me$me$credential<TRes> get credential {
    final local$credential = _instance.credential;
    return local$credential == null
        ? CopyWith$Query$Me$me$credential.stub(_then(_instance))
        : CopyWith$Query$Me$me$credential(
            local$credential, (e) => call(credential: e));
  }
}

class _CopyWithStubImpl$Query$Me$me<TRes>
    implements CopyWith$Query$Me$me<TRes> {
  _CopyWithStubImpl$Query$Me$me(this._res);

  TRes _res;

  call({
    Query$Me$me$person? person,
    Query$Me$me$account? account,
    Query$Me$me$credential? credential,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Me$me$person<TRes> get person =>
      CopyWith$Query$Me$me$person.stub(_res);
  CopyWith$Query$Me$me$account<TRes> get account =>
      CopyWith$Query$Me$me$account.stub(_res);
  CopyWith$Query$Me$me$credential<TRes> get credential =>
      CopyWith$Query$Me$me$credential.stub(_res);
}

class Query$Me$me$person {
  Query$Me$me$person({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.emailAddress,
    this.roleType,
    this.$__typename = 'Person',
  });

  factory Query$Me$me$person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    final l$emailAddress = json['emailAddress'];
    final l$roleType = json['roleType'];
    final l$$__typename = json['__typename'];
    return Query$Me$me$person(
      id: (l$id as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      phoneNumber: (l$phoneNumber as String?),
      emailAddress: (l$emailAddress as String?),
      roleType: (l$roleType as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? firstName;

  final String? lastName;

  final String? phoneNumber;

  final String? emailAddress;

  final String? roleType;

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
    final l$roleType = roleType;
    _resultData['roleType'] = l$roleType;
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
    final l$roleType = roleType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$emailAddress,
      l$roleType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$me$person) || runtimeType != other.runtimeType) {
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
    final l$roleType = roleType;
    final lOther$roleType = other.roleType;
    if (l$roleType != lOther$roleType) {
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

extension UtilityExtension$Query$Me$me$person on Query$Me$me$person {
  CopyWith$Query$Me$me$person<Query$Me$me$person> get copyWith =>
      CopyWith$Query$Me$me$person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$me$person<TRes> {
  factory CopyWith$Query$Me$me$person(
    Query$Me$me$person instance,
    TRes Function(Query$Me$me$person) then,
  ) = _CopyWithImpl$Query$Me$me$person;

  factory CopyWith$Query$Me$me$person.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$me$person;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? roleType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Me$me$person<TRes>
    implements CopyWith$Query$Me$me$person<TRes> {
  _CopyWithImpl$Query$Me$me$person(
    this._instance,
    this._then,
  );

  final Query$Me$me$person _instance;

  final TRes Function(Query$Me$me$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? emailAddress = _undefined,
    Object? roleType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Me$me$person(
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
        roleType:
            roleType == _undefined ? _instance.roleType : (roleType as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Me$me$person<TRes>
    implements CopyWith$Query$Me$me$person<TRes> {
  _CopyWithStubImpl$Query$Me$me$person(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? roleType,
    String? $__typename,
  }) =>
      _res;
}

class Query$Me$me$account {
  Query$Me$me$account({
    this.id,
    this.lifeState,
    this.$__typename = 'Account',
  });

  factory Query$Me$me$account.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$lifeState = json['lifeState'];
    final l$$__typename = json['__typename'];
    return Query$Me$me$account(
      id: (l$id as String?),
      lifeState: l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final Enum$LifeState? lifeState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$lifeState = lifeState;
    _resultData['lifeState'] =
        l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$lifeState = lifeState;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$lifeState,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$me$account) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (l$lifeState != lOther$lifeState) {
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

extension UtilityExtension$Query$Me$me$account on Query$Me$me$account {
  CopyWith$Query$Me$me$account<Query$Me$me$account> get copyWith =>
      CopyWith$Query$Me$me$account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$me$account<TRes> {
  factory CopyWith$Query$Me$me$account(
    Query$Me$me$account instance,
    TRes Function(Query$Me$me$account) then,
  ) = _CopyWithImpl$Query$Me$me$account;

  factory CopyWith$Query$Me$me$account.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$me$account;

  TRes call({
    String? id,
    Enum$LifeState? lifeState,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Me$me$account<TRes>
    implements CopyWith$Query$Me$me$account<TRes> {
  _CopyWithImpl$Query$Me$me$account(
    this._instance,
    this._then,
  );

  final Query$Me$me$account _instance;

  final TRes Function(Query$Me$me$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? lifeState = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Me$me$account(
        id: id == _undefined ? _instance.id : (id as String?),
        lifeState: lifeState == _undefined
            ? _instance.lifeState
            : (lifeState as Enum$LifeState?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Me$me$account<TRes>
    implements CopyWith$Query$Me$me$account<TRes> {
  _CopyWithStubImpl$Query$Me$me$account(this._res);

  TRes _res;

  call({
    String? id,
    Enum$LifeState? lifeState,
    String? $__typename,
  }) =>
      _res;
}

class Query$Me$me$credential {
  Query$Me$me$credential({
    this.id,
    this.uId,
    this.type,
    this.$__typename = 'Credential',
  });

  factory Query$Me$me$credential.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uId = json['uId'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$Me$me$credential(
      id: (l$id as String?),
      uId: (l$uId as String?),
      type: l$type == null
          ? null
          : fromJson$Enum$CredentialType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? uId;

  final Enum$CredentialType? type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uId = uId;
    _resultData['uId'] = l$uId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$CredentialType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uId = uId;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uId,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me$me$credential) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uId = uId;
    final lOther$uId = other.uId;
    if (l$uId != lOther$uId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$Me$me$credential on Query$Me$me$credential {
  CopyWith$Query$Me$me$credential<Query$Me$me$credential> get copyWith =>
      CopyWith$Query$Me$me$credential(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me$me$credential<TRes> {
  factory CopyWith$Query$Me$me$credential(
    Query$Me$me$credential instance,
    TRes Function(Query$Me$me$credential) then,
  ) = _CopyWithImpl$Query$Me$me$credential;

  factory CopyWith$Query$Me$me$credential.stub(TRes res) =
      _CopyWithStubImpl$Query$Me$me$credential;

  TRes call({
    String? id,
    String? uId,
    Enum$CredentialType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Me$me$credential<TRes>
    implements CopyWith$Query$Me$me$credential<TRes> {
  _CopyWithImpl$Query$Me$me$credential(
    this._instance,
    this._then,
  );

  final Query$Me$me$credential _instance;

  final TRes Function(Query$Me$me$credential) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uId = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Me$me$credential(
        id: id == _undefined ? _instance.id : (id as String?),
        uId: uId == _undefined ? _instance.uId : (uId as String?),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$CredentialType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Me$me$credential<TRes>
    implements CopyWith$Query$Me$me$credential<TRes> {
  _CopyWithStubImpl$Query$Me$me$credential(this._res);

  TRes _res;

  call({
    String? id,
    String? uId,
    Enum$CredentialType? type,
    String? $__typename,
  }) =>
      _res;
}
