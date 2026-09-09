import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$LocationResponse {
  Fragment$LocationResponse({
    this.latitude,
    this.longitude,
    this.$__typename = 'Location',
  });

  factory Fragment$LocationResponse.fromJson(Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Fragment$LocationResponse(
      latitude: (l$latitude as num?)?.toDouble(),
      longitude: (l$longitude as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? latitude;

  final double? longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LocationResponse) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Fragment$LocationResponse
    on Fragment$LocationResponse {
  CopyWith$Fragment$LocationResponse<Fragment$LocationResponse> get copyWith =>
      CopyWith$Fragment$LocationResponse(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LocationResponse<TRes> {
  factory CopyWith$Fragment$LocationResponse(
    Fragment$LocationResponse instance,
    TRes Function(Fragment$LocationResponse) then,
  ) = _CopyWithImpl$Fragment$LocationResponse;

  factory CopyWith$Fragment$LocationResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LocationResponse;

  TRes call({
    double? latitude,
    double? longitude,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LocationResponse<TRes>
    implements CopyWith$Fragment$LocationResponse<TRes> {
  _CopyWithImpl$Fragment$LocationResponse(
    this._instance,
    this._then,
  );

  final Fragment$LocationResponse _instance;

  final TRes Function(Fragment$LocationResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LocationResponse(
        latitude:
            latitude == _undefined ? _instance.latitude : (latitude as double?),
        longitude: longitude == _undefined
            ? _instance.longitude
            : (longitude as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LocationResponse<TRes>
    implements CopyWith$Fragment$LocationResponse<TRes> {
  _CopyWithStubImpl$Fragment$LocationResponse(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLocationResponse = FragmentDefinitionNode(
  name: NameNode(value: 'LocationResponse'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Location'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'latitude'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'longitude'),
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
);
const documentNodeFragmentLocationResponse = DocumentNode(definitions: [
  fragmentDefinitionLocationResponse,
]);

extension ClientExtension$Fragment$LocationResponse on graphql.GraphQLClient {
  void writeFragment$LocationResponse({
    required Fragment$LocationResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LocationResponse',
            document: documentNodeFragmentLocationResponse,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LocationResponse? readFragment$LocationResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LocationResponse',
          document: documentNodeFragmentLocationResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LocationResponse.fromJson(result);
  }
}

class Fragment$AddressResponse {
  Fragment$AddressResponse({
    this.no,
    this.floor,
    this.block,
    this.landmark,
    this.street,
    this.area,
    this.city,
    this.state,
    this.stateISOCode,
    this.country,
    this.countryISOCode,
    this.pincode,
    this.location,
    this.$__typename = 'Address',
  });

  factory Fragment$AddressResponse.fromJson(Map<String, dynamic> json) {
    final l$no = json['no'];
    final l$floor = json['floor'];
    final l$block = json['block'];
    final l$landmark = json['landmark'];
    final l$street = json['street'];
    final l$area = json['area'];
    final l$city = json['city'];
    final l$state = json['state'];
    final l$stateISOCode = json['stateISOCode'];
    final l$country = json['country'];
    final l$countryISOCode = json['countryISOCode'];
    final l$pincode = json['pincode'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$AddressResponse(
      no: (l$no as String?),
      floor: (l$floor as String?),
      block: (l$block as String?),
      landmark: (l$landmark as String?),
      street: (l$street as String?),
      area: (l$area as String?),
      city: (l$city as String?),
      state: (l$state as String?),
      stateISOCode: (l$stateISOCode as String?),
      country: (l$country as String?),
      countryISOCode: (l$countryISOCode as String?),
      pincode: (l$pincode as String?),
      location: l$location == null
          ? null
          : Fragment$LocationResponse.fromJson(
              (l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? no;

  final String? floor;

  final String? block;

  final String? landmark;

  final String? street;

  final String? area;

  final String? city;

  final String? state;

  final String? stateISOCode;

  final String? country;

  final String? countryISOCode;

  final String? pincode;

  final Fragment$LocationResponse? location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$no = no;
    _resultData['no'] = l$no;
    final l$floor = floor;
    _resultData['floor'] = l$floor;
    final l$block = block;
    _resultData['block'] = l$block;
    final l$landmark = landmark;
    _resultData['landmark'] = l$landmark;
    final l$street = street;
    _resultData['street'] = l$street;
    final l$area = area;
    _resultData['area'] = l$area;
    final l$city = city;
    _resultData['city'] = l$city;
    final l$state = state;
    _resultData['state'] = l$state;
    final l$stateISOCode = stateISOCode;
    _resultData['stateISOCode'] = l$stateISOCode;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$countryISOCode = countryISOCode;
    _resultData['countryISOCode'] = l$countryISOCode;
    final l$pincode = pincode;
    _resultData['pincode'] = l$pincode;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$no = no;
    final l$floor = floor;
    final l$block = block;
    final l$landmark = landmark;
    final l$street = street;
    final l$area = area;
    final l$city = city;
    final l$state = state;
    final l$stateISOCode = stateISOCode;
    final l$country = country;
    final l$countryISOCode = countryISOCode;
    final l$pincode = pincode;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$no,
      l$floor,
      l$block,
      l$landmark,
      l$street,
      l$area,
      l$city,
      l$state,
      l$stateISOCode,
      l$country,
      l$countryISOCode,
      l$pincode,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AddressResponse) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
      return false;
    }
    final l$floor = floor;
    final lOther$floor = other.floor;
    if (l$floor != lOther$floor) {
      return false;
    }
    final l$block = block;
    final lOther$block = other.block;
    if (l$block != lOther$block) {
      return false;
    }
    final l$landmark = landmark;
    final lOther$landmark = other.landmark;
    if (l$landmark != lOther$landmark) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (l$street != lOther$street) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$stateISOCode = stateISOCode;
    final lOther$stateISOCode = other.stateISOCode;
    if (l$stateISOCode != lOther$stateISOCode) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$countryISOCode = countryISOCode;
    final lOther$countryISOCode = other.countryISOCode;
    if (l$countryISOCode != lOther$countryISOCode) {
      return false;
    }
    final l$pincode = pincode;
    final lOther$pincode = other.pincode;
    if (l$pincode != lOther$pincode) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Fragment$AddressResponse
    on Fragment$AddressResponse {
  CopyWith$Fragment$AddressResponse<Fragment$AddressResponse> get copyWith =>
      CopyWith$Fragment$AddressResponse(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AddressResponse<TRes> {
  factory CopyWith$Fragment$AddressResponse(
    Fragment$AddressResponse instance,
    TRes Function(Fragment$AddressResponse) then,
  ) = _CopyWithImpl$Fragment$AddressResponse;

  factory CopyWith$Fragment$AddressResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AddressResponse;

  TRes call({
    String? no,
    String? floor,
    String? block,
    String? landmark,
    String? street,
    String? area,
    String? city,
    String? state,
    String? stateISOCode,
    String? country,
    String? countryISOCode,
    String? pincode,
    Fragment$LocationResponse? location,
    String? $__typename,
  });
  CopyWith$Fragment$LocationResponse<TRes> get location;
}

class _CopyWithImpl$Fragment$AddressResponse<TRes>
    implements CopyWith$Fragment$AddressResponse<TRes> {
  _CopyWithImpl$Fragment$AddressResponse(
    this._instance,
    this._then,
  );

  final Fragment$AddressResponse _instance;

  final TRes Function(Fragment$AddressResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? no = _undefined,
    Object? floor = _undefined,
    Object? block = _undefined,
    Object? landmark = _undefined,
    Object? street = _undefined,
    Object? area = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? stateISOCode = _undefined,
    Object? country = _undefined,
    Object? countryISOCode = _undefined,
    Object? pincode = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AddressResponse(
        no: no == _undefined ? _instance.no : (no as String?),
        floor: floor == _undefined ? _instance.floor : (floor as String?),
        block: block == _undefined ? _instance.block : (block as String?),
        landmark:
            landmark == _undefined ? _instance.landmark : (landmark as String?),
        street: street == _undefined ? _instance.street : (street as String?),
        area: area == _undefined ? _instance.area : (area as String?),
        city: city == _undefined ? _instance.city : (city as String?),
        state: state == _undefined ? _instance.state : (state as String?),
        stateISOCode: stateISOCode == _undefined
            ? _instance.stateISOCode
            : (stateISOCode as String?),
        country:
            country == _undefined ? _instance.country : (country as String?),
        countryISOCode: countryISOCode == _undefined
            ? _instance.countryISOCode
            : (countryISOCode as String?),
        pincode:
            pincode == _undefined ? _instance.pincode : (pincode as String?),
        location: location == _undefined
            ? _instance.location
            : (location as Fragment$LocationResponse?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$LocationResponse<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$LocationResponse.stub(_then(_instance))
        : CopyWith$Fragment$LocationResponse(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Fragment$AddressResponse<TRes>
    implements CopyWith$Fragment$AddressResponse<TRes> {
  _CopyWithStubImpl$Fragment$AddressResponse(this._res);

  TRes _res;

  call({
    String? no,
    String? floor,
    String? block,
    String? landmark,
    String? street,
    String? area,
    String? city,
    String? state,
    String? stateISOCode,
    String? country,
    String? countryISOCode,
    String? pincode,
    Fragment$LocationResponse? location,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$LocationResponse<TRes> get location =>
      CopyWith$Fragment$LocationResponse.stub(_res);
}

const fragmentDefinitionAddressResponse = FragmentDefinitionNode(
  name: NameNode(value: 'AddressResponse'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Address'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'floor'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'block'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'landmark'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'street'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'area'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'city'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'state'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'stateISOCode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'country'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'countryISOCode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'pincode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'LocationResponse'),
          directives: [],
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
);
const documentNodeFragmentAddressResponse = DocumentNode(definitions: [
  fragmentDefinitionAddressResponse,
  fragmentDefinitionLocationResponse,
]);

extension ClientExtension$Fragment$AddressResponse on graphql.GraphQLClient {
  void writeFragment$AddressResponse({
    required Fragment$AddressResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'AddressResponse',
            document: documentNodeFragmentAddressResponse,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$AddressResponse? readFragment$AddressResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'AddressResponse',
          document: documentNodeFragmentAddressResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$AddressResponse.fromJson(result);
  }
}
