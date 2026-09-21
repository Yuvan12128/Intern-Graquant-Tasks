import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PersonResponse {
  Fragment$PersonResponse({this.id, this.$__typename = 'Person'});

  factory Fragment$PersonResponse.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$PersonResponse(
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
    if (other is! Fragment$PersonResponse || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$PersonResponse on Fragment$PersonResponse {
  CopyWith$Fragment$PersonResponse<Fragment$PersonResponse> get copyWith =>
      CopyWith$Fragment$PersonResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$PersonResponse<TRes> {
  factory CopyWith$Fragment$PersonResponse(
    Fragment$PersonResponse instance,
    TRes Function(Fragment$PersonResponse) then,
  ) = _CopyWithImpl$Fragment$PersonResponse;

  factory CopyWith$Fragment$PersonResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonResponse;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$PersonResponse<TRes>
    implements CopyWith$Fragment$PersonResponse<TRes> {
  _CopyWithImpl$Fragment$PersonResponse(this._instance, this._then);

  final Fragment$PersonResponse _instance;

  final TRes Function(Fragment$PersonResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$PersonResponse(
          id: id == _undefined ? _instance.id : (id as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$PersonResponse<TRes>
    implements CopyWith$Fragment$PersonResponse<TRes> {
  _CopyWithStubImpl$Fragment$PersonResponse(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

const fragmentDefinitionPersonResponse = FragmentDefinitionNode(
  name: NameNode(value: 'PersonResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Person'), isNonNull: false),
  ),
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
);
const documentNodeFragmentPersonResponse = DocumentNode(
  definitions: [fragmentDefinitionPersonResponse],
);

extension ClientExtension$Fragment$PersonResponse on graphql.GraphQLClient {
  void writeFragment$PersonResponse({
    required Fragment$PersonResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'PersonResponse',
        document: documentNodeFragmentPersonResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Fragment$PersonResponse? readFragment$PersonResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonResponse',
          document: documentNodeFragmentPersonResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PersonResponse.fromJson(result);
  }
}
