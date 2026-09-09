import 'package:skcl_vms/data/graphql/component/json_object_data.dart';

class Input$AccountFilter {
  factory Input$AccountFilter({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? type,
    Input$IDFilter? accountId,
    Input$LifeStateFilter? lifeState,
    Input$IDFilter? placeId,
  }) =>
      Input$AccountFilter._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (type != null) r'type': type,
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (placeId != null) r'placeId': placeId,
      });

  Input$AccountFilter._(this._$data);

  factory Input$AccountFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringFilter.fromJson((l$type as Map<String, dynamic>));
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = l$accountId == null
          ? null
          : Input$IDFilter.fromJson((l$accountId as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('placeId')) {
      final l$placeId = data['placeId'];
      result$data['placeId'] = l$placeId == null
          ? null
          : Input$IDFilter.fromJson((l$placeId as Map<String, dynamic>));
    }
    return Input$AccountFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$StringFilter? get type => (_$data['type'] as Input$StringFilter?);
  Input$IDFilter? get accountId => (_$data['accountId'] as Input$IDFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$IDFilter? get placeId => (_$data['placeId'] as Input$IDFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('placeId')) {
      final l$placeId = placeId;
      result$data['placeId'] = l$placeId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccountFilter<Input$AccountFilter> get copyWith =>
      CopyWith$Input$AccountFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AccountFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$placeId = placeId;
    final lOther$placeId = other.placeId;
    if (_$data.containsKey('placeId') != other._$data.containsKey('placeId')) {
      return false;
    }
    if (l$placeId != lOther$placeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$placeId = placeId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('placeId') ? l$placeId : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountFilter<TRes> {
  factory CopyWith$Input$AccountFilter(
    Input$AccountFilter instance,
    TRes Function(Input$AccountFilter) then,
  ) = _CopyWithImpl$Input$AccountFilter;

  factory CopyWith$Input$AccountFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountFilter;

  TRes call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? type,
    Input$IDFilter? accountId,
    Input$LifeStateFilter? lifeState,
    Input$IDFilter? placeId,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$StringFilter<TRes> get type;
  CopyWith$Input$IDFilter<TRes> get accountId;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$IDFilter<TRes> get placeId;
}

class _CopyWithImpl$Input$AccountFilter<TRes>
    implements CopyWith$Input$AccountFilter<TRes> {
  _CopyWithImpl$Input$AccountFilter(
    this._instance,
    this._then,
  );

  final Input$AccountFilter _instance;

  final TRes Function(Input$AccountFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? placeId = _undefined,
  }) =>
      _then(Input$AccountFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (type != _undefined) 'type': (type as Input$StringFilter?),
        if (accountId != _undefined)
          'accountId': (accountId as Input$IDFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (placeId != _undefined) 'placeId': (placeId as Input$IDFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$type, (e) => call(type: e));
  }

  CopyWith$Input$IDFilter<TRes> get accountId {
    final local$accountId = _instance.accountId;
    return local$accountId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$accountId, (e) => call(accountId: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$IDFilter<TRes> get placeId {
    final local$placeId = _instance.placeId;
    return local$placeId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$placeId, (e) => call(placeId: e));
  }
}

class _CopyWithStubImpl$Input$AccountFilter<TRes>
    implements CopyWith$Input$AccountFilter<TRes> {
  _CopyWithStubImpl$Input$AccountFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? type,
    Input$IDFilter? accountId,
    Input$LifeStateFilter? lifeState,
    Input$IDFilter? placeId,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get type =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get accountId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get placeId =>
      CopyWith$Input$IDFilter.stub(_res);
}

class Input$AccountRequest {
  factory Input$AccountRequest({
    String? name,
    String? description,
    Enum$LifeState? lifeState,
    Input$PlacePartialRequest? place,
    String? image1,
    String? image2,
    String? image3,
    String? fileId,
  }) =>
      Input$AccountRequest._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (lifeState != null) r'lifeState': lifeState,
        if (place != null) r'place': place,
        if (image1 != null) r'image1': image1,
        if (image2 != null) r'image2': image2,
        if (image3 != null) r'image3': image3,
        if (fileId != null) r'fileId': fileId,
      });

  Input$AccountRequest._(this._$data);

  factory Input$AccountRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('place')) {
      final l$place = data['place'];
      result$data['place'] = l$place == null
          ? null
          : Input$PlacePartialRequest.fromJson(
              (l$place as Map<String, dynamic>));
    }
    if (data.containsKey('image1')) {
      final l$image1 = data['image1'];
      result$data['image1'] = (l$image1 as String?);
    }
    if (data.containsKey('image2')) {
      final l$image2 = data['image2'];
      result$data['image2'] = (l$image2 as String?);
    }
    if (data.containsKey('image3')) {
      final l$image3 = data['image3'];
      result$data['image3'] = (l$image3 as String?);
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    return Input$AccountRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  Input$PlacePartialRequest? get place =>
      (_$data['place'] as Input$PlacePartialRequest?);
  String? get image1 => (_$data['image1'] as String?);
  String? get image2 => (_$data['image2'] as String?);
  String? get image3 => (_$data['image3'] as String?);
  String? get fileId => (_$data['fileId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('place')) {
      final l$place = place;
      result$data['place'] = l$place?.toJson();
    }
    if (_$data.containsKey('image1')) {
      final l$image1 = image1;
      result$data['image1'] = l$image1;
    }
    if (_$data.containsKey('image2')) {
      final l$image2 = image2;
      result$data['image2'] = l$image2;
    }
    if (_$data.containsKey('image3')) {
      final l$image3 = image3;
      result$data['image3'] = l$image3;
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    return result$data;
  }

  CopyWith$Input$AccountRequest<Input$AccountRequest> get copyWith =>
      CopyWith$Input$AccountRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AccountRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$place = place;
    final lOther$place = other.place;
    if (_$data.containsKey('place') != other._$data.containsKey('place')) {
      return false;
    }
    if (l$place != lOther$place) {
      return false;
    }
    final l$image1 = image1;
    final lOther$image1 = other.image1;
    if (_$data.containsKey('image1') != other._$data.containsKey('image1')) {
      return false;
    }
    if (l$image1 != lOther$image1) {
      return false;
    }
    final l$image2 = image2;
    final lOther$image2 = other.image2;
    if (_$data.containsKey('image2') != other._$data.containsKey('image2')) {
      return false;
    }
    if (l$image2 != lOther$image2) {
      return false;
    }
    final l$image3 = image3;
    final lOther$image3 = other.image3;
    if (_$data.containsKey('image3') != other._$data.containsKey('image3')) {
      return false;
    }
    if (l$image3 != lOther$image3) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$lifeState = lifeState;
    final l$place = place;
    final l$image1 = image1;
    final l$image2 = image2;
    final l$image3 = image3;
    final l$fileId = fileId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('place') ? l$place : const {},
      _$data.containsKey('image1') ? l$image1 : const {},
      _$data.containsKey('image2') ? l$image2 : const {},
      _$data.containsKey('image3') ? l$image3 : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountRequest<TRes> {
  factory CopyWith$Input$AccountRequest(
    Input$AccountRequest instance,
    TRes Function(Input$AccountRequest) then,
  ) = _CopyWithImpl$Input$AccountRequest;

  factory CopyWith$Input$AccountRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountRequest;

  TRes call({
    String? name,
    String? description,
    Enum$LifeState? lifeState,
    Input$PlacePartialRequest? place,
    String? image1,
    String? image2,
    String? image3,
    String? fileId,
  });
  CopyWith$Input$PlacePartialRequest<TRes> get place;
}

class _CopyWithImpl$Input$AccountRequest<TRes>
    implements CopyWith$Input$AccountRequest<TRes> {
  _CopyWithImpl$Input$AccountRequest(
    this._instance,
    this._then,
  );

  final Input$AccountRequest _instance;

  final TRes Function(Input$AccountRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? lifeState = _undefined,
    Object? place = _undefined,
    Object? image1 = _undefined,
    Object? image2 = _undefined,
    Object? image3 = _undefined,
    Object? fileId = _undefined,
  }) =>
      _then(Input$AccountRequest._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (place != _undefined) 'place': (place as Input$PlacePartialRequest?),
        if (image1 != _undefined) 'image1': (image1 as String?),
        if (image2 != _undefined) 'image2': (image2 as String?),
        if (image3 != _undefined) 'image3': (image3 as String?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
      }));
  CopyWith$Input$PlacePartialRequest<TRes> get place {
    final local$place = _instance.place;
    return local$place == null
        ? CopyWith$Input$PlacePartialRequest.stub(_then(_instance))
        : CopyWith$Input$PlacePartialRequest(
            local$place, (e) => call(place: e));
  }
}

class _CopyWithStubImpl$Input$AccountRequest<TRes>
    implements CopyWith$Input$AccountRequest<TRes> {
  _CopyWithStubImpl$Input$AccountRequest(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    Enum$LifeState? lifeState,
    Input$PlacePartialRequest? place,
    String? image1,
    String? image2,
    String? image3,
    String? fileId,
  }) =>
      _res;
  CopyWith$Input$PlacePartialRequest<TRes> get place =>
      CopyWith$Input$PlacePartialRequest.stub(_res);
}

class Input$AdditionalTokenInfoRequest {
  factory Input$AdditionalTokenInfoRequest({
    String? emailAddress,
    String? emailAddressIdToken,
  }) =>
      Input$AdditionalTokenInfoRequest._({
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (emailAddressIdToken != null)
          r'emailAddressIdToken': emailAddressIdToken,
      });

  Input$AdditionalTokenInfoRequest._(this._$data);

  factory Input$AdditionalTokenInfoRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = (l$emailAddress as String?);
    }
    if (data.containsKey('emailAddressIdToken')) {
      final l$emailAddressIdToken = data['emailAddressIdToken'];
      result$data['emailAddressIdToken'] = (l$emailAddressIdToken as String?);
    }
    return Input$AdditionalTokenInfoRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get emailAddress => (_$data['emailAddress'] as String?);
  String? get emailAddressIdToken => (_$data['emailAddressIdToken'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress;
    }
    if (_$data.containsKey('emailAddressIdToken')) {
      final l$emailAddressIdToken = emailAddressIdToken;
      result$data['emailAddressIdToken'] = l$emailAddressIdToken;
    }
    return result$data;
  }

  CopyWith$Input$AdditionalTokenInfoRequest<Input$AdditionalTokenInfoRequest>
      get copyWith => CopyWith$Input$AdditionalTokenInfoRequest(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AdditionalTokenInfoRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$emailAddressIdToken = emailAddressIdToken;
    final lOther$emailAddressIdToken = other.emailAddressIdToken;
    if (_$data.containsKey('emailAddressIdToken') !=
        other._$data.containsKey('emailAddressIdToken')) {
      return false;
    }
    if (l$emailAddressIdToken != lOther$emailAddressIdToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$emailAddressIdToken = emailAddressIdToken;
    return Object.hashAll([
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('emailAddressIdToken')
          ? l$emailAddressIdToken
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AdditionalTokenInfoRequest<TRes> {
  factory CopyWith$Input$AdditionalTokenInfoRequest(
    Input$AdditionalTokenInfoRequest instance,
    TRes Function(Input$AdditionalTokenInfoRequest) then,
  ) = _CopyWithImpl$Input$AdditionalTokenInfoRequest;

  factory CopyWith$Input$AdditionalTokenInfoRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$AdditionalTokenInfoRequest;

  TRes call({
    String? emailAddress,
    String? emailAddressIdToken,
  });
}

class _CopyWithImpl$Input$AdditionalTokenInfoRequest<TRes>
    implements CopyWith$Input$AdditionalTokenInfoRequest<TRes> {
  _CopyWithImpl$Input$AdditionalTokenInfoRequest(
    this._instance,
    this._then,
  );

  final Input$AdditionalTokenInfoRequest _instance;

  final TRes Function(Input$AdditionalTokenInfoRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? emailAddressIdToken = _undefined,
  }) =>
      _then(Input$AdditionalTokenInfoRequest._({
        ..._instance._$data,
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as String?),
        if (emailAddressIdToken != _undefined)
          'emailAddressIdToken': (emailAddressIdToken as String?),
      }));
}

class _CopyWithStubImpl$Input$AdditionalTokenInfoRequest<TRes>
    implements CopyWith$Input$AdditionalTokenInfoRequest<TRes> {
  _CopyWithStubImpl$Input$AdditionalTokenInfoRequest(this._res);

  TRes _res;

  call({
    String? emailAddress,
    String? emailAddressIdToken,
  }) =>
      _res;
}

class Input$AddressRequest {
  factory Input$AddressRequest({
    String? address,
    String? buildingName,
    String? no,
    String? parkingLotNo,
    String? floor,
    String? block,
    String? landmark,
    String? street,
    String? area,
    String? town,
    String? taluk,
    String? district,
    String? city,
    String? state,
    String? stateISOCode,
    String? country,
    String? countryISOCode,
    String? pincode,
    Input$LocationRequest? location,
  }) =>
      Input$AddressRequest._({
        if (address != null) r'address': address,
        if (buildingName != null) r'buildingName': buildingName,
        if (no != null) r'no': no,
        if (parkingLotNo != null) r'parkingLotNo': parkingLotNo,
        if (floor != null) r'floor': floor,
        if (block != null) r'block': block,
        if (landmark != null) r'landmark': landmark,
        if (street != null) r'street': street,
        if (area != null) r'area': area,
        if (town != null) r'town': town,
        if (taluk != null) r'taluk': taluk,
        if (district != null) r'district': district,
        if (city != null) r'city': city,
        if (state != null) r'state': state,
        if (stateISOCode != null) r'stateISOCode': stateISOCode,
        if (country != null) r'country': country,
        if (countryISOCode != null) r'countryISOCode': countryISOCode,
        if (pincode != null) r'pincode': pincode,
        if (location != null) r'location': location,
      });

  Input$AddressRequest._(this._$data);

  factory Input$AddressRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('buildingName')) {
      final l$buildingName = data['buildingName'];
      result$data['buildingName'] = (l$buildingName as String?);
    }
    if (data.containsKey('no')) {
      final l$no = data['no'];
      result$data['no'] = (l$no as String?);
    }
    if (data.containsKey('parkingLotNo')) {
      final l$parkingLotNo = data['parkingLotNo'];
      result$data['parkingLotNo'] = (l$parkingLotNo as String?);
    }
    if (data.containsKey('floor')) {
      final l$floor = data['floor'];
      result$data['floor'] = (l$floor as String?);
    }
    if (data.containsKey('block')) {
      final l$block = data['block'];
      result$data['block'] = (l$block as String?);
    }
    if (data.containsKey('landmark')) {
      final l$landmark = data['landmark'];
      result$data['landmark'] = (l$landmark as String?);
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = (l$street as String?);
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = (l$area as String?);
    }
    if (data.containsKey('town')) {
      final l$town = data['town'];
      result$data['town'] = (l$town as String?);
    }
    if (data.containsKey('taluk')) {
      final l$taluk = data['taluk'];
      result$data['taluk'] = (l$taluk as String?);
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = (l$district as String?);
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = (l$city as String?);
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = (l$state as String?);
    }
    if (data.containsKey('stateISOCode')) {
      final l$stateISOCode = data['stateISOCode'];
      result$data['stateISOCode'] = (l$stateISOCode as String?);
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('countryISOCode')) {
      final l$countryISOCode = data['countryISOCode'];
      result$data['countryISOCode'] = (l$countryISOCode as String?);
    }
    if (data.containsKey('pincode')) {
      final l$pincode = data['pincode'];
      result$data['pincode'] = (l$pincode as String?);
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$LocationRequest.fromJson(
              (l$location as Map<String, dynamic>));
    }
    return Input$AddressRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get address => (_$data['address'] as String?);
  String? get buildingName => (_$data['buildingName'] as String?);
  String? get no => (_$data['no'] as String?);
  String? get parkingLotNo => (_$data['parkingLotNo'] as String?);
  String? get floor => (_$data['floor'] as String?);
  String? get block => (_$data['block'] as String?);
  String? get landmark => (_$data['landmark'] as String?);
  String? get street => (_$data['street'] as String?);
  String? get area => (_$data['area'] as String?);
  String? get town => (_$data['town'] as String?);
  String? get taluk => (_$data['taluk'] as String?);
  String? get district => (_$data['district'] as String?);
  String? get city => (_$data['city'] as String?);
  String? get state => (_$data['state'] as String?);
  String? get stateISOCode => (_$data['stateISOCode'] as String?);
  String? get country => (_$data['country'] as String?);
  String? get countryISOCode => (_$data['countryISOCode'] as String?);
  String? get pincode => (_$data['pincode'] as String?);
  Input$LocationRequest? get location =>
      (_$data['location'] as Input$LocationRequest?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('buildingName')) {
      final l$buildingName = buildingName;
      result$data['buildingName'] = l$buildingName;
    }
    if (_$data.containsKey('no')) {
      final l$no = no;
      result$data['no'] = l$no;
    }
    if (_$data.containsKey('parkingLotNo')) {
      final l$parkingLotNo = parkingLotNo;
      result$data['parkingLotNo'] = l$parkingLotNo;
    }
    if (_$data.containsKey('floor')) {
      final l$floor = floor;
      result$data['floor'] = l$floor;
    }
    if (_$data.containsKey('block')) {
      final l$block = block;
      result$data['block'] = l$block;
    }
    if (_$data.containsKey('landmark')) {
      final l$landmark = landmark;
      result$data['landmark'] = l$landmark;
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street;
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area;
    }
    if (_$data.containsKey('town')) {
      final l$town = town;
      result$data['town'] = l$town;
    }
    if (_$data.containsKey('taluk')) {
      final l$taluk = taluk;
      result$data['taluk'] = l$taluk;
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district;
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city;
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state;
    }
    if (_$data.containsKey('stateISOCode')) {
      final l$stateISOCode = stateISOCode;
      result$data['stateISOCode'] = l$stateISOCode;
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('countryISOCode')) {
      final l$countryISOCode = countryISOCode;
      result$data['countryISOCode'] = l$countryISOCode;
    }
    if (_$data.containsKey('pincode')) {
      final l$pincode = pincode;
      result$data['pincode'] = l$pincode;
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AddressRequest<Input$AddressRequest> get copyWith =>
      CopyWith$Input$AddressRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AddressRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$buildingName = buildingName;
    final lOther$buildingName = other.buildingName;
    if (_$data.containsKey('buildingName') !=
        other._$data.containsKey('buildingName')) {
      return false;
    }
    if (l$buildingName != lOther$buildingName) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (_$data.containsKey('no') != other._$data.containsKey('no')) {
      return false;
    }
    if (l$no != lOther$no) {
      return false;
    }
    final l$parkingLotNo = parkingLotNo;
    final lOther$parkingLotNo = other.parkingLotNo;
    if (_$data.containsKey('parkingLotNo') !=
        other._$data.containsKey('parkingLotNo')) {
      return false;
    }
    if (l$parkingLotNo != lOther$parkingLotNo) {
      return false;
    }
    final l$floor = floor;
    final lOther$floor = other.floor;
    if (_$data.containsKey('floor') != other._$data.containsKey('floor')) {
      return false;
    }
    if (l$floor != lOther$floor) {
      return false;
    }
    final l$block = block;
    final lOther$block = other.block;
    if (_$data.containsKey('block') != other._$data.containsKey('block')) {
      return false;
    }
    if (l$block != lOther$block) {
      return false;
    }
    final l$landmark = landmark;
    final lOther$landmark = other.landmark;
    if (_$data.containsKey('landmark') !=
        other._$data.containsKey('landmark')) {
      return false;
    }
    if (l$landmark != lOther$landmark) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$town = town;
    final lOther$town = other.town;
    if (_$data.containsKey('town') != other._$data.containsKey('town')) {
      return false;
    }
    if (l$town != lOther$town) {
      return false;
    }
    final l$taluk = taluk;
    final lOther$taluk = other.taluk;
    if (_$data.containsKey('taluk') != other._$data.containsKey('taluk')) {
      return false;
    }
    if (l$taluk != lOther$taluk) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$stateISOCode = stateISOCode;
    final lOther$stateISOCode = other.stateISOCode;
    if (_$data.containsKey('stateISOCode') !=
        other._$data.containsKey('stateISOCode')) {
      return false;
    }
    if (l$stateISOCode != lOther$stateISOCode) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$countryISOCode = countryISOCode;
    final lOther$countryISOCode = other.countryISOCode;
    if (_$data.containsKey('countryISOCode') !=
        other._$data.containsKey('countryISOCode')) {
      return false;
    }
    if (l$countryISOCode != lOther$countryISOCode) {
      return false;
    }
    final l$pincode = pincode;
    final lOther$pincode = other.pincode;
    if (_$data.containsKey('pincode') != other._$data.containsKey('pincode')) {
      return false;
    }
    if (l$pincode != lOther$pincode) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$buildingName = buildingName;
    final l$no = no;
    final l$parkingLotNo = parkingLotNo;
    final l$floor = floor;
    final l$block = block;
    final l$landmark = landmark;
    final l$street = street;
    final l$area = area;
    final l$town = town;
    final l$taluk = taluk;
    final l$district = district;
    final l$city = city;
    final l$state = state;
    final l$stateISOCode = stateISOCode;
    final l$country = country;
    final l$countryISOCode = countryISOCode;
    final l$pincode = pincode;
    final l$location = location;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('buildingName') ? l$buildingName : const {},
      _$data.containsKey('no') ? l$no : const {},
      _$data.containsKey('parkingLotNo') ? l$parkingLotNo : const {},
      _$data.containsKey('floor') ? l$floor : const {},
      _$data.containsKey('block') ? l$block : const {},
      _$data.containsKey('landmark') ? l$landmark : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('town') ? l$town : const {},
      _$data.containsKey('taluk') ? l$taluk : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('stateISOCode') ? l$stateISOCode : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('countryISOCode') ? l$countryISOCode : const {},
      _$data.containsKey('pincode') ? l$pincode : const {},
      _$data.containsKey('location') ? l$location : const {},
    ]);
  }
}

abstract class CopyWith$Input$AddressRequest<TRes> {
  factory CopyWith$Input$AddressRequest(
    Input$AddressRequest instance,
    TRes Function(Input$AddressRequest) then,
  ) = _CopyWithImpl$Input$AddressRequest;

  factory CopyWith$Input$AddressRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$AddressRequest;

  TRes call({
    String? address,
    String? buildingName,
    String? no,
    String? parkingLotNo,
    String? floor,
    String? block,
    String? landmark,
    String? street,
    String? area,
    String? town,
    String? taluk,
    String? district,
    String? city,
    String? state,
    String? stateISOCode,
    String? country,
    String? countryISOCode,
    String? pincode,
    Input$LocationRequest? location,
  });
  CopyWith$Input$LocationRequest<TRes> get location;
}

class _CopyWithImpl$Input$AddressRequest<TRes>
    implements CopyWith$Input$AddressRequest<TRes> {
  _CopyWithImpl$Input$AddressRequest(
    this._instance,
    this._then,
  );

  final Input$AddressRequest _instance;

  final TRes Function(Input$AddressRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? buildingName = _undefined,
    Object? no = _undefined,
    Object? parkingLotNo = _undefined,
    Object? floor = _undefined,
    Object? block = _undefined,
    Object? landmark = _undefined,
    Object? street = _undefined,
    Object? area = _undefined,
    Object? town = _undefined,
    Object? taluk = _undefined,
    Object? district = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? stateISOCode = _undefined,
    Object? country = _undefined,
    Object? countryISOCode = _undefined,
    Object? pincode = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Input$AddressRequest._({
        ..._instance._$data,
        if (address != _undefined) 'address': (address as String?),
        if (buildingName != _undefined)
          'buildingName': (buildingName as String?),
        if (no != _undefined) 'no': (no as String?),
        if (parkingLotNo != _undefined)
          'parkingLotNo': (parkingLotNo as String?),
        if (floor != _undefined) 'floor': (floor as String?),
        if (block != _undefined) 'block': (block as String?),
        if (landmark != _undefined) 'landmark': (landmark as String?),
        if (street != _undefined) 'street': (street as String?),
        if (area != _undefined) 'area': (area as String?),
        if (town != _undefined) 'town': (town as String?),
        if (taluk != _undefined) 'taluk': (taluk as String?),
        if (district != _undefined) 'district': (district as String?),
        if (city != _undefined) 'city': (city as String?),
        if (state != _undefined) 'state': (state as String?),
        if (stateISOCode != _undefined)
          'stateISOCode': (stateISOCode as String?),
        if (country != _undefined) 'country': (country as String?),
        if (countryISOCode != _undefined)
          'countryISOCode': (countryISOCode as String?),
        if (pincode != _undefined) 'pincode': (pincode as String?),
        if (location != _undefined)
          'location': (location as Input$LocationRequest?),
      }));
  CopyWith$Input$LocationRequest<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Input$LocationRequest.stub(_then(_instance))
        : CopyWith$Input$LocationRequest(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Input$AddressRequest<TRes>
    implements CopyWith$Input$AddressRequest<TRes> {
  _CopyWithStubImpl$Input$AddressRequest(this._res);

  TRes _res;

  call({
    String? address,
    String? buildingName,
    String? no,
    String? parkingLotNo,
    String? floor,
    String? block,
    String? landmark,
    String? street,
    String? area,
    String? town,
    String? taluk,
    String? district,
    String? city,
    String? state,
    String? stateISOCode,
    String? country,
    String? countryISOCode,
    String? pincode,
    Input$LocationRequest? location,
  }) =>
      _res;
  CopyWith$Input$LocationRequest<TRes> get location =>
      CopyWith$Input$LocationRequest.stub(_res);
}

class Input$AssociationFilter {
  factory Input$AssociationFilter({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? relationship,
    Input$IDFilter? primaryId,
    Input$StringFilter? primaryObjCat,
    Input$IDFilter? secondaryId,
    Input$StringFilter? secondaryObjCat,
    String? asOfDate,
    String? assocDateRange,
    Enum$Operation? permission,
    Input$ObjectFilter? primaryObj,
    Input$ObjectFilter? secondaryObj,
  }) =>
      Input$AssociationFilter._({
        if (id != null) r'id': id,
        if (account != null) r'account': account,
        if (lifeState != null) r'lifeState': lifeState,
        if (relationship != null) r'relationship': relationship,
        if (primaryId != null) r'primaryId': primaryId,
        if (primaryObjCat != null) r'primaryObjCat': primaryObjCat,
        if (secondaryId != null) r'secondaryId': secondaryId,
        if (secondaryObjCat != null) r'secondaryObjCat': secondaryObjCat,
        if (asOfDate != null) r'asOfDate': asOfDate,
        if (assocDateRange != null) r'assocDateRange': assocDateRange,
        if (permission != null) r'permission': permission,
        if (primaryObj != null) r'primaryObj': primaryObj,
        if (secondaryObj != null) r'secondaryObj': secondaryObj,
      });

  Input$AssociationFilter._(this._$data);

  factory Input$AssociationFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('relationship')) {
      final l$relationship = data['relationship'];
      result$data['relationship'] = l$relationship == null
          ? null
          : Input$StringFilter.fromJson(
              (l$relationship as Map<String, dynamic>));
    }
    if (data.containsKey('primaryId')) {
      final l$primaryId = data['primaryId'];
      result$data['primaryId'] = l$primaryId == null
          ? null
          : Input$IDFilter.fromJson((l$primaryId as Map<String, dynamic>));
    }
    if (data.containsKey('primaryObjCat')) {
      final l$primaryObjCat = data['primaryObjCat'];
      result$data['primaryObjCat'] = l$primaryObjCat == null
          ? null
          : Input$StringFilter.fromJson(
              (l$primaryObjCat as Map<String, dynamic>));
    }
    if (data.containsKey('secondaryId')) {
      final l$secondaryId = data['secondaryId'];
      result$data['secondaryId'] = l$secondaryId == null
          ? null
          : Input$IDFilter.fromJson((l$secondaryId as Map<String, dynamic>));
    }
    if (data.containsKey('secondaryObjCat')) {
      final l$secondaryObjCat = data['secondaryObjCat'];
      result$data['secondaryObjCat'] = l$secondaryObjCat == null
          ? null
          : Input$StringFilter.fromJson(
              (l$secondaryObjCat as Map<String, dynamic>));
    }
    if (data.containsKey('asOfDate')) {
      final l$asOfDate = data['asOfDate'];
      result$data['asOfDate'] = (l$asOfDate as String?);
    }
    if (data.containsKey('assocDateRange')) {
      final l$assocDateRange = data['assocDateRange'];
      result$data['assocDateRange'] = (l$assocDateRange as String?);
    }
    if (data.containsKey('permission')) {
      final l$permission = data['permission'];
      result$data['permission'] = l$permission == null
          ? null
          : fromJson$Enum$Operation((l$permission as String));
    }
    if (data.containsKey('primaryObj')) {
      final l$primaryObj = data['primaryObj'];
      result$data['primaryObj'] = l$primaryObj == null
          ? null
          : Input$ObjectFilter.fromJson((l$primaryObj as Map<String, dynamic>));
    }
    if (data.containsKey('secondaryObj')) {
      final l$secondaryObj = data['secondaryObj'];
      result$data['secondaryObj'] = l$secondaryObj == null
          ? null
          : Input$ObjectFilter.fromJson(
              (l$secondaryObj as Map<String, dynamic>));
    }
    return Input$AssociationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$StringFilter? get relationship =>
      (_$data['relationship'] as Input$StringFilter?);
  Input$IDFilter? get primaryId => (_$data['primaryId'] as Input$IDFilter?);
  Input$StringFilter? get primaryObjCat =>
      (_$data['primaryObjCat'] as Input$StringFilter?);
  Input$IDFilter? get secondaryId => (_$data['secondaryId'] as Input$IDFilter?);
  Input$StringFilter? get secondaryObjCat =>
      (_$data['secondaryObjCat'] as Input$StringFilter?);
  String? get asOfDate => (_$data['asOfDate'] as String?);
  String? get assocDateRange => (_$data['assocDateRange'] as String?);
  Enum$Operation? get permission => (_$data['permission'] as Enum$Operation?);
  Input$ObjectFilter? get primaryObj =>
      (_$data['primaryObj'] as Input$ObjectFilter?);
  Input$ObjectFilter? get secondaryObj =>
      (_$data['secondaryObj'] as Input$ObjectFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('relationship')) {
      final l$relationship = relationship;
      result$data['relationship'] = l$relationship?.toJson();
    }
    if (_$data.containsKey('primaryId')) {
      final l$primaryId = primaryId;
      result$data['primaryId'] = l$primaryId?.toJson();
    }
    if (_$data.containsKey('primaryObjCat')) {
      final l$primaryObjCat = primaryObjCat;
      result$data['primaryObjCat'] = l$primaryObjCat?.toJson();
    }
    if (_$data.containsKey('secondaryId')) {
      final l$secondaryId = secondaryId;
      result$data['secondaryId'] = l$secondaryId?.toJson();
    }
    if (_$data.containsKey('secondaryObjCat')) {
      final l$secondaryObjCat = secondaryObjCat;
      result$data['secondaryObjCat'] = l$secondaryObjCat?.toJson();
    }
    if (_$data.containsKey('asOfDate')) {
      final l$asOfDate = asOfDate;
      result$data['asOfDate'] = l$asOfDate;
    }
    if (_$data.containsKey('assocDateRange')) {
      final l$assocDateRange = assocDateRange;
      result$data['assocDateRange'] = l$assocDateRange;
    }
    if (_$data.containsKey('permission')) {
      final l$permission = permission;
      result$data['permission'] =
          l$permission == null ? null : toJson$Enum$Operation(l$permission);
    }
    if (_$data.containsKey('primaryObj')) {
      final l$primaryObj = primaryObj;
      result$data['primaryObj'] = l$primaryObj?.toJson();
    }
    if (_$data.containsKey('secondaryObj')) {
      final l$secondaryObj = secondaryObj;
      result$data['secondaryObj'] = l$secondaryObj?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssociationFilter<Input$AssociationFilter> get copyWith =>
      CopyWith$Input$AssociationFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssociationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$relationship = relationship;
    final lOther$relationship = other.relationship;
    if (_$data.containsKey('relationship') !=
        other._$data.containsKey('relationship')) {
      return false;
    }
    if (l$relationship != lOther$relationship) {
      return false;
    }
    final l$primaryId = primaryId;
    final lOther$primaryId = other.primaryId;
    if (_$data.containsKey('primaryId') !=
        other._$data.containsKey('primaryId')) {
      return false;
    }
    if (l$primaryId != lOther$primaryId) {
      return false;
    }
    final l$primaryObjCat = primaryObjCat;
    final lOther$primaryObjCat = other.primaryObjCat;
    if (_$data.containsKey('primaryObjCat') !=
        other._$data.containsKey('primaryObjCat')) {
      return false;
    }
    if (l$primaryObjCat != lOther$primaryObjCat) {
      return false;
    }
    final l$secondaryId = secondaryId;
    final lOther$secondaryId = other.secondaryId;
    if (_$data.containsKey('secondaryId') !=
        other._$data.containsKey('secondaryId')) {
      return false;
    }
    if (l$secondaryId != lOther$secondaryId) {
      return false;
    }
    final l$secondaryObjCat = secondaryObjCat;
    final lOther$secondaryObjCat = other.secondaryObjCat;
    if (_$data.containsKey('secondaryObjCat') !=
        other._$data.containsKey('secondaryObjCat')) {
      return false;
    }
    if (l$secondaryObjCat != lOther$secondaryObjCat) {
      return false;
    }
    final l$asOfDate = asOfDate;
    final lOther$asOfDate = other.asOfDate;
    if (_$data.containsKey('asOfDate') !=
        other._$data.containsKey('asOfDate')) {
      return false;
    }
    if (l$asOfDate != lOther$asOfDate) {
      return false;
    }
    final l$assocDateRange = assocDateRange;
    final lOther$assocDateRange = other.assocDateRange;
    if (_$data.containsKey('assocDateRange') !=
        other._$data.containsKey('assocDateRange')) {
      return false;
    }
    if (l$assocDateRange != lOther$assocDateRange) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (_$data.containsKey('permission') !=
        other._$data.containsKey('permission')) {
      return false;
    }
    if (l$permission != lOther$permission) {
      return false;
    }
    final l$primaryObj = primaryObj;
    final lOther$primaryObj = other.primaryObj;
    if (_$data.containsKey('primaryObj') !=
        other._$data.containsKey('primaryObj')) {
      return false;
    }
    if (l$primaryObj != lOther$primaryObj) {
      return false;
    }
    final l$secondaryObj = secondaryObj;
    final lOther$secondaryObj = other.secondaryObj;
    if (_$data.containsKey('secondaryObj') !=
        other._$data.containsKey('secondaryObj')) {
      return false;
    }
    if (l$secondaryObj != lOther$secondaryObj) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$account = account;
    final l$lifeState = lifeState;
    final l$relationship = relationship;
    final l$primaryId = primaryId;
    final l$primaryObjCat = primaryObjCat;
    final l$secondaryId = secondaryId;
    final l$secondaryObjCat = secondaryObjCat;
    final l$asOfDate = asOfDate;
    final l$assocDateRange = assocDateRange;
    final l$permission = permission;
    final l$primaryObj = primaryObj;
    final l$secondaryObj = secondaryObj;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('relationship') ? l$relationship : const {},
      _$data.containsKey('primaryId') ? l$primaryId : const {},
      _$data.containsKey('primaryObjCat') ? l$primaryObjCat : const {},
      _$data.containsKey('secondaryId') ? l$secondaryId : const {},
      _$data.containsKey('secondaryObjCat') ? l$secondaryObjCat : const {},
      _$data.containsKey('asOfDate') ? l$asOfDate : const {},
      _$data.containsKey('assocDateRange') ? l$assocDateRange : const {},
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('primaryObj') ? l$primaryObj : const {},
      _$data.containsKey('secondaryObj') ? l$secondaryObj : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssociationFilter<TRes> {
  factory CopyWith$Input$AssociationFilter(
    Input$AssociationFilter instance,
    TRes Function(Input$AssociationFilter) then,
  ) = _CopyWithImpl$Input$AssociationFilter;

  factory CopyWith$Input$AssociationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$AssociationFilter;

  TRes call({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? relationship,
    Input$IDFilter? primaryId,
    Input$StringFilter? primaryObjCat,
    Input$IDFilter? secondaryId,
    Input$StringFilter? secondaryObjCat,
    String? asOfDate,
    String? assocDateRange,
    Enum$Operation? permission,
    Input$ObjectFilter? primaryObj,
    Input$ObjectFilter? secondaryObj,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$StringFilter<TRes> get relationship;
  CopyWith$Input$IDFilter<TRes> get primaryId;
  CopyWith$Input$StringFilter<TRes> get primaryObjCat;
  CopyWith$Input$IDFilter<TRes> get secondaryId;
  CopyWith$Input$StringFilter<TRes> get secondaryObjCat;
  CopyWith$Input$ObjectFilter<TRes> get primaryObj;
  CopyWith$Input$ObjectFilter<TRes> get secondaryObj;
}

class _CopyWithImpl$Input$AssociationFilter<TRes>
    implements CopyWith$Input$AssociationFilter<TRes> {
  _CopyWithImpl$Input$AssociationFilter(
    this._instance,
    this._then,
  );

  final Input$AssociationFilter _instance;

  final TRes Function(Input$AssociationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? account = _undefined,
    Object? lifeState = _undefined,
    Object? relationship = _undefined,
    Object? primaryId = _undefined,
    Object? primaryObjCat = _undefined,
    Object? secondaryId = _undefined,
    Object? secondaryObjCat = _undefined,
    Object? asOfDate = _undefined,
    Object? assocDateRange = _undefined,
    Object? permission = _undefined,
    Object? primaryObj = _undefined,
    Object? secondaryObj = _undefined,
  }) =>
      _then(Input$AssociationFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (relationship != _undefined)
          'relationship': (relationship as Input$StringFilter?),
        if (primaryId != _undefined)
          'primaryId': (primaryId as Input$IDFilter?),
        if (primaryObjCat != _undefined)
          'primaryObjCat': (primaryObjCat as Input$StringFilter?),
        if (secondaryId != _undefined)
          'secondaryId': (secondaryId as Input$IDFilter?),
        if (secondaryObjCat != _undefined)
          'secondaryObjCat': (secondaryObjCat as Input$StringFilter?),
        if (asOfDate != _undefined) 'asOfDate': (asOfDate as String?),
        if (assocDateRange != _undefined)
          'assocDateRange': (assocDateRange as String?),
        if (permission != _undefined)
          'permission': (permission as Enum$Operation?),
        if (primaryObj != _undefined)
          'primaryObj': (primaryObj as Input$ObjectFilter?),
        if (secondaryObj != _undefined)
          'secondaryObj': (secondaryObj as Input$ObjectFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$StringFilter<TRes> get relationship {
    final local$relationship = _instance.relationship;
    return local$relationship == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$relationship, (e) => call(relationship: e));
  }

  CopyWith$Input$IDFilter<TRes> get primaryId {
    final local$primaryId = _instance.primaryId;
    return local$primaryId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$primaryId, (e) => call(primaryId: e));
  }

  CopyWith$Input$StringFilter<TRes> get primaryObjCat {
    final local$primaryObjCat = _instance.primaryObjCat;
    return local$primaryObjCat == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$primaryObjCat, (e) => call(primaryObjCat: e));
  }

  CopyWith$Input$IDFilter<TRes> get secondaryId {
    final local$secondaryId = _instance.secondaryId;
    return local$secondaryId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(
            local$secondaryId, (e) => call(secondaryId: e));
  }

  CopyWith$Input$StringFilter<TRes> get secondaryObjCat {
    final local$secondaryObjCat = _instance.secondaryObjCat;
    return local$secondaryObjCat == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$secondaryObjCat, (e) => call(secondaryObjCat: e));
  }

  CopyWith$Input$ObjectFilter<TRes> get primaryObj {
    final local$primaryObj = _instance.primaryObj;
    return local$primaryObj == null
        ? CopyWith$Input$ObjectFilter.stub(_then(_instance))
        : CopyWith$Input$ObjectFilter(
            local$primaryObj, (e) => call(primaryObj: e));
  }

  CopyWith$Input$ObjectFilter<TRes> get secondaryObj {
    final local$secondaryObj = _instance.secondaryObj;
    return local$secondaryObj == null
        ? CopyWith$Input$ObjectFilter.stub(_then(_instance))
        : CopyWith$Input$ObjectFilter(
            local$secondaryObj, (e) => call(secondaryObj: e));
  }
}

class _CopyWithStubImpl$Input$AssociationFilter<TRes>
    implements CopyWith$Input$AssociationFilter<TRes> {
  _CopyWithStubImpl$Input$AssociationFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? relationship,
    Input$IDFilter? primaryId,
    Input$StringFilter? primaryObjCat,
    Input$IDFilter? secondaryId,
    Input$StringFilter? secondaryObjCat,
    String? asOfDate,
    String? assocDateRange,
    Enum$Operation? permission,
    Input$ObjectFilter? primaryObj,
    Input$ObjectFilter? secondaryObj,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get relationship =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get primaryId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get primaryObjCat =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get secondaryId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get secondaryObjCat =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$ObjectFilter<TRes> get primaryObj =>
      CopyWith$Input$ObjectFilter.stub(_res);
  CopyWith$Input$ObjectFilter<TRes> get secondaryObj =>
      CopyWith$Input$ObjectFilter.stub(_res);
}

class Input$AssociationRequest {
  factory Input$AssociationRequest({
    String? primaryId,
    String? secondaryId,
    Enum$Relationship? relationship,
    String? startDate,
    String? endDate,
    Enum$Operation? permission,
    String? dataUId,
    JsonObjectData? data,
  }) =>
      Input$AssociationRequest._({
        if (primaryId != null) r'primaryId': primaryId,
        if (secondaryId != null) r'secondaryId': secondaryId,
        if (relationship != null) r'relationship': relationship,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (permission != null) r'permission': permission,
        if (dataUId != null) r'dataUId': dataUId,
        if (data != null) r'data': data,
      });

  Input$AssociationRequest._(this._$data);

  factory Input$AssociationRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('primaryId')) {
      final l$primaryId = data['primaryId'];
      result$data['primaryId'] = (l$primaryId as String?);
    }
    if (data.containsKey('secondaryId')) {
      final l$secondaryId = data['secondaryId'];
      result$data['secondaryId'] = (l$secondaryId as String?);
    }
    if (data.containsKey('relationship')) {
      final l$relationship = data['relationship'];
      result$data['relationship'] = l$relationship == null
          ? null
          : fromJson$Enum$Relationship((l$relationship as String));
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('permission')) {
      final l$permission = data['permission'];
      result$data['permission'] = l$permission == null
          ? null
          : fromJson$Enum$Operation((l$permission as String));
    }
    if (data.containsKey('dataUId')) {
      final l$dataUId = data['dataUId'];
      result$data['dataUId'] = (l$dataUId as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as JsonObjectData?);
    }
    return Input$AssociationRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get primaryId => (_$data['primaryId'] as String?);
  String? get secondaryId => (_$data['secondaryId'] as String?);
  Enum$Relationship? get relationship =>
      (_$data['relationship'] as Enum$Relationship?);
  String? get startDate => (_$data['startDate'] as String?);
  String? get endDate => (_$data['endDate'] as String?);
  Enum$Operation? get permission => (_$data['permission'] as Enum$Operation?);
  String? get dataUId => (_$data['dataUId'] as String?);
  JsonObjectData? get data => (_$data['data'] as JsonObjectData?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('primaryId')) {
      final l$primaryId = primaryId;
      result$data['primaryId'] = l$primaryId;
    }
    if (_$data.containsKey('secondaryId')) {
      final l$secondaryId = secondaryId;
      result$data['secondaryId'] = l$secondaryId;
    }
    if (_$data.containsKey('relationship')) {
      final l$relationship = relationship;
      result$data['relationship'] = l$relationship == null
          ? null
          : toJson$Enum$Relationship(l$relationship);
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('permission')) {
      final l$permission = permission;
      result$data['permission'] =
          l$permission == null ? null : toJson$Enum$Operation(l$permission);
    }
    if (_$data.containsKey('dataUId')) {
      final l$dataUId = dataUId;
      result$data['dataUId'] = l$dataUId;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    return result$data;
  }

  CopyWith$Input$AssociationRequest<Input$AssociationRequest> get copyWith =>
      CopyWith$Input$AssociationRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssociationRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$primaryId = primaryId;
    final lOther$primaryId = other.primaryId;
    if (_$data.containsKey('primaryId') !=
        other._$data.containsKey('primaryId')) {
      return false;
    }
    if (l$primaryId != lOther$primaryId) {
      return false;
    }
    final l$secondaryId = secondaryId;
    final lOther$secondaryId = other.secondaryId;
    if (_$data.containsKey('secondaryId') !=
        other._$data.containsKey('secondaryId')) {
      return false;
    }
    if (l$secondaryId != lOther$secondaryId) {
      return false;
    }
    final l$relationship = relationship;
    final lOther$relationship = other.relationship;
    if (_$data.containsKey('relationship') !=
        other._$data.containsKey('relationship')) {
      return false;
    }
    if (l$relationship != lOther$relationship) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (_$data.containsKey('permission') !=
        other._$data.containsKey('permission')) {
      return false;
    }
    if (l$permission != lOther$permission) {
      return false;
    }
    final l$dataUId = dataUId;
    final lOther$dataUId = other.dataUId;
    if (_$data.containsKey('dataUId') != other._$data.containsKey('dataUId')) {
      return false;
    }
    if (l$dataUId != lOther$dataUId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$primaryId = primaryId;
    final l$secondaryId = secondaryId;
    final l$relationship = relationship;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$permission = permission;
    final l$dataUId = dataUId;
    final l$data = data;
    return Object.hashAll([
      _$data.containsKey('primaryId') ? l$primaryId : const {},
      _$data.containsKey('secondaryId') ? l$secondaryId : const {},
      _$data.containsKey('relationship') ? l$relationship : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('dataUId') ? l$dataUId : const {},
      _$data.containsKey('data') ? l$data : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssociationRequest<TRes> {
  factory CopyWith$Input$AssociationRequest(
    Input$AssociationRequest instance,
    TRes Function(Input$AssociationRequest) then,
  ) = _CopyWithImpl$Input$AssociationRequest;

  factory CopyWith$Input$AssociationRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$AssociationRequest;

  TRes call({
    String? primaryId,
    String? secondaryId,
    Enum$Relationship? relationship,
    String? startDate,
    String? endDate,
    Enum$Operation? permission,
    String? dataUId,
    JsonObjectData? data,
  });
}

class _CopyWithImpl$Input$AssociationRequest<TRes>
    implements CopyWith$Input$AssociationRequest<TRes> {
  _CopyWithImpl$Input$AssociationRequest(
    this._instance,
    this._then,
  );

  final Input$AssociationRequest _instance;

  final TRes Function(Input$AssociationRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryId = _undefined,
    Object? secondaryId = _undefined,
    Object? relationship = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? permission = _undefined,
    Object? dataUId = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Input$AssociationRequest._({
        ..._instance._$data,
        if (primaryId != _undefined) 'primaryId': (primaryId as String?),
        if (secondaryId != _undefined) 'secondaryId': (secondaryId as String?),
        if (relationship != _undefined)
          'relationship': (relationship as Enum$Relationship?),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (permission != _undefined)
          'permission': (permission as Enum$Operation?),
        if (dataUId != _undefined) 'dataUId': (dataUId as String?),
        if (data != _undefined) 'data': (data as JsonObjectData?),
      }));
}

class _CopyWithStubImpl$Input$AssociationRequest<TRes>
    implements CopyWith$Input$AssociationRequest<TRes> {
  _CopyWithStubImpl$Input$AssociationRequest(this._res);

  TRes _res;

  call({
    String? primaryId,
    String? secondaryId,
    Enum$Relationship? relationship,
    String? startDate,
    String? endDate,
    Enum$Operation? permission,
    String? dataUId,
    JsonObjectData? data,
  }) =>
      _res;
}

class Input$BlockRequest {
  factory Input$BlockRequest({
    String? accountId,
    String? placeId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    int? numberOfBasementFloors,
    int? numberOfTopFloors,
  }) =>
      Input$BlockRequest._({
        if (accountId != null) r'accountId': accountId,
        if (placeId != null) r'placeId': placeId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (numberOfBasementFloors != null)
          r'numberOfBasementFloors': numberOfBasementFloors,
        if (numberOfTopFloors != null) r'numberOfTopFloors': numberOfTopFloors,
      });

  Input$BlockRequest._(this._$data);

  factory Input$BlockRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('placeId')) {
      final l$placeId = data['placeId'];
      result$data['placeId'] = (l$placeId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('numberOfBasementFloors')) {
      final l$numberOfBasementFloors = data['numberOfBasementFloors'];
      result$data['numberOfBasementFloors'] =
          (l$numberOfBasementFloors as int?);
    }
    if (data.containsKey('numberOfTopFloors')) {
      final l$numberOfTopFloors = data['numberOfTopFloors'];
      result$data['numberOfTopFloors'] = (l$numberOfTopFloors as int?);
    }
    return Input$BlockRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountId => (_$data['accountId'] as String?);
  String? get placeId => (_$data['placeId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  int? get numberOfBasementFloors => (_$data['numberOfBasementFloors'] as int?);
  int? get numberOfTopFloors => (_$data['numberOfTopFloors'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('placeId')) {
      final l$placeId = placeId;
      result$data['placeId'] = l$placeId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('numberOfBasementFloors')) {
      final l$numberOfBasementFloors = numberOfBasementFloors;
      result$data['numberOfBasementFloors'] = l$numberOfBasementFloors;
    }
    if (_$data.containsKey('numberOfTopFloors')) {
      final l$numberOfTopFloors = numberOfTopFloors;
      result$data['numberOfTopFloors'] = l$numberOfTopFloors;
    }
    return result$data;
  }

  CopyWith$Input$BlockRequest<Input$BlockRequest> get copyWith =>
      CopyWith$Input$BlockRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BlockRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$placeId = placeId;
    final lOther$placeId = other.placeId;
    if (_$data.containsKey('placeId') != other._$data.containsKey('placeId')) {
      return false;
    }
    if (l$placeId != lOther$placeId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$numberOfBasementFloors = numberOfBasementFloors;
    final lOther$numberOfBasementFloors = other.numberOfBasementFloors;
    if (_$data.containsKey('numberOfBasementFloors') !=
        other._$data.containsKey('numberOfBasementFloors')) {
      return false;
    }
    if (l$numberOfBasementFloors != lOther$numberOfBasementFloors) {
      return false;
    }
    final l$numberOfTopFloors = numberOfTopFloors;
    final lOther$numberOfTopFloors = other.numberOfTopFloors;
    if (_$data.containsKey('numberOfTopFloors') !=
        other._$data.containsKey('numberOfTopFloors')) {
      return false;
    }
    if (l$numberOfTopFloors != lOther$numberOfTopFloors) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$placeId = placeId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$description = description;
    final l$numberOfBasementFloors = numberOfBasementFloors;
    final l$numberOfTopFloors = numberOfTopFloors;
    return Object.hashAll([
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('placeId') ? l$placeId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('numberOfBasementFloors')
          ? l$numberOfBasementFloors
          : const {},
      _$data.containsKey('numberOfTopFloors') ? l$numberOfTopFloors : const {},
    ]);
  }
}

abstract class CopyWith$Input$BlockRequest<TRes> {
  factory CopyWith$Input$BlockRequest(
    Input$BlockRequest instance,
    TRes Function(Input$BlockRequest) then,
  ) = _CopyWithImpl$Input$BlockRequest;

  factory CopyWith$Input$BlockRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$BlockRequest;

  TRes call({
    String? accountId,
    String? placeId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    int? numberOfBasementFloors,
    int? numberOfTopFloors,
  });
}

class _CopyWithImpl$Input$BlockRequest<TRes>
    implements CopyWith$Input$BlockRequest<TRes> {
  _CopyWithImpl$Input$BlockRequest(
    this._instance,
    this._then,
  );

  final Input$BlockRequest _instance;

  final TRes Function(Input$BlockRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? placeId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? numberOfBasementFloors = _undefined,
    Object? numberOfTopFloors = _undefined,
  }) =>
      _then(Input$BlockRequest._({
        ..._instance._$data,
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (placeId != _undefined) 'placeId': (placeId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (numberOfBasementFloors != _undefined)
          'numberOfBasementFloors': (numberOfBasementFloors as int?),
        if (numberOfTopFloors != _undefined)
          'numberOfTopFloors': (numberOfTopFloors as int?),
      }));
}

class _CopyWithStubImpl$Input$BlockRequest<TRes>
    implements CopyWith$Input$BlockRequest<TRes> {
  _CopyWithStubImpl$Input$BlockRequest(this._res);

  TRes _res;

  call({
    String? accountId,
    String? placeId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    int? numberOfBasementFloors,
    int? numberOfTopFloors,
  }) =>
      _res;
}

class Input$BooleanFilter {
  factory Input$BooleanFilter({required bool value}) => Input$BooleanFilter._({
        r'value': value,
      });

  Input$BooleanFilter._(this._$data);

  factory Input$BooleanFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] = (l$value as bool);
    return Input$BooleanFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get value => (_$data['value'] as bool);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Input$BooleanFilter<Input$BooleanFilter> get copyWith =>
      CopyWith$Input$BooleanFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BooleanFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }
}

abstract class CopyWith$Input$BooleanFilter<TRes> {
  factory CopyWith$Input$BooleanFilter(
    Input$BooleanFilter instance,
    TRes Function(Input$BooleanFilter) then,
  ) = _CopyWithImpl$Input$BooleanFilter;

  factory CopyWith$Input$BooleanFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanFilter;

  TRes call({bool? value});
}

class _CopyWithImpl$Input$BooleanFilter<TRes>
    implements CopyWith$Input$BooleanFilter<TRes> {
  _CopyWithImpl$Input$BooleanFilter(
    this._instance,
    this._then,
  );

  final Input$BooleanFilter _instance;

  final TRes Function(Input$BooleanFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$BooleanFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null) 'value': (value as bool),
      }));
}

class _CopyWithStubImpl$Input$BooleanFilter<TRes>
    implements CopyWith$Input$BooleanFilter<TRes> {
  _CopyWithStubImpl$Input$BooleanFilter(this._res);

  TRes _res;

  call({bool? value}) => _res;
}

class Input$ComingFromRequest {
  factory Input$ComingFromRequest({
    String? companyName,
    String? placeName,
  }) =>
      Input$ComingFromRequest._({
        if (companyName != null) r'companyName': companyName,
        if (placeName != null) r'placeName': placeName,
      });

  Input$ComingFromRequest._(this._$data);

  factory Input$ComingFromRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    if (data.containsKey('placeName')) {
      final l$placeName = data['placeName'];
      result$data['placeName'] = (l$placeName as String?);
    }
    return Input$ComingFromRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get companyName => (_$data['companyName'] as String?);
  String? get placeName => (_$data['placeName'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    if (_$data.containsKey('placeName')) {
      final l$placeName = placeName;
      result$data['placeName'] = l$placeName;
    }
    return result$data;
  }

  CopyWith$Input$ComingFromRequest<Input$ComingFromRequest> get copyWith =>
      CopyWith$Input$ComingFromRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ComingFromRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$placeName = placeName;
    final lOther$placeName = other.placeName;
    if (_$data.containsKey('placeName') !=
        other._$data.containsKey('placeName')) {
      return false;
    }
    if (l$placeName != lOther$placeName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyName = companyName;
    final l$placeName = placeName;
    return Object.hashAll([
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('placeName') ? l$placeName : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComingFromRequest<TRes> {
  factory CopyWith$Input$ComingFromRequest(
    Input$ComingFromRequest instance,
    TRes Function(Input$ComingFromRequest) then,
  ) = _CopyWithImpl$Input$ComingFromRequest;

  factory CopyWith$Input$ComingFromRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$ComingFromRequest;

  TRes call({
    String? companyName,
    String? placeName,
  });
}

class _CopyWithImpl$Input$ComingFromRequest<TRes>
    implements CopyWith$Input$ComingFromRequest<TRes> {
  _CopyWithImpl$Input$ComingFromRequest(
    this._instance,
    this._then,
  );

  final Input$ComingFromRequest _instance;

  final TRes Function(Input$ComingFromRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyName = _undefined,
    Object? placeName = _undefined,
  }) =>
      _then(Input$ComingFromRequest._({
        ..._instance._$data,
        if (companyName != _undefined) 'companyName': (companyName as String?),
        if (placeName != _undefined) 'placeName': (placeName as String?),
      }));
}

class _CopyWithStubImpl$Input$ComingFromRequest<TRes>
    implements CopyWith$Input$ComingFromRequest<TRes> {
  _CopyWithStubImpl$Input$ComingFromRequest(this._res);

  TRes _res;

  call({
    String? companyName,
    String? placeName,
  }) =>
      _res;
}

class Input$CountryFilter {
  factory Input$CountryFilter({Input$IDFilter? isoCode}) =>
      Input$CountryFilter._({
        if (isoCode != null) r'isoCode': isoCode,
      });

  Input$CountryFilter._(this._$data);

  factory Input$CountryFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isoCode')) {
      final l$isoCode = data['isoCode'];
      result$data['isoCode'] = l$isoCode == null
          ? null
          : Input$IDFilter.fromJson((l$isoCode as Map<String, dynamic>));
    }
    return Input$CountryFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get isoCode => (_$data['isoCode'] as Input$IDFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isoCode')) {
      final l$isoCode = isoCode;
      result$data['isoCode'] = l$isoCode?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CountryFilter<Input$CountryFilter> get copyWith =>
      CopyWith$Input$CountryFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CountryFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isoCode = isoCode;
    final lOther$isoCode = other.isoCode;
    if (_$data.containsKey('isoCode') != other._$data.containsKey('isoCode')) {
      return false;
    }
    if (l$isoCode != lOther$isoCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isoCode = isoCode;
    return Object.hashAll(
        [_$data.containsKey('isoCode') ? l$isoCode : const {}]);
  }
}

abstract class CopyWith$Input$CountryFilter<TRes> {
  factory CopyWith$Input$CountryFilter(
    Input$CountryFilter instance,
    TRes Function(Input$CountryFilter) then,
  ) = _CopyWithImpl$Input$CountryFilter;

  factory CopyWith$Input$CountryFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CountryFilter;

  TRes call({Input$IDFilter? isoCode});
  CopyWith$Input$IDFilter<TRes> get isoCode;
}

class _CopyWithImpl$Input$CountryFilter<TRes>
    implements CopyWith$Input$CountryFilter<TRes> {
  _CopyWithImpl$Input$CountryFilter(
    this._instance,
    this._then,
  );

  final Input$CountryFilter _instance;

  final TRes Function(Input$CountryFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? isoCode = _undefined}) => _then(Input$CountryFilter._({
        ..._instance._$data,
        if (isoCode != _undefined) 'isoCode': (isoCode as Input$IDFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get isoCode {
    final local$isoCode = _instance.isoCode;
    return local$isoCode == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$isoCode, (e) => call(isoCode: e));
  }
}

class _CopyWithStubImpl$Input$CountryFilter<TRes>
    implements CopyWith$Input$CountryFilter<TRes> {
  _CopyWithStubImpl$Input$CountryFilter(this._res);

  TRes _res;

  call({Input$IDFilter? isoCode}) => _res;
  CopyWith$Input$IDFilter<TRes> get isoCode =>
      CopyWith$Input$IDFilter.stub(_res);
}

class Input$CredentialFilter {
  factory Input$CredentialFilter({
    Input$AccountFilter? account,
    Input$IDFilter? id,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? name,
    Input$StringFilter? personId,
    Input$CredentialTypeFilter? type,
    Input$StringFilter? uId,
  }) =>
      Input$CredentialFilter._({
        if (account != null) r'account': account,
        if (id != null) r'id': id,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (personId != null) r'personId': personId,
        if (type != null) r'type': type,
        if (uId != null) r'uId': uId,
      });

  Input$CredentialFilter._(this._$data);

  factory Input$CredentialFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input$StringFilter.fromJson((l$personId as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$CredentialTypeFilter.fromJson(
              (l$type as Map<String, dynamic>));
    }
    if (data.containsKey('uId')) {
      final l$uId = data['uId'];
      result$data['uId'] = l$uId == null
          ? null
          : Input$StringFilter.fromJson((l$uId as Map<String, dynamic>));
    }
    return Input$CredentialFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$StringFilter? get personId =>
      (_$data['personId'] as Input$StringFilter?);
  Input$CredentialTypeFilter? get type =>
      (_$data['type'] as Input$CredentialTypeFilter?);
  Input$StringFilter? get uId => (_$data['uId'] as Input$StringFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('uId')) {
      final l$uId = uId;
      result$data['uId'] = l$uId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CredentialFilter<Input$CredentialFilter> get copyWith =>
      CopyWith$Input$CredentialFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CredentialFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$uId = uId;
    final lOther$uId = other.uId;
    if (_$data.containsKey('uId') != other._$data.containsKey('uId')) {
      return false;
    }
    if (l$uId != lOther$uId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$account = account;
    final l$id = id;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$personId = personId;
    final l$type = type;
    final l$uId = uId;
    return Object.hashAll([
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('uId') ? l$uId : const {},
    ]);
  }
}

abstract class CopyWith$Input$CredentialFilter<TRes> {
  factory CopyWith$Input$CredentialFilter(
    Input$CredentialFilter instance,
    TRes Function(Input$CredentialFilter) then,
  ) = _CopyWithImpl$Input$CredentialFilter;

  factory CopyWith$Input$CredentialFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CredentialFilter;

  TRes call({
    Input$AccountFilter? account,
    Input$IDFilter? id,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? name,
    Input$StringFilter? personId,
    Input$CredentialTypeFilter? type,
    Input$StringFilter? uId,
  });
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$StringFilter<TRes> get personId;
  CopyWith$Input$CredentialTypeFilter<TRes> get type;
  CopyWith$Input$StringFilter<TRes> get uId;
}

class _CopyWithImpl$Input$CredentialFilter<TRes>
    implements CopyWith$Input$CredentialFilter<TRes> {
  _CopyWithImpl$Input$CredentialFilter(
    this._instance,
    this._then,
  );

  final Input$CredentialFilter _instance;

  final TRes Function(Input$CredentialFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? id = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? personId = _undefined,
    Object? type = _undefined,
    Object? uId = _undefined,
  }) =>
      _then(Input$CredentialFilter._({
        ..._instance._$data,
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (personId != _undefined)
          'personId': (personId as Input$StringFilter?),
        if (type != _undefined) 'type': (type as Input$CredentialTypeFilter?),
        if (uId != _undefined) 'uId': (uId as Input$StringFilter?),
      }));
  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringFilter<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$personId, (e) => call(personId: e));
  }

  CopyWith$Input$CredentialTypeFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$CredentialTypeFilter.stub(_then(_instance))
        : CopyWith$Input$CredentialTypeFilter(local$type, (e) => call(type: e));
  }

  CopyWith$Input$StringFilter<TRes> get uId {
    final local$uId = _instance.uId;
    return local$uId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$uId, (e) => call(uId: e));
  }
}

class _CopyWithStubImpl$Input$CredentialFilter<TRes>
    implements CopyWith$Input$CredentialFilter<TRes> {
  _CopyWithStubImpl$Input$CredentialFilter(this._res);

  TRes _res;

  call({
    Input$AccountFilter? account,
    Input$IDFilter? id,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? name,
    Input$StringFilter? personId,
    Input$CredentialTypeFilter? type,
    Input$StringFilter? uId,
  }) =>
      _res;
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get personId =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$CredentialTypeFilter<TRes> get type =>
      CopyWith$Input$CredentialTypeFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get uId =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$CredentialRequest {
  factory Input$CredentialRequest({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? personId,
    Enum$CredentialType? type,
    String? uId,
  }) =>
      Input$CredentialRequest._({
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (personId != null) r'personId': personId,
        if (type != null) r'type': type,
        if (uId != null) r'uId': uId,
      });

  Input$CredentialRequest._(this._$data);

  factory Input$CredentialRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = (l$personId as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$CredentialType((l$type as String));
    }
    if (data.containsKey('uId')) {
      final l$uId = data['uId'];
      result$data['uId'] = (l$uId as String?);
    }
    return Input$CredentialRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get personId => (_$data['personId'] as String?);
  Enum$CredentialType? get type => (_$data['type'] as Enum$CredentialType?);
  String? get uId => (_$data['uId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$CredentialType(l$type);
    }
    if (_$data.containsKey('uId')) {
      final l$uId = uId;
      result$data['uId'] = l$uId;
    }
    return result$data;
  }

  CopyWith$Input$CredentialRequest<Input$CredentialRequest> get copyWith =>
      CopyWith$Input$CredentialRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CredentialRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$uId = uId;
    final lOther$uId = other.uId;
    if (_$data.containsKey('uId') != other._$data.containsKey('uId')) {
      return false;
    }
    if (l$uId != lOther$uId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$description = description;
    final l$personId = personId;
    final l$type = type;
    final l$uId = uId;
    return Object.hashAll([
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('uId') ? l$uId : const {},
    ]);
  }
}

abstract class CopyWith$Input$CredentialRequest<TRes> {
  factory CopyWith$Input$CredentialRequest(
    Input$CredentialRequest instance,
    TRes Function(Input$CredentialRequest) then,
  ) = _CopyWithImpl$Input$CredentialRequest;

  factory CopyWith$Input$CredentialRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$CredentialRequest;

  TRes call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? personId,
    Enum$CredentialType? type,
    String? uId,
  });
}

class _CopyWithImpl$Input$CredentialRequest<TRes>
    implements CopyWith$Input$CredentialRequest<TRes> {
  _CopyWithImpl$Input$CredentialRequest(
    this._instance,
    this._then,
  );

  final Input$CredentialRequest _instance;

  final TRes Function(Input$CredentialRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? personId = _undefined,
    Object? type = _undefined,
    Object? uId = _undefined,
  }) =>
      _then(Input$CredentialRequest._({
        ..._instance._$data,
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (personId != _undefined) 'personId': (personId as String?),
        if (type != _undefined) 'type': (type as Enum$CredentialType?),
        if (uId != _undefined) 'uId': (uId as String?),
      }));
}

class _CopyWithStubImpl$Input$CredentialRequest<TRes>
    implements CopyWith$Input$CredentialRequest<TRes> {
  _CopyWithStubImpl$Input$CredentialRequest(this._res);

  TRes _res;

  call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? personId,
    Enum$CredentialType? type,
    String? uId,
  }) =>
      _res;
}

class Input$CredentialTypeFilter {
  factory Input$CredentialTypeFilter(
          {required List<Enum$CredentialType> value}) =>
      Input$CredentialTypeFilter._({
        r'value': value,
      });

  Input$CredentialTypeFilter._(this._$data);

  factory Input$CredentialTypeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] = (l$value as List<dynamic>)
        .map((e) => fromJson$Enum$CredentialType((e as String)))
        .toList();
    return Input$CredentialTypeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$CredentialType> get value =>
      (_$data['value'] as List<Enum$CredentialType>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] =
        l$value.map((e) => toJson$Enum$CredentialType(e)).toList();
    return result$data;
  }

  CopyWith$Input$CredentialTypeFilter<Input$CredentialTypeFilter>
      get copyWith => CopyWith$Input$CredentialTypeFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CredentialTypeFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([Object.hashAll(l$value.map((v) => v))]);
  }
}

abstract class CopyWith$Input$CredentialTypeFilter<TRes> {
  factory CopyWith$Input$CredentialTypeFilter(
    Input$CredentialTypeFilter instance,
    TRes Function(Input$CredentialTypeFilter) then,
  ) = _CopyWithImpl$Input$CredentialTypeFilter;

  factory CopyWith$Input$CredentialTypeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CredentialTypeFilter;

  TRes call({List<Enum$CredentialType>? value});
}

class _CopyWithImpl$Input$CredentialTypeFilter<TRes>
    implements CopyWith$Input$CredentialTypeFilter<TRes> {
  _CopyWithImpl$Input$CredentialTypeFilter(
    this._instance,
    this._then,
  );

  final Input$CredentialTypeFilter _instance;

  final TRes Function(Input$CredentialTypeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) =>
      _then(Input$CredentialTypeFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null)
          'value': (value as List<Enum$CredentialType>),
      }));
}

class _CopyWithStubImpl$Input$CredentialTypeFilter<TRes>
    implements CopyWith$Input$CredentialTypeFilter<TRes> {
  _CopyWithStubImpl$Input$CredentialTypeFilter(this._res);

  TRes _res;

  call({List<Enum$CredentialType>? value}) => _res;
}

class Input$DateOnlyRangeFilter {
  factory Input$DateOnlyRangeFilter({
    String? startDate,
    String? endDate,
  }) =>
      Input$DateOnlyRangeFilter._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
      });

  Input$DateOnlyRangeFilter._(this._$data);

  factory Input$DateOnlyRangeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    return Input$DateOnlyRangeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);
  String? get endDate => (_$data['endDate'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    return result$data;
  }

  CopyWith$Input$DateOnlyRangeFilter<Input$DateOnlyRangeFilter> get copyWith =>
      CopyWith$Input$DateOnlyRangeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateOnlyRangeFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateOnlyRangeFilter<TRes> {
  factory CopyWith$Input$DateOnlyRangeFilter(
    Input$DateOnlyRangeFilter instance,
    TRes Function(Input$DateOnlyRangeFilter) then,
  ) = _CopyWithImpl$Input$DateOnlyRangeFilter;

  factory CopyWith$Input$DateOnlyRangeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateOnlyRangeFilter;

  TRes call({
    String? startDate,
    String? endDate,
  });
}

class _CopyWithImpl$Input$DateOnlyRangeFilter<TRes>
    implements CopyWith$Input$DateOnlyRangeFilter<TRes> {
  _CopyWithImpl$Input$DateOnlyRangeFilter(
    this._instance,
    this._then,
  );

  final Input$DateOnlyRangeFilter _instance;

  final TRes Function(Input$DateOnlyRangeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Input$DateOnlyRangeFilter._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
      }));
}

class _CopyWithStubImpl$Input$DateOnlyRangeFilter<TRes>
    implements CopyWith$Input$DateOnlyRangeFilter<TRes> {
  _CopyWithStubImpl$Input$DateOnlyRangeFilter(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
  }) =>
      _res;
}

class Input$DateRangeFilter {
  factory Input$DateRangeFilter({
    String? startDate,
    String? endDate,
  }) =>
      Input$DateRangeFilter._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
      });

  Input$DateRangeFilter._(this._$data);

  factory Input$DateRangeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    return Input$DateRangeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);
  String? get endDate => (_$data['endDate'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    return result$data;
  }

  CopyWith$Input$DateRangeFilter<Input$DateRangeFilter> get copyWith =>
      CopyWith$Input$DateRangeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateRangeFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateRangeFilter<TRes> {
  factory CopyWith$Input$DateRangeFilter(
    Input$DateRangeFilter instance,
    TRes Function(Input$DateRangeFilter) then,
  ) = _CopyWithImpl$Input$DateRangeFilter;

  factory CopyWith$Input$DateRangeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateRangeFilter;

  TRes call({
    String? startDate,
    String? endDate,
  });
}

class _CopyWithImpl$Input$DateRangeFilter<TRes>
    implements CopyWith$Input$DateRangeFilter<TRes> {
  _CopyWithImpl$Input$DateRangeFilter(
    this._instance,
    this._then,
  );

  final Input$DateRangeFilter _instance;

  final TRes Function(Input$DateRangeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Input$DateRangeFilter._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
      }));
}

class _CopyWithStubImpl$Input$DateRangeFilter<TRes>
    implements CopyWith$Input$DateRangeFilter<TRes> {
  _CopyWithStubImpl$Input$DateRangeFilter(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
  }) =>
      _res;
}

class Input$FeatureFilter {
  factory Input$FeatureFilter({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$FeatureTypeFilter? type,
  }) =>
      Input$FeatureFilter._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (account != null) r'account': account,
        if (lifeState != null) r'lifeState': lifeState,
        if (type != null) r'type': type,
      });

  Input$FeatureFilter._(this._$data);

  factory Input$FeatureFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$FeatureTypeFilter.fromJson((l$type as Map<String, dynamic>));
    }
    return Input$FeatureFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$FeatureTypeFilter? get type =>
      (_$data['type'] as Input$FeatureTypeFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$FeatureFilter<Input$FeatureFilter> get copyWith =>
      CopyWith$Input$FeatureFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FeatureFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$account = account;
    final l$lifeState = lifeState;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$FeatureFilter<TRes> {
  factory CopyWith$Input$FeatureFilter(
    Input$FeatureFilter instance,
    TRes Function(Input$FeatureFilter) then,
  ) = _CopyWithImpl$Input$FeatureFilter;

  factory CopyWith$Input$FeatureFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FeatureFilter;

  TRes call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$FeatureTypeFilter? type,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$FeatureTypeFilter<TRes> get type;
}

class _CopyWithImpl$Input$FeatureFilter<TRes>
    implements CopyWith$Input$FeatureFilter<TRes> {
  _CopyWithImpl$Input$FeatureFilter(
    this._instance,
    this._then,
  );

  final Input$FeatureFilter _instance;

  final TRes Function(Input$FeatureFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? account = _undefined,
    Object? lifeState = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$FeatureFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (type != _undefined) 'type': (type as Input$FeatureTypeFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$FeatureTypeFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$FeatureTypeFilter.stub(_then(_instance))
        : CopyWith$Input$FeatureTypeFilter(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$FeatureFilter<TRes>
    implements CopyWith$Input$FeatureFilter<TRes> {
  _CopyWithStubImpl$Input$FeatureFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$FeatureTypeFilter? type,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$FeatureTypeFilter<TRes> get type =>
      CopyWith$Input$FeatureTypeFilter.stub(_res);
}

class Input$FeatureRequest {
  factory Input$FeatureRequest({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    Enum$FeatureType? type,
    String? fileId,
  }) =>
      Input$FeatureRequest._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (type != null) r'type': type,
        if (fileId != null) r'fileId': fileId,
      });

  Input$FeatureRequest._(this._$data);

  factory Input$FeatureRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$FeatureType((l$type as String));
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    return Input$FeatureRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  Enum$FeatureType? get type => (_$data['type'] as Enum$FeatureType?);
  String? get fileId => (_$data['fileId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$FeatureType(l$type);
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    return result$data;
  }

  CopyWith$Input$FeatureRequest<Input$FeatureRequest> get copyWith =>
      CopyWith$Input$FeatureRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FeatureRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$type = type;
    final l$fileId = fileId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
    ]);
  }
}

abstract class CopyWith$Input$FeatureRequest<TRes> {
  factory CopyWith$Input$FeatureRequest(
    Input$FeatureRequest instance,
    TRes Function(Input$FeatureRequest) then,
  ) = _CopyWithImpl$Input$FeatureRequest;

  factory CopyWith$Input$FeatureRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$FeatureRequest;

  TRes call({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    Enum$FeatureType? type,
    String? fileId,
  });
}

class _CopyWithImpl$Input$FeatureRequest<TRes>
    implements CopyWith$Input$FeatureRequest<TRes> {
  _CopyWithImpl$Input$FeatureRequest(
    this._instance,
    this._then,
  );

  final Input$FeatureRequest _instance;

  final TRes Function(Input$FeatureRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? type = _undefined,
    Object? fileId = _undefined,
  }) =>
      _then(Input$FeatureRequest._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (type != _undefined) 'type': (type as Enum$FeatureType?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
      }));
}

class _CopyWithStubImpl$Input$FeatureRequest<TRes>
    implements CopyWith$Input$FeatureRequest<TRes> {
  _CopyWithStubImpl$Input$FeatureRequest(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    Enum$FeatureType? type,
    String? fileId,
  }) =>
      _res;
}

class Input$FeatureTypeFilter {
  factory Input$FeatureTypeFilter({required List<Enum$FeatureType> value}) =>
      Input$FeatureTypeFilter._({
        r'value': value,
      });

  Input$FeatureTypeFilter._(this._$data);

  factory Input$FeatureTypeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] = (l$value as List<dynamic>)
        .map((e) => fromJson$Enum$FeatureType((e as String)))
        .toList();
    return Input$FeatureTypeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$FeatureType> get value =>
      (_$data['value'] as List<Enum$FeatureType>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] =
        l$value.map((e) => toJson$Enum$FeatureType(e)).toList();
    return result$data;
  }

  CopyWith$Input$FeatureTypeFilter<Input$FeatureTypeFilter> get copyWith =>
      CopyWith$Input$FeatureTypeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FeatureTypeFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([Object.hashAll(l$value.map((v) => v))]);
  }
}

abstract class CopyWith$Input$FeatureTypeFilter<TRes> {
  factory CopyWith$Input$FeatureTypeFilter(
    Input$FeatureTypeFilter instance,
    TRes Function(Input$FeatureTypeFilter) then,
  ) = _CopyWithImpl$Input$FeatureTypeFilter;

  factory CopyWith$Input$FeatureTypeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FeatureTypeFilter;

  TRes call({List<Enum$FeatureType>? value});
}

class _CopyWithImpl$Input$FeatureTypeFilter<TRes>
    implements CopyWith$Input$FeatureTypeFilter<TRes> {
  _CopyWithImpl$Input$FeatureTypeFilter(
    this._instance,
    this._then,
  );

  final Input$FeatureTypeFilter _instance;

  final TRes Function(Input$FeatureTypeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$FeatureTypeFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null)
          'value': (value as List<Enum$FeatureType>),
      }));
}

class _CopyWithStubImpl$Input$FeatureTypeFilter<TRes>
    implements CopyWith$Input$FeatureTypeFilter<TRes> {
  _CopyWithStubImpl$Input$FeatureTypeFilter(this._res);

  TRes _res;

  call({List<Enum$FeatureType>? value}) => _res;
}

class Input$FloatRangeFilter {
  factory Input$FloatRangeFilter({
    double? min,
    double? max,
  }) =>
      Input$FloatRangeFilter._({
        if (min != null) r'min': min,
        if (max != null) r'max': max,
      });

  Input$FloatRangeFilter._(this._$data);

  factory Input$FloatRangeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = (l$min as num?)?.toDouble();
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = (l$max as num?)?.toDouble();
    }
    return Input$FloatRangeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get min => (_$data['min'] as double?);
  double? get max => (_$data['max'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min;
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max;
    }
    return result$data;
  }

  CopyWith$Input$FloatRangeFilter<Input$FloatRangeFilter> get copyWith =>
      CopyWith$Input$FloatRangeFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatRangeFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      _$data.containsKey('min') ? l$min : const {},
      _$data.containsKey('max') ? l$max : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatRangeFilter<TRes> {
  factory CopyWith$Input$FloatRangeFilter(
    Input$FloatRangeFilter instance,
    TRes Function(Input$FloatRangeFilter) then,
  ) = _CopyWithImpl$Input$FloatRangeFilter;

  factory CopyWith$Input$FloatRangeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatRangeFilter;

  TRes call({
    double? min,
    double? max,
  });
}

class _CopyWithImpl$Input$FloatRangeFilter<TRes>
    implements CopyWith$Input$FloatRangeFilter<TRes> {
  _CopyWithImpl$Input$FloatRangeFilter(
    this._instance,
    this._then,
  );

  final Input$FloatRangeFilter _instance;

  final TRes Function(Input$FloatRangeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$FloatRangeFilter._({
        ..._instance._$data,
        if (min != _undefined) 'min': (min as double?),
        if (max != _undefined) 'max': (max as double?),
      }));
}

class _CopyWithStubImpl$Input$FloatRangeFilter<TRes>
    implements CopyWith$Input$FloatRangeFilter<TRes> {
  _CopyWithStubImpl$Input$FloatRangeFilter(this._res);

  TRes _res;

  call({
    double? min,
    double? max,
  }) =>
      _res;
}

class Input$FloorRequest {
  factory Input$FloorRequest({
    String? accountId,
    String? blockId,
    Enum$LifeState? lifeState,
    int? no,
  }) =>
      Input$FloorRequest._({
        if (accountId != null) r'accountId': accountId,
        if (blockId != null) r'blockId': blockId,
        if (lifeState != null) r'lifeState': lifeState,
        if (no != null) r'no': no,
      });

  Input$FloorRequest._(this._$data);

  factory Input$FloorRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('blockId')) {
      final l$blockId = data['blockId'];
      result$data['blockId'] = (l$blockId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('no')) {
      final l$no = data['no'];
      result$data['no'] = (l$no as int?);
    }
    return Input$FloorRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountId => (_$data['accountId'] as String?);
  String? get blockId => (_$data['blockId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  int? get no => (_$data['no'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('blockId')) {
      final l$blockId = blockId;
      result$data['blockId'] = l$blockId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('no')) {
      final l$no = no;
      result$data['no'] = l$no;
    }
    return result$data;
  }

  CopyWith$Input$FloorRequest<Input$FloorRequest> get copyWith =>
      CopyWith$Input$FloorRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloorRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$blockId = blockId;
    final lOther$blockId = other.blockId;
    if (_$data.containsKey('blockId') != other._$data.containsKey('blockId')) {
      return false;
    }
    if (l$blockId != lOther$blockId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (_$data.containsKey('no') != other._$data.containsKey('no')) {
      return false;
    }
    if (l$no != lOther$no) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$blockId = blockId;
    final l$lifeState = lifeState;
    final l$no = no;
    return Object.hashAll([
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('blockId') ? l$blockId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('no') ? l$no : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloorRequest<TRes> {
  factory CopyWith$Input$FloorRequest(
    Input$FloorRequest instance,
    TRes Function(Input$FloorRequest) then,
  ) = _CopyWithImpl$Input$FloorRequest;

  factory CopyWith$Input$FloorRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$FloorRequest;

  TRes call({
    String? accountId,
    String? blockId,
    Enum$LifeState? lifeState,
    int? no,
  });
}

class _CopyWithImpl$Input$FloorRequest<TRes>
    implements CopyWith$Input$FloorRequest<TRes> {
  _CopyWithImpl$Input$FloorRequest(
    this._instance,
    this._then,
  );

  final Input$FloorRequest _instance;

  final TRes Function(Input$FloorRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? blockId = _undefined,
    Object? lifeState = _undefined,
    Object? no = _undefined,
  }) =>
      _then(Input$FloorRequest._({
        ..._instance._$data,
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (blockId != _undefined) 'blockId': (blockId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (no != _undefined) 'no': (no as int?),
      }));
}

class _CopyWithStubImpl$Input$FloorRequest<TRes>
    implements CopyWith$Input$FloorRequest<TRes> {
  _CopyWithStubImpl$Input$FloorRequest(this._res);

  TRes _res;

  call({
    String? accountId,
    String? blockId,
    Enum$LifeState? lifeState,
    int? no,
  }) =>
      _res;
}

class Input$GeoBoundingBoxFilter {
  factory Input$GeoBoundingBoxFilter({
    required Input$LocationRequest topLeft,
    required Input$LocationRequest bottomRight,
  }) =>
      Input$GeoBoundingBoxFilter._({
        r'topLeft': topLeft,
        r'bottomRight': bottomRight,
      });

  Input$GeoBoundingBoxFilter._(this._$data);

  factory Input$GeoBoundingBoxFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$topLeft = data['topLeft'];
    result$data['topLeft'] =
        Input$LocationRequest.fromJson((l$topLeft as Map<String, dynamic>));
    final l$bottomRight = data['bottomRight'];
    result$data['bottomRight'] =
        Input$LocationRequest.fromJson((l$bottomRight as Map<String, dynamic>));
    return Input$GeoBoundingBoxFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LocationRequest get topLeft =>
      (_$data['topLeft'] as Input$LocationRequest);
  Input$LocationRequest get bottomRight =>
      (_$data['bottomRight'] as Input$LocationRequest);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$topLeft = topLeft;
    result$data['topLeft'] = l$topLeft.toJson();
    final l$bottomRight = bottomRight;
    result$data['bottomRight'] = l$bottomRight.toJson();
    return result$data;
  }

  CopyWith$Input$GeoBoundingBoxFilter<Input$GeoBoundingBoxFilter>
      get copyWith => CopyWith$Input$GeoBoundingBoxFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoBoundingBoxFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topLeft = topLeft;
    final lOther$topLeft = other.topLeft;
    if (l$topLeft != lOther$topLeft) {
      return false;
    }
    final l$bottomRight = bottomRight;
    final lOther$bottomRight = other.bottomRight;
    if (l$bottomRight != lOther$bottomRight) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$topLeft = topLeft;
    final l$bottomRight = bottomRight;
    return Object.hashAll([
      l$topLeft,
      l$bottomRight,
    ]);
  }
}

abstract class CopyWith$Input$GeoBoundingBoxFilter<TRes> {
  factory CopyWith$Input$GeoBoundingBoxFilter(
    Input$GeoBoundingBoxFilter instance,
    TRes Function(Input$GeoBoundingBoxFilter) then,
  ) = _CopyWithImpl$Input$GeoBoundingBoxFilter;

  factory CopyWith$Input$GeoBoundingBoxFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoBoundingBoxFilter;

  TRes call({
    Input$LocationRequest? topLeft,
    Input$LocationRequest? bottomRight,
  });
  CopyWith$Input$LocationRequest<TRes> get topLeft;
  CopyWith$Input$LocationRequest<TRes> get bottomRight;
}

class _CopyWithImpl$Input$GeoBoundingBoxFilter<TRes>
    implements CopyWith$Input$GeoBoundingBoxFilter<TRes> {
  _CopyWithImpl$Input$GeoBoundingBoxFilter(
    this._instance,
    this._then,
  );

  final Input$GeoBoundingBoxFilter _instance;

  final TRes Function(Input$GeoBoundingBoxFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topLeft = _undefined,
    Object? bottomRight = _undefined,
  }) =>
      _then(Input$GeoBoundingBoxFilter._({
        ..._instance._$data,
        if (topLeft != _undefined && topLeft != null)
          'topLeft': (topLeft as Input$LocationRequest),
        if (bottomRight != _undefined && bottomRight != null)
          'bottomRight': (bottomRight as Input$LocationRequest),
      }));
  CopyWith$Input$LocationRequest<TRes> get topLeft {
    final local$topLeft = _instance.topLeft;
    return CopyWith$Input$LocationRequest(
        local$topLeft, (e) => call(topLeft: e));
  }

  CopyWith$Input$LocationRequest<TRes> get bottomRight {
    final local$bottomRight = _instance.bottomRight;
    return CopyWith$Input$LocationRequest(
        local$bottomRight, (e) => call(bottomRight: e));
  }
}

class _CopyWithStubImpl$Input$GeoBoundingBoxFilter<TRes>
    implements CopyWith$Input$GeoBoundingBoxFilter<TRes> {
  _CopyWithStubImpl$Input$GeoBoundingBoxFilter(this._res);

  TRes _res;

  call({
    Input$LocationRequest? topLeft,
    Input$LocationRequest? bottomRight,
  }) =>
      _res;
  CopyWith$Input$LocationRequest<TRes> get topLeft =>
      CopyWith$Input$LocationRequest.stub(_res);
  CopyWith$Input$LocationRequest<TRes> get bottomRight =>
      CopyWith$Input$LocationRequest.stub(_res);
}

class Input$GeoDistanceFilter {
  factory Input$GeoDistanceFilter({
    required Input$LocationRequest location,
    String? distance,
  }) =>
      Input$GeoDistanceFilter._({
        r'location': location,
        if (distance != null) r'distance': distance,
      });

  Input$GeoDistanceFilter._(this._$data);

  factory Input$GeoDistanceFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$location = data['location'];
    result$data['location'] =
        Input$LocationRequest.fromJson((l$location as Map<String, dynamic>));
    if (data.containsKey('distance')) {
      final l$distance = data['distance'];
      result$data['distance'] = (l$distance as String?);
    }
    return Input$GeoDistanceFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LocationRequest get location =>
      (_$data['location'] as Input$LocationRequest);
  String? get distance => (_$data['distance'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$location = location;
    result$data['location'] = l$location.toJson();
    if (_$data.containsKey('distance')) {
      final l$distance = distance;
      result$data['distance'] = l$distance;
    }
    return result$data;
  }

  CopyWith$Input$GeoDistanceFilter<Input$GeoDistanceFilter> get copyWith =>
      CopyWith$Input$GeoDistanceFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoDistanceFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (_$data.containsKey('distance') !=
        other._$data.containsKey('distance')) {
      return false;
    }
    if (l$distance != lOther$distance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$location = location;
    final l$distance = distance;
    return Object.hashAll([
      l$location,
      _$data.containsKey('distance') ? l$distance : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoDistanceFilter<TRes> {
  factory CopyWith$Input$GeoDistanceFilter(
    Input$GeoDistanceFilter instance,
    TRes Function(Input$GeoDistanceFilter) then,
  ) = _CopyWithImpl$Input$GeoDistanceFilter;

  factory CopyWith$Input$GeoDistanceFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoDistanceFilter;

  TRes call({
    Input$LocationRequest? location,
    String? distance,
  });
  CopyWith$Input$LocationRequest<TRes> get location;
}

class _CopyWithImpl$Input$GeoDistanceFilter<TRes>
    implements CopyWith$Input$GeoDistanceFilter<TRes> {
  _CopyWithImpl$Input$GeoDistanceFilter(
    this._instance,
    this._then,
  );

  final Input$GeoDistanceFilter _instance;

  final TRes Function(Input$GeoDistanceFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? location = _undefined,
    Object? distance = _undefined,
  }) =>
      _then(Input$GeoDistanceFilter._({
        ..._instance._$data,
        if (location != _undefined && location != null)
          'location': (location as Input$LocationRequest),
        if (distance != _undefined) 'distance': (distance as String?),
      }));
  CopyWith$Input$LocationRequest<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Input$LocationRequest(
        local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Input$GeoDistanceFilter<TRes>
    implements CopyWith$Input$GeoDistanceFilter<TRes> {
  _CopyWithStubImpl$Input$GeoDistanceFilter(this._res);

  TRes _res;

  call({
    Input$LocationRequest? location,
    String? distance,
  }) =>
      _res;
  CopyWith$Input$LocationRequest<TRes> get location =>
      CopyWith$Input$LocationRequest.stub(_res);
}

class Input$IDFilter {
  factory Input$IDFilter({required List<String> value}) => Input$IDFilter._({
        r'value': value,
      });

  Input$IDFilter._(this._$data);

  factory Input$IDFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] =
        (l$value as List<dynamic>).map((e) => (e as String)).toList();
    return Input$IDFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get value => (_$data['value'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] = l$value.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$IDFilter<Input$IDFilter> get copyWith =>
      CopyWith$Input$IDFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IDFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([Object.hashAll(l$value.map((v) => v))]);
  }
}

abstract class CopyWith$Input$IDFilter<TRes> {
  factory CopyWith$Input$IDFilter(
    Input$IDFilter instance,
    TRes Function(Input$IDFilter) then,
  ) = _CopyWithImpl$Input$IDFilter;

  factory CopyWith$Input$IDFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IDFilter;

  TRes call({List<String>? value});
}

class _CopyWithImpl$Input$IDFilter<TRes>
    implements CopyWith$Input$IDFilter<TRes> {
  _CopyWithImpl$Input$IDFilter(
    this._instance,
    this._then,
  );

  final Input$IDFilter _instance;

  final TRes Function(Input$IDFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$IDFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null)
          'value': (value as List<String>),
      }));
}

class _CopyWithStubImpl$Input$IDFilter<TRes>
    implements CopyWith$Input$IDFilter<TRes> {
  _CopyWithStubImpl$Input$IDFilter(this._res);

  TRes _res;

  call({List<String>? value}) => _res;
}

class Input$IDProofRequest {
  factory Input$IDProofRequest({
    String? type1,
    String? value1,
    String? type2,
    String? value2,
  }) =>
      Input$IDProofRequest._({
        if (type1 != null) r'type1': type1,
        if (value1 != null) r'value1': value1,
        if (type2 != null) r'type2': type2,
        if (value2 != null) r'value2': value2,
      });

  Input$IDProofRequest._(this._$data);

  factory Input$IDProofRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type1')) {
      final l$type1 = data['type1'];
      result$data['type1'] = (l$type1 as String?);
    }
    if (data.containsKey('value1')) {
      final l$value1 = data['value1'];
      result$data['value1'] = (l$value1 as String?);
    }
    if (data.containsKey('type2')) {
      final l$type2 = data['type2'];
      result$data['type2'] = (l$type2 as String?);
    }
    if (data.containsKey('value2')) {
      final l$value2 = data['value2'];
      result$data['value2'] = (l$value2 as String?);
    }
    return Input$IDProofRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get type1 => (_$data['type1'] as String?);
  String? get value1 => (_$data['value1'] as String?);
  String? get type2 => (_$data['type2'] as String?);
  String? get value2 => (_$data['value2'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type1')) {
      final l$type1 = type1;
      result$data['type1'] = l$type1;
    }
    if (_$data.containsKey('value1')) {
      final l$value1 = value1;
      result$data['value1'] = l$value1;
    }
    if (_$data.containsKey('type2')) {
      final l$type2 = type2;
      result$data['type2'] = l$type2;
    }
    if (_$data.containsKey('value2')) {
      final l$value2 = value2;
      result$data['value2'] = l$value2;
    }
    return result$data;
  }

  CopyWith$Input$IDProofRequest<Input$IDProofRequest> get copyWith =>
      CopyWith$Input$IDProofRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IDProofRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$type1 = type1;
    final lOther$type1 = other.type1;
    if (_$data.containsKey('type1') != other._$data.containsKey('type1')) {
      return false;
    }
    if (l$type1 != lOther$type1) {
      return false;
    }
    final l$value1 = value1;
    final lOther$value1 = other.value1;
    if (_$data.containsKey('value1') != other._$data.containsKey('value1')) {
      return false;
    }
    if (l$value1 != lOther$value1) {
      return false;
    }
    final l$type2 = type2;
    final lOther$type2 = other.type2;
    if (_$data.containsKey('type2') != other._$data.containsKey('type2')) {
      return false;
    }
    if (l$type2 != lOther$type2) {
      return false;
    }
    final l$value2 = value2;
    final lOther$value2 = other.value2;
    if (_$data.containsKey('value2') != other._$data.containsKey('value2')) {
      return false;
    }
    if (l$value2 != lOther$value2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type1 = type1;
    final l$value1 = value1;
    final l$type2 = type2;
    final l$value2 = value2;
    return Object.hashAll([
      _$data.containsKey('type1') ? l$type1 : const {},
      _$data.containsKey('value1') ? l$value1 : const {},
      _$data.containsKey('type2') ? l$type2 : const {},
      _$data.containsKey('value2') ? l$value2 : const {},
    ]);
  }
}

abstract class CopyWith$Input$IDProofRequest<TRes> {
  factory CopyWith$Input$IDProofRequest(
    Input$IDProofRequest instance,
    TRes Function(Input$IDProofRequest) then,
  ) = _CopyWithImpl$Input$IDProofRequest;

  factory CopyWith$Input$IDProofRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$IDProofRequest;

  TRes call({
    String? type1,
    String? value1,
    String? type2,
    String? value2,
  });
}

class _CopyWithImpl$Input$IDProofRequest<TRes>
    implements CopyWith$Input$IDProofRequest<TRes> {
  _CopyWithImpl$Input$IDProofRequest(
    this._instance,
    this._then,
  );

  final Input$IDProofRequest _instance;

  final TRes Function(Input$IDProofRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type1 = _undefined,
    Object? value1 = _undefined,
    Object? type2 = _undefined,
    Object? value2 = _undefined,
  }) =>
      _then(Input$IDProofRequest._({
        ..._instance._$data,
        if (type1 != _undefined) 'type1': (type1 as String?),
        if (value1 != _undefined) 'value1': (value1 as String?),
        if (type2 != _undefined) 'type2': (type2 as String?),
        if (value2 != _undefined) 'value2': (value2 as String?),
      }));
}

class _CopyWithStubImpl$Input$IDProofRequest<TRes>
    implements CopyWith$Input$IDProofRequest<TRes> {
  _CopyWithStubImpl$Input$IDProofRequest(this._res);

  TRes _res;

  call({
    String? type1,
    String? value1,
    String? type2,
    String? value2,
  }) =>
      _res;
}

class Input$IntFilter {
  factory Input$IntFilter({List<int?>? value}) => Input$IntFilter._({
        if (value != null) r'value': value,
      });

  Input$IntFilter._(this._$data);

  factory Input$IntFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] =
          (l$value as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    return Input$IntFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<int?>? get value => (_$data['value'] as List<int?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$IntFilter<Input$IntFilter> get copyWith =>
      CopyWith$Input$IntFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != null && lOther$value != null) {
      if (l$value.length != lOther$value.length) {
        return false;
      }
      for (int i = 0; i < l$value.length; i++) {
        final l$value$entry = l$value[i];
        final lOther$value$entry = lOther$value[i];
        if (l$value$entry != lOther$value$entry) {
          return false;
        }
      }
    } else if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('value')
          ? l$value == null
              ? null
              : Object.hashAll(l$value.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$IntFilter<TRes> {
  factory CopyWith$Input$IntFilter(
    Input$IntFilter instance,
    TRes Function(Input$IntFilter) then,
  ) = _CopyWithImpl$Input$IntFilter;

  factory CopyWith$Input$IntFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFilter;

  TRes call({List<int?>? value});
}

class _CopyWithImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithImpl$Input$IntFilter(
    this._instance,
    this._then,
  );

  final Input$IntFilter _instance;

  final TRes Function(Input$IntFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$IntFilter._({
        ..._instance._$data,
        if (value != _undefined) 'value': (value as List<int?>?),
      }));
}

class _CopyWithStubImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithStubImpl$Input$IntFilter(this._res);

  TRes _res;

  call({List<int?>? value}) => _res;
}

class Input$LifeStateFilter {
  factory Input$LifeStateFilter({required List<Enum$LifeState> value}) =>
      Input$LifeStateFilter._({
        r'value': value,
      });

  Input$LifeStateFilter._(this._$data);

  factory Input$LifeStateFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] = (l$value as List<dynamic>)
        .map((e) => fromJson$Enum$LifeState((e as String)))
        .toList();
    return Input$LifeStateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$LifeState> get value => (_$data['value'] as List<Enum$LifeState>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] =
        l$value.map((e) => toJson$Enum$LifeState(e)).toList();
    return result$data;
  }

  CopyWith$Input$LifeStateFilter<Input$LifeStateFilter> get copyWith =>
      CopyWith$Input$LifeStateFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LifeStateFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([Object.hashAll(l$value.map((v) => v))]);
  }
}

abstract class CopyWith$Input$LifeStateFilter<TRes> {
  factory CopyWith$Input$LifeStateFilter(
    Input$LifeStateFilter instance,
    TRes Function(Input$LifeStateFilter) then,
  ) = _CopyWithImpl$Input$LifeStateFilter;

  factory CopyWith$Input$LifeStateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$LifeStateFilter;

  TRes call({List<Enum$LifeState>? value});
}

class _CopyWithImpl$Input$LifeStateFilter<TRes>
    implements CopyWith$Input$LifeStateFilter<TRes> {
  _CopyWithImpl$Input$LifeStateFilter(
    this._instance,
    this._then,
  );

  final Input$LifeStateFilter _instance;

  final TRes Function(Input$LifeStateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) => _then(Input$LifeStateFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null)
          'value': (value as List<Enum$LifeState>),
      }));
}

class _CopyWithStubImpl$Input$LifeStateFilter<TRes>
    implements CopyWith$Input$LifeStateFilter<TRes> {
  _CopyWithStubImpl$Input$LifeStateFilter(this._res);

  TRes _res;

  call({List<Enum$LifeState>? value}) => _res;
}

class Input$LocationRequest {
  factory Input$LocationRequest({
    required double latitude,
    required double longitude,
  }) =>
      Input$LocationRequest._({
        r'latitude': latitude,
        r'longitude': longitude,
      });

  Input$LocationRequest._(this._$data);

  factory Input$LocationRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    return Input$LocationRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  double get latitude => (_$data['latitude'] as double);
  double get longitude => (_$data['longitude'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    return result$data;
  }

  CopyWith$Input$LocationRequest<Input$LocationRequest> get copyWith =>
      CopyWith$Input$LocationRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LocationRequest) || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      l$latitude,
      l$longitude,
    ]);
  }
}

abstract class CopyWith$Input$LocationRequest<TRes> {
  factory CopyWith$Input$LocationRequest(
    Input$LocationRequest instance,
    TRes Function(Input$LocationRequest) then,
  ) = _CopyWithImpl$Input$LocationRequest;

  factory CopyWith$Input$LocationRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$LocationRequest;

  TRes call({
    double? latitude,
    double? longitude,
  });
}

class _CopyWithImpl$Input$LocationRequest<TRes>
    implements CopyWith$Input$LocationRequest<TRes> {
  _CopyWithImpl$Input$LocationRequest(
    this._instance,
    this._then,
  );

  final Input$LocationRequest _instance;

  final TRes Function(Input$LocationRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Input$LocationRequest._({
        ..._instance._$data,
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
      }));
}

class _CopyWithStubImpl$Input$LocationRequest<TRes>
    implements CopyWith$Input$LocationRequest<TRes> {
  _CopyWithStubImpl$Input$LocationRequest(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
  }) =>
      _res;
}

class Input$ObjectFilter {
  factory Input$ObjectFilter({Input$StringFilter? type}) =>
      Input$ObjectFilter._({
        if (type != null) r'type': type,
      });

  Input$ObjectFilter._(this._$data);

  factory Input$ObjectFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringFilter.fromJson((l$type as Map<String, dynamic>));
    }
    return Input$ObjectFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFilter? get type => (_$data['type'] as Input$StringFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ObjectFilter<Input$ObjectFilter> get copyWith =>
      CopyWith$Input$ObjectFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ObjectFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    return Object.hashAll([_$data.containsKey('type') ? l$type : const {}]);
  }
}

abstract class CopyWith$Input$ObjectFilter<TRes> {
  factory CopyWith$Input$ObjectFilter(
    Input$ObjectFilter instance,
    TRes Function(Input$ObjectFilter) then,
  ) = _CopyWithImpl$Input$ObjectFilter;

  factory CopyWith$Input$ObjectFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ObjectFilter;

  TRes call({Input$StringFilter? type});
  CopyWith$Input$StringFilter<TRes> get type;
}

class _CopyWithImpl$Input$ObjectFilter<TRes>
    implements CopyWith$Input$ObjectFilter<TRes> {
  _CopyWithImpl$Input$ObjectFilter(
    this._instance,
    this._then,
  );

  final Input$ObjectFilter _instance;

  final TRes Function(Input$ObjectFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? type = _undefined}) => _then(Input$ObjectFilter._({
        ..._instance._$data,
        if (type != _undefined) 'type': (type as Input$StringFilter?),
      }));
  CopyWith$Input$StringFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$ObjectFilter<TRes>
    implements CopyWith$Input$ObjectFilter<TRes> {
  _CopyWithStubImpl$Input$ObjectFilter(this._res);

  TRes _res;

  call({Input$StringFilter? type}) => _res;
  CopyWith$Input$StringFilter<TRes> get type =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$Options {
  factory Input$Options({
    bool? isHardDelete,
    bool? ignoreLifeState,
    bool? upsert,
    bool? skipPagination,
    bool? isGlobal,
    Enum$EndExistingAssociations? endExistingAssociations,
    bool? exceptionOnConflict,
    Enum$ResourceCategory? primaryObjCat,
    Enum$ResourceCategory? secondaryObjCat,
    bool? isRefresh,
  }) =>
      Input$Options._({
        if (isHardDelete != null) r'isHardDelete': isHardDelete,
        if (ignoreLifeState != null) r'ignoreLifeState': ignoreLifeState,
        if (upsert != null) r'upsert': upsert,
        if (skipPagination != null) r'skipPagination': skipPagination,
        if (isGlobal != null) r'isGlobal': isGlobal,
        if (endExistingAssociations != null)
          r'endExistingAssociations': endExistingAssociations,
        if (exceptionOnConflict != null)
          r'exceptionOnConflict': exceptionOnConflict,
        if (primaryObjCat != null) r'primaryObjCat': primaryObjCat,
        if (secondaryObjCat != null) r'secondaryObjCat': secondaryObjCat,
        if (isRefresh != null) r'isRefresh': isRefresh,
      });

  Input$Options._(this._$data);

  factory Input$Options.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isHardDelete')) {
      final l$isHardDelete = data['isHardDelete'];
      result$data['isHardDelete'] = (l$isHardDelete as bool?);
    }
    if (data.containsKey('ignoreLifeState')) {
      final l$ignoreLifeState = data['ignoreLifeState'];
      result$data['ignoreLifeState'] = (l$ignoreLifeState as bool?);
    }
    if (data.containsKey('upsert')) {
      final l$upsert = data['upsert'];
      result$data['upsert'] = (l$upsert as bool?);
    }
    if (data.containsKey('skipPagination')) {
      final l$skipPagination = data['skipPagination'];
      result$data['skipPagination'] = (l$skipPagination as bool?);
    }
    if (data.containsKey('isGlobal')) {
      final l$isGlobal = data['isGlobal'];
      result$data['isGlobal'] = (l$isGlobal as bool?);
    }
    if (data.containsKey('endExistingAssociations')) {
      final l$endExistingAssociations = data['endExistingAssociations'];
      result$data['endExistingAssociations'] = l$endExistingAssociations == null
          ? null
          : fromJson$Enum$EndExistingAssociations(
              (l$endExistingAssociations as String));
    }
    if (data.containsKey('exceptionOnConflict')) {
      final l$exceptionOnConflict = data['exceptionOnConflict'];
      result$data['exceptionOnConflict'] = (l$exceptionOnConflict as bool?);
    }
    if (data.containsKey('primaryObjCat')) {
      final l$primaryObjCat = data['primaryObjCat'];
      result$data['primaryObjCat'] = l$primaryObjCat == null
          ? null
          : fromJson$Enum$ResourceCategory((l$primaryObjCat as String));
    }
    if (data.containsKey('secondaryObjCat')) {
      final l$secondaryObjCat = data['secondaryObjCat'];
      result$data['secondaryObjCat'] = l$secondaryObjCat == null
          ? null
          : fromJson$Enum$ResourceCategory((l$secondaryObjCat as String));
    }
    if (data.containsKey('isRefresh')) {
      final l$isRefresh = data['isRefresh'];
      result$data['isRefresh'] = (l$isRefresh as bool?);
    }
    return Input$Options._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isHardDelete => (_$data['isHardDelete'] as bool?);
  bool? get ignoreLifeState => (_$data['ignoreLifeState'] as bool?);
  bool? get upsert => (_$data['upsert'] as bool?);
  bool? get skipPagination => (_$data['skipPagination'] as bool?);
  bool? get isGlobal => (_$data['isGlobal'] as bool?);
  Enum$EndExistingAssociations? get endExistingAssociations =>
      (_$data['endExistingAssociations'] as Enum$EndExistingAssociations?);
  bool? get exceptionOnConflict => (_$data['exceptionOnConflict'] as bool?);
  Enum$ResourceCategory? get primaryObjCat =>
      (_$data['primaryObjCat'] as Enum$ResourceCategory?);
  Enum$ResourceCategory? get secondaryObjCat =>
      (_$data['secondaryObjCat'] as Enum$ResourceCategory?);
  bool? get isRefresh => (_$data['isRefresh'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isHardDelete')) {
      final l$isHardDelete = isHardDelete;
      result$data['isHardDelete'] = l$isHardDelete;
    }
    if (_$data.containsKey('ignoreLifeState')) {
      final l$ignoreLifeState = ignoreLifeState;
      result$data['ignoreLifeState'] = l$ignoreLifeState;
    }
    if (_$data.containsKey('upsert')) {
      final l$upsert = upsert;
      result$data['upsert'] = l$upsert;
    }
    if (_$data.containsKey('skipPagination')) {
      final l$skipPagination = skipPagination;
      result$data['skipPagination'] = l$skipPagination;
    }
    if (_$data.containsKey('isGlobal')) {
      final l$isGlobal = isGlobal;
      result$data['isGlobal'] = l$isGlobal;
    }
    if (_$data.containsKey('endExistingAssociations')) {
      final l$endExistingAssociations = endExistingAssociations;
      result$data['endExistingAssociations'] = l$endExistingAssociations == null
          ? null
          : toJson$Enum$EndExistingAssociations(l$endExistingAssociations);
    }
    if (_$data.containsKey('exceptionOnConflict')) {
      final l$exceptionOnConflict = exceptionOnConflict;
      result$data['exceptionOnConflict'] = l$exceptionOnConflict;
    }
    if (_$data.containsKey('primaryObjCat')) {
      final l$primaryObjCat = primaryObjCat;
      result$data['primaryObjCat'] = l$primaryObjCat == null
          ? null
          : toJson$Enum$ResourceCategory(l$primaryObjCat);
    }
    if (_$data.containsKey('secondaryObjCat')) {
      final l$secondaryObjCat = secondaryObjCat;
      result$data['secondaryObjCat'] = l$secondaryObjCat == null
          ? null
          : toJson$Enum$ResourceCategory(l$secondaryObjCat);
    }
    if (_$data.containsKey('isRefresh')) {
      final l$isRefresh = isRefresh;
      result$data['isRefresh'] = l$isRefresh;
    }
    return result$data;
  }

  CopyWith$Input$Options<Input$Options> get copyWith => CopyWith$Input$Options(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Options) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isHardDelete = isHardDelete;
    final lOther$isHardDelete = other.isHardDelete;
    if (_$data.containsKey('isHardDelete') !=
        other._$data.containsKey('isHardDelete')) {
      return false;
    }
    if (l$isHardDelete != lOther$isHardDelete) {
      return false;
    }
    final l$ignoreLifeState = ignoreLifeState;
    final lOther$ignoreLifeState = other.ignoreLifeState;
    if (_$data.containsKey('ignoreLifeState') !=
        other._$data.containsKey('ignoreLifeState')) {
      return false;
    }
    if (l$ignoreLifeState != lOther$ignoreLifeState) {
      return false;
    }
    final l$upsert = upsert;
    final lOther$upsert = other.upsert;
    if (_$data.containsKey('upsert') != other._$data.containsKey('upsert')) {
      return false;
    }
    if (l$upsert != lOther$upsert) {
      return false;
    }
    final l$skipPagination = skipPagination;
    final lOther$skipPagination = other.skipPagination;
    if (_$data.containsKey('skipPagination') !=
        other._$data.containsKey('skipPagination')) {
      return false;
    }
    if (l$skipPagination != lOther$skipPagination) {
      return false;
    }
    final l$isGlobal = isGlobal;
    final lOther$isGlobal = other.isGlobal;
    if (_$data.containsKey('isGlobal') !=
        other._$data.containsKey('isGlobal')) {
      return false;
    }
    if (l$isGlobal != lOther$isGlobal) {
      return false;
    }
    final l$endExistingAssociations = endExistingAssociations;
    final lOther$endExistingAssociations = other.endExistingAssociations;
    if (_$data.containsKey('endExistingAssociations') !=
        other._$data.containsKey('endExistingAssociations')) {
      return false;
    }
    if (l$endExistingAssociations != lOther$endExistingAssociations) {
      return false;
    }
    final l$exceptionOnConflict = exceptionOnConflict;
    final lOther$exceptionOnConflict = other.exceptionOnConflict;
    if (_$data.containsKey('exceptionOnConflict') !=
        other._$data.containsKey('exceptionOnConflict')) {
      return false;
    }
    if (l$exceptionOnConflict != lOther$exceptionOnConflict) {
      return false;
    }
    final l$primaryObjCat = primaryObjCat;
    final lOther$primaryObjCat = other.primaryObjCat;
    if (_$data.containsKey('primaryObjCat') !=
        other._$data.containsKey('primaryObjCat')) {
      return false;
    }
    if (l$primaryObjCat != lOther$primaryObjCat) {
      return false;
    }
    final l$secondaryObjCat = secondaryObjCat;
    final lOther$secondaryObjCat = other.secondaryObjCat;
    if (_$data.containsKey('secondaryObjCat') !=
        other._$data.containsKey('secondaryObjCat')) {
      return false;
    }
    if (l$secondaryObjCat != lOther$secondaryObjCat) {
      return false;
    }
    final l$isRefresh = isRefresh;
    final lOther$isRefresh = other.isRefresh;
    if (_$data.containsKey('isRefresh') !=
        other._$data.containsKey('isRefresh')) {
      return false;
    }
    if (l$isRefresh != lOther$isRefresh) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isHardDelete = isHardDelete;
    final l$ignoreLifeState = ignoreLifeState;
    final l$upsert = upsert;
    final l$skipPagination = skipPagination;
    final l$isGlobal = isGlobal;
    final l$endExistingAssociations = endExistingAssociations;
    final l$exceptionOnConflict = exceptionOnConflict;
    final l$primaryObjCat = primaryObjCat;
    final l$secondaryObjCat = secondaryObjCat;
    final l$isRefresh = isRefresh;
    return Object.hashAll([
      _$data.containsKey('isHardDelete') ? l$isHardDelete : const {},
      _$data.containsKey('ignoreLifeState') ? l$ignoreLifeState : const {},
      _$data.containsKey('upsert') ? l$upsert : const {},
      _$data.containsKey('skipPagination') ? l$skipPagination : const {},
      _$data.containsKey('isGlobal') ? l$isGlobal : const {},
      _$data.containsKey('endExistingAssociations')
          ? l$endExistingAssociations
          : const {},
      _$data.containsKey('exceptionOnConflict')
          ? l$exceptionOnConflict
          : const {},
      _$data.containsKey('primaryObjCat') ? l$primaryObjCat : const {},
      _$data.containsKey('secondaryObjCat') ? l$secondaryObjCat : const {},
      _$data.containsKey('isRefresh') ? l$isRefresh : const {},
    ]);
  }
}

abstract class CopyWith$Input$Options<TRes> {
  factory CopyWith$Input$Options(
    Input$Options instance,
    TRes Function(Input$Options) then,
  ) = _CopyWithImpl$Input$Options;

  factory CopyWith$Input$Options.stub(TRes res) =
      _CopyWithStubImpl$Input$Options;

  TRes call({
    bool? isHardDelete,
    bool? ignoreLifeState,
    bool? upsert,
    bool? skipPagination,
    bool? isGlobal,
    Enum$EndExistingAssociations? endExistingAssociations,
    bool? exceptionOnConflict,
    Enum$ResourceCategory? primaryObjCat,
    Enum$ResourceCategory? secondaryObjCat,
    bool? isRefresh,
  });
}

class _CopyWithImpl$Input$Options<TRes>
    implements CopyWith$Input$Options<TRes> {
  _CopyWithImpl$Input$Options(
    this._instance,
    this._then,
  );

  final Input$Options _instance;

  final TRes Function(Input$Options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isHardDelete = _undefined,
    Object? ignoreLifeState = _undefined,
    Object? upsert = _undefined,
    Object? skipPagination = _undefined,
    Object? isGlobal = _undefined,
    Object? endExistingAssociations = _undefined,
    Object? exceptionOnConflict = _undefined,
    Object? primaryObjCat = _undefined,
    Object? secondaryObjCat = _undefined,
    Object? isRefresh = _undefined,
  }) =>
      _then(Input$Options._({
        ..._instance._$data,
        if (isHardDelete != _undefined) 'isHardDelete': (isHardDelete as bool?),
        if (ignoreLifeState != _undefined)
          'ignoreLifeState': (ignoreLifeState as bool?),
        if (upsert != _undefined) 'upsert': (upsert as bool?),
        if (skipPagination != _undefined)
          'skipPagination': (skipPagination as bool?),
        if (isGlobal != _undefined) 'isGlobal': (isGlobal as bool?),
        if (endExistingAssociations != _undefined)
          'endExistingAssociations':
              (endExistingAssociations as Enum$EndExistingAssociations?),
        if (exceptionOnConflict != _undefined)
          'exceptionOnConflict': (exceptionOnConflict as bool?),
        if (primaryObjCat != _undefined)
          'primaryObjCat': (primaryObjCat as Enum$ResourceCategory?),
        if (secondaryObjCat != _undefined)
          'secondaryObjCat': (secondaryObjCat as Enum$ResourceCategory?),
        if (isRefresh != _undefined) 'isRefresh': (isRefresh as bool?),
      }));
}

class _CopyWithStubImpl$Input$Options<TRes>
    implements CopyWith$Input$Options<TRes> {
  _CopyWithStubImpl$Input$Options(this._res);

  TRes _res;

  call({
    bool? isHardDelete,
    bool? ignoreLifeState,
    bool? upsert,
    bool? skipPagination,
    bool? isGlobal,
    Enum$EndExistingAssociations? endExistingAssociations,
    bool? exceptionOnConflict,
    Enum$ResourceCategory? primaryObjCat,
    Enum$ResourceCategory? secondaryObjCat,
    bool? isRefresh,
  }) =>
      _res;
}

class Input$PersonCredentialRequest {
  factory Input$PersonCredentialRequest({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? description,
    String? fileId,
    String? roleType,
  }) =>
      Input$PersonCredentialRequest._({
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (description != null) r'description': description,
        if (fileId != null) r'fileId': fileId,
        if (roleType != null) r'roleType': roleType,
      });

  Input$PersonCredentialRequest._(this._$data);

  factory Input$PersonCredentialRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = (l$emailAddress as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    if (data.containsKey('roleType')) {
      final l$roleType = data['roleType'];
      result$data['roleType'] = (l$roleType as String?);
    }
    return Input$PersonCredentialRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get emailAddress => (_$data['emailAddress'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get fileId => (_$data['fileId'] as String?);
  String? get roleType => (_$data['roleType'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    if (_$data.containsKey('roleType')) {
      final l$roleType = roleType;
      result$data['roleType'] = l$roleType;
    }
    return result$data;
  }

  CopyWith$Input$PersonCredentialRequest<Input$PersonCredentialRequest>
      get copyWith => CopyWith$Input$PersonCredentialRequest(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PersonCredentialRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$roleType = roleType;
    final lOther$roleType = other.roleType;
    if (_$data.containsKey('roleType') !=
        other._$data.containsKey('roleType')) {
      return false;
    }
    if (l$roleType != lOther$roleType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$description = description;
    final l$fileId = fileId;
    final l$roleType = roleType;
    return Object.hashAll([
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
      _$data.containsKey('roleType') ? l$roleType : const {},
    ]);
  }
}

abstract class CopyWith$Input$PersonCredentialRequest<TRes> {
  factory CopyWith$Input$PersonCredentialRequest(
    Input$PersonCredentialRequest instance,
    TRes Function(Input$PersonCredentialRequest) then,
  ) = _CopyWithImpl$Input$PersonCredentialRequest;

  factory CopyWith$Input$PersonCredentialRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PersonCredentialRequest;

  TRes call({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? description,
    String? fileId,
    String? roleType,
  });
}

class _CopyWithImpl$Input$PersonCredentialRequest<TRes>
    implements CopyWith$Input$PersonCredentialRequest<TRes> {
  _CopyWithImpl$Input$PersonCredentialRequest(
    this._instance,
    this._then,
  );

  final Input$PersonCredentialRequest _instance;

  final TRes Function(Input$PersonCredentialRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? description = _undefined,
    Object? fileId = _undefined,
    Object? roleType = _undefined,
  }) =>
      _then(Input$PersonCredentialRequest._({
        ..._instance._$data,
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (description != _undefined) 'description': (description as String?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
        if (roleType != _undefined) 'roleType': (roleType as String?),
      }));
}

class _CopyWithStubImpl$Input$PersonCredentialRequest<TRes>
    implements CopyWith$Input$PersonCredentialRequest<TRes> {
  _CopyWithStubImpl$Input$PersonCredentialRequest(this._res);

  TRes _res;

  call({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? description,
    String? fileId,
    String? roleType,
  }) =>
      _res;
}

class Input$PersonFilter {
  factory Input$PersonFilter({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$StringFilter? name,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$StringFilter? roleType,
  }) =>
      Input$PersonFilter._({
        if (id != null) r'id': id,
        if (account != null) r'account': account,
        if (name != null) r'name': name,
        if (lifeState != null) r'lifeState': lifeState,
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (roleType != null) r'roleType': roleType,
      });

  Input$PersonFilter._(this._$data);

  factory Input$PersonFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = l$emailAddress == null
          ? null
          : Input$StringFilter.fromJson(
              (l$emailAddress as Map<String, dynamic>));
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = l$phoneNumber == null
          ? null
          : Input$StringFilter.fromJson(
              (l$phoneNumber as Map<String, dynamic>));
    }
    if (data.containsKey('roleType')) {
      final l$roleType = data['roleType'];
      result$data['roleType'] = l$roleType == null
          ? null
          : Input$StringFilter.fromJson((l$roleType as Map<String, dynamic>));
    }
    return Input$PersonFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$StringFilter? get emailAddress =>
      (_$data['emailAddress'] as Input$StringFilter?);
  Input$StringFilter? get phoneNumber =>
      (_$data['phoneNumber'] as Input$StringFilter?);
  Input$StringFilter? get roleType =>
      (_$data['roleType'] as Input$StringFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress?.toJson();
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber?.toJson();
    }
    if (_$data.containsKey('roleType')) {
      final l$roleType = roleType;
      result$data['roleType'] = l$roleType?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PersonFilter<Input$PersonFilter> get copyWith =>
      CopyWith$Input$PersonFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PersonFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$roleType = roleType;
    final lOther$roleType = other.roleType;
    if (_$data.containsKey('roleType') !=
        other._$data.containsKey('roleType')) {
      return false;
    }
    if (l$roleType != lOther$roleType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$account = account;
    final l$name = name;
    final l$lifeState = lifeState;
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$roleType = roleType;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('roleType') ? l$roleType : const {},
    ]);
  }
}

abstract class CopyWith$Input$PersonFilter<TRes> {
  factory CopyWith$Input$PersonFilter(
    Input$PersonFilter instance,
    TRes Function(Input$PersonFilter) then,
  ) = _CopyWithImpl$Input$PersonFilter;

  factory CopyWith$Input$PersonFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PersonFilter;

  TRes call({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$StringFilter? name,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$StringFilter? roleType,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$StringFilter<TRes> get emailAddress;
  CopyWith$Input$StringFilter<TRes> get phoneNumber;
  CopyWith$Input$StringFilter<TRes> get roleType;
}

class _CopyWithImpl$Input$PersonFilter<TRes>
    implements CopyWith$Input$PersonFilter<TRes> {
  _CopyWithImpl$Input$PersonFilter(
    this._instance,
    this._then,
  );

  final Input$PersonFilter _instance;

  final TRes Function(Input$PersonFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? account = _undefined,
    Object? name = _undefined,
    Object? lifeState = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? roleType = _undefined,
  }) =>
      _then(Input$PersonFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as Input$StringFilter?),
        if (phoneNumber != _undefined)
          'phoneNumber': (phoneNumber as Input$StringFilter?),
        if (roleType != _undefined)
          'roleType': (roleType as Input$StringFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$StringFilter<TRes> get emailAddress {
    final local$emailAddress = _instance.emailAddress;
    return local$emailAddress == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$emailAddress, (e) => call(emailAddress: e));
  }

  CopyWith$Input$StringFilter<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return local$phoneNumber == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$phoneNumber, (e) => call(phoneNumber: e));
  }

  CopyWith$Input$StringFilter<TRes> get roleType {
    final local$roleType = _instance.roleType;
    return local$roleType == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$roleType, (e) => call(roleType: e));
  }
}

class _CopyWithStubImpl$Input$PersonFilter<TRes>
    implements CopyWith$Input$PersonFilter<TRes> {
  _CopyWithStubImpl$Input$PersonFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$AccountFilter? account,
    Input$StringFilter? name,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$StringFilter? roleType,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get emailAddress =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get phoneNumber =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get roleType =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$PersonRequest {
  factory Input$PersonRequest({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? type,
    String? description,
    String? fileId,
    String? roleType,
  }) =>
      Input$PersonRequest._({
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (type != null) r'type': type,
        if (description != null) r'description': description,
        if (fileId != null) r'fileId': fileId,
        if (roleType != null) r'roleType': roleType,
      });

  Input$PersonRequest._(this._$data);

  factory Input$PersonRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = (l$emailAddress as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    if (data.containsKey('roleType')) {
      final l$roleType = data['roleType'];
      result$data['roleType'] = (l$roleType as String?);
    }
    return Input$PersonRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get emailAddress => (_$data['emailAddress'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get type => (_$data['type'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get fileId => (_$data['fileId'] as String?);
  String? get roleType => (_$data['roleType'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    if (_$data.containsKey('roleType')) {
      final l$roleType = roleType;
      result$data['roleType'] = l$roleType;
    }
    return result$data;
  }

  CopyWith$Input$PersonRequest<Input$PersonRequest> get copyWith =>
      CopyWith$Input$PersonRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PersonRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$roleType = roleType;
    final lOther$roleType = other.roleType;
    if (_$data.containsKey('roleType') !=
        other._$data.containsKey('roleType')) {
      return false;
    }
    if (l$roleType != lOther$roleType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$type = type;
    final l$description = description;
    final l$fileId = fileId;
    final l$roleType = roleType;
    return Object.hashAll([
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
      _$data.containsKey('roleType') ? l$roleType : const {},
    ]);
  }
}

abstract class CopyWith$Input$PersonRequest<TRes> {
  factory CopyWith$Input$PersonRequest(
    Input$PersonRequest instance,
    TRes Function(Input$PersonRequest) then,
  ) = _CopyWithImpl$Input$PersonRequest;

  factory CopyWith$Input$PersonRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PersonRequest;

  TRes call({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? type,
    String? description,
    String? fileId,
    String? roleType,
  });
}

class _CopyWithImpl$Input$PersonRequest<TRes>
    implements CopyWith$Input$PersonRequest<TRes> {
  _CopyWithImpl$Input$PersonRequest(
    this._instance,
    this._then,
  );

  final Input$PersonRequest _instance;

  final TRes Function(Input$PersonRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? fileId = _undefined,
    Object? roleType = _undefined,
  }) =>
      _then(Input$PersonRequest._({
        ..._instance._$data,
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (type != _undefined) 'type': (type as String?),
        if (description != _undefined) 'description': (description as String?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
        if (roleType != _undefined) 'roleType': (roleType as String?),
      }));
}

class _CopyWithStubImpl$Input$PersonRequest<TRes>
    implements CopyWith$Input$PersonRequest<TRes> {
  _CopyWithStubImpl$Input$PersonRequest(this._res);

  TRes _res;

  call({
    String? emailAddress,
    String? phoneNumber,
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? firstName,
    String? lastName,
    String? type,
    String? description,
    String? fileId,
    String? roleType,
  }) =>
      _res;
}

class Input$PlaceBlocksFloorsRequest {
  factory Input$PlaceBlocksFloorsRequest({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
    String? image1,
    String? image2,
    String? image3,
    List<Input$BlockRequest?>? blocks,
  }) =>
      Input$PlaceBlocksFloorsRequest._({
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (type != null) r'type': type,
        if (address != null) r'address': address,
        if (fileId != null) r'fileId': fileId,
        if (image1 != null) r'image1': image1,
        if (image2 != null) r'image2': image2,
        if (image3 != null) r'image3': image3,
        if (blocks != null) r'blocks': blocks,
      });

  Input$PlaceBlocksFloorsRequest._(this._$data);

  factory Input$PlaceBlocksFloorsRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressRequest.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    if (data.containsKey('image1')) {
      final l$image1 = data['image1'];
      result$data['image1'] = (l$image1 as String?);
    }
    if (data.containsKey('image2')) {
      final l$image2 = data['image2'];
      result$data['image2'] = (l$image2 as String?);
    }
    if (data.containsKey('image3')) {
      final l$image3 = data['image3'];
      result$data['image3'] = (l$image3 as String?);
    }
    if (data.containsKey('blocks')) {
      final l$blocks = data['blocks'];
      result$data['blocks'] = (l$blocks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$BlockRequest.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$PlaceBlocksFloorsRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get type => (_$data['type'] as String?);
  Input$AddressRequest? get address =>
      (_$data['address'] as Input$AddressRequest?);
  String? get fileId => (_$data['fileId'] as String?);
  String? get image1 => (_$data['image1'] as String?);
  String? get image2 => (_$data['image2'] as String?);
  String? get image3 => (_$data['image3'] as String?);
  List<Input$BlockRequest?>? get blocks =>
      (_$data['blocks'] as List<Input$BlockRequest?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    if (_$data.containsKey('image1')) {
      final l$image1 = image1;
      result$data['image1'] = l$image1;
    }
    if (_$data.containsKey('image2')) {
      final l$image2 = image2;
      result$data['image2'] = l$image2;
    }
    if (_$data.containsKey('image3')) {
      final l$image3 = image3;
      result$data['image3'] = l$image3;
    }
    if (_$data.containsKey('blocks')) {
      final l$blocks = blocks;
      result$data['blocks'] = l$blocks?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$PlaceBlocksFloorsRequest<Input$PlaceBlocksFloorsRequest>
      get copyWith => CopyWith$Input$PlaceBlocksFloorsRequest(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlaceBlocksFloorsRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$image1 = image1;
    final lOther$image1 = other.image1;
    if (_$data.containsKey('image1') != other._$data.containsKey('image1')) {
      return false;
    }
    if (l$image1 != lOther$image1) {
      return false;
    }
    final l$image2 = image2;
    final lOther$image2 = other.image2;
    if (_$data.containsKey('image2') != other._$data.containsKey('image2')) {
      return false;
    }
    if (l$image2 != lOther$image2) {
      return false;
    }
    final l$image3 = image3;
    final lOther$image3 = other.image3;
    if (_$data.containsKey('image3') != other._$data.containsKey('image3')) {
      return false;
    }
    if (l$image3 != lOther$image3) {
      return false;
    }
    final l$blocks = blocks;
    final lOther$blocks = other.blocks;
    if (_$data.containsKey('blocks') != other._$data.containsKey('blocks')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$address = address;
    final l$fileId = fileId;
    final l$image1 = image1;
    final l$image2 = image2;
    final l$image3 = image3;
    final l$blocks = blocks;
    return Object.hashAll([
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
      _$data.containsKey('image1') ? l$image1 : const {},
      _$data.containsKey('image2') ? l$image2 : const {},
      _$data.containsKey('image3') ? l$image3 : const {},
      _$data.containsKey('blocks')
          ? l$blocks == null
              ? null
              : Object.hashAll(l$blocks.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlaceBlocksFloorsRequest<TRes> {
  factory CopyWith$Input$PlaceBlocksFloorsRequest(
    Input$PlaceBlocksFloorsRequest instance,
    TRes Function(Input$PlaceBlocksFloorsRequest) then,
  ) = _CopyWithImpl$Input$PlaceBlocksFloorsRequest;

  factory CopyWith$Input$PlaceBlocksFloorsRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PlaceBlocksFloorsRequest;

  TRes call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
    String? image1,
    String? image2,
    String? image3,
    List<Input$BlockRequest?>? blocks,
  });
  CopyWith$Input$AddressRequest<TRes> get address;
  TRes blocks(
      Iterable<Input$BlockRequest?>? Function(
              Iterable<CopyWith$Input$BlockRequest<Input$BlockRequest>?>?)
          _fn);
}

class _CopyWithImpl$Input$PlaceBlocksFloorsRequest<TRes>
    implements CopyWith$Input$PlaceBlocksFloorsRequest<TRes> {
  _CopyWithImpl$Input$PlaceBlocksFloorsRequest(
    this._instance,
    this._then,
  );

  final Input$PlaceBlocksFloorsRequest _instance;

  final TRes Function(Input$PlaceBlocksFloorsRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? address = _undefined,
    Object? fileId = _undefined,
    Object? image1 = _undefined,
    Object? image2 = _undefined,
    Object? image3 = _undefined,
    Object? blocks = _undefined,
  }) =>
      _then(Input$PlaceBlocksFloorsRequest._({
        ..._instance._$data,
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (type != _undefined) 'type': (type as String?),
        if (address != _undefined)
          'address': (address as Input$AddressRequest?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
        if (image1 != _undefined) 'image1': (image1 as String?),
        if (image2 != _undefined) 'image2': (image2 as String?),
        if (image3 != _undefined) 'image3': (image3 as String?),
        if (blocks != _undefined)
          'blocks': (blocks as List<Input$BlockRequest?>?),
      }));
  CopyWith$Input$AddressRequest<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressRequest.stub(_then(_instance))
        : CopyWith$Input$AddressRequest(local$address, (e) => call(address: e));
  }

  TRes blocks(
          Iterable<Input$BlockRequest?>? Function(
                  Iterable<CopyWith$Input$BlockRequest<Input$BlockRequest>?>?)
              _fn) =>
      call(
          blocks: _fn(_instance.blocks?.map((e) => e == null
              ? null
              : CopyWith$Input$BlockRequest(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$PlaceBlocksFloorsRequest<TRes>
    implements CopyWith$Input$PlaceBlocksFloorsRequest<TRes> {
  _CopyWithStubImpl$Input$PlaceBlocksFloorsRequest(this._res);

  TRes _res;

  call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
    String? image1,
    String? image2,
    String? image3,
    List<Input$BlockRequest?>? blocks,
  }) =>
      _res;
  CopyWith$Input$AddressRequest<TRes> get address =>
      CopyWith$Input$AddressRequest.stub(_res);
  blocks(_fn) => _res;
}

class Input$PlaceFilter {
  factory Input$PlaceFilter({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
  }) =>
      Input$PlaceFilter._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (account != null) r'account': account,
        if (lifeState != null) r'lifeState': lifeState,
        if (type != null) r'type': type,
      });

  Input$PlaceFilter._(this._$data);

  factory Input$PlaceFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringFilter.fromJson((l$type as Map<String, dynamic>));
    }
    return Input$PlaceFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$StringFilter? get type => (_$data['type'] as Input$StringFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlaceFilter<Input$PlaceFilter> get copyWith =>
      CopyWith$Input$PlaceFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlaceFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$account = account;
    final l$lifeState = lifeState;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlaceFilter<TRes> {
  factory CopyWith$Input$PlaceFilter(
    Input$PlaceFilter instance,
    TRes Function(Input$PlaceFilter) then,
  ) = _CopyWithImpl$Input$PlaceFilter;

  factory CopyWith$Input$PlaceFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PlaceFilter;

  TRes call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$StringFilter<TRes> get type;
}

class _CopyWithImpl$Input$PlaceFilter<TRes>
    implements CopyWith$Input$PlaceFilter<TRes> {
  _CopyWithImpl$Input$PlaceFilter(
    this._instance,
    this._then,
  );

  final Input$PlaceFilter _instance;

  final TRes Function(Input$PlaceFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? account = _undefined,
    Object? lifeState = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$PlaceFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (type != _undefined) 'type': (type as Input$StringFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$StringFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$PlaceFilter<TRes>
    implements CopyWith$Input$PlaceFilter<TRes> {
  _CopyWithStubImpl$Input$PlaceFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get type =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$PlacePartialRequest {
  factory Input$PlacePartialRequest({
    String? name,
    String? type,
    Input$AddressRequest? address,
  }) =>
      Input$PlacePartialRequest._({
        if (name != null) r'name': name,
        if (type != null) r'type': type,
        if (address != null) r'address': address,
      });

  Input$PlacePartialRequest._(this._$data);

  factory Input$PlacePartialRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressRequest.fromJson((l$address as Map<String, dynamic>));
    }
    return Input$PlacePartialRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get type => (_$data['type'] as String?);
  Input$AddressRequest? get address =>
      (_$data['address'] as Input$AddressRequest?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlacePartialRequest<Input$PlacePartialRequest> get copyWith =>
      CopyWith$Input$PlacePartialRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlacePartialRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$address = address;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('address') ? l$address : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlacePartialRequest<TRes> {
  factory CopyWith$Input$PlacePartialRequest(
    Input$PlacePartialRequest instance,
    TRes Function(Input$PlacePartialRequest) then,
  ) = _CopyWithImpl$Input$PlacePartialRequest;

  factory CopyWith$Input$PlacePartialRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PlacePartialRequest;

  TRes call({
    String? name,
    String? type,
    Input$AddressRequest? address,
  });
  CopyWith$Input$AddressRequest<TRes> get address;
}

class _CopyWithImpl$Input$PlacePartialRequest<TRes>
    implements CopyWith$Input$PlacePartialRequest<TRes> {
  _CopyWithImpl$Input$PlacePartialRequest(
    this._instance,
    this._then,
  );

  final Input$PlacePartialRequest _instance;

  final TRes Function(Input$PlacePartialRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? address = _undefined,
  }) =>
      _then(Input$PlacePartialRequest._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (type != _undefined) 'type': (type as String?),
        if (address != _undefined)
          'address': (address as Input$AddressRequest?),
      }));
  CopyWith$Input$AddressRequest<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressRequest.stub(_then(_instance))
        : CopyWith$Input$AddressRequest(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Input$PlacePartialRequest<TRes>
    implements CopyWith$Input$PlacePartialRequest<TRes> {
  _CopyWithStubImpl$Input$PlacePartialRequest(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    Input$AddressRequest? address,
  }) =>
      _res;
  CopyWith$Input$AddressRequest<TRes> get address =>
      CopyWith$Input$AddressRequest.stub(_res);
}

class Input$PlaceRequest {
  factory Input$PlaceRequest({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
  }) =>
      Input$PlaceRequest._({
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (type != null) r'type': type,
        if (address != null) r'address': address,
        if (fileId != null) r'fileId': fileId,
      });

  Input$PlaceRequest._(this._$data);

  factory Input$PlaceRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressRequest.fromJson((l$address as Map<String, dynamic>));
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    return Input$PlaceRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get type => (_$data['type'] as String?);
  Input$AddressRequest? get address =>
      (_$data['address'] as Input$AddressRequest?);
  String? get fileId => (_$data['fileId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    return result$data;
  }

  CopyWith$Input$PlaceRequest<Input$PlaceRequest> get copyWith =>
      CopyWith$Input$PlaceRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlaceRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$address = address;
    final l$fileId = fileId;
    return Object.hashAll([
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlaceRequest<TRes> {
  factory CopyWith$Input$PlaceRequest(
    Input$PlaceRequest instance,
    TRes Function(Input$PlaceRequest) then,
  ) = _CopyWithImpl$Input$PlaceRequest;

  factory CopyWith$Input$PlaceRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PlaceRequest;

  TRes call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
  });
  CopyWith$Input$AddressRequest<TRes> get address;
}

class _CopyWithImpl$Input$PlaceRequest<TRes>
    implements CopyWith$Input$PlaceRequest<TRes> {
  _CopyWithImpl$Input$PlaceRequest(
    this._instance,
    this._then,
  );

  final Input$PlaceRequest _instance;

  final TRes Function(Input$PlaceRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? address = _undefined,
    Object? fileId = _undefined,
  }) =>
      _then(Input$PlaceRequest._({
        ..._instance._$data,
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (type != _undefined) 'type': (type as String?),
        if (address != _undefined)
          'address': (address as Input$AddressRequest?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
      }));
  CopyWith$Input$AddressRequest<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressRequest.stub(_then(_instance))
        : CopyWith$Input$AddressRequest(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Input$PlaceRequest<TRes>
    implements CopyWith$Input$PlaceRequest<TRes> {
  _CopyWithStubImpl$Input$PlaceRequest(this._res);

  TRes _res;

  call({
    String? accountId,
    Enum$LifeState? lifeState,
    String? name,
    String? description,
    String? type,
    Input$AddressRequest? address,
    String? fileId,
  }) =>
      _res;
  CopyWith$Input$AddressRequest<TRes> get address =>
      CopyWith$Input$AddressRequest.stub(_res);
}

class Input$RefreshTokenRequest {
  factory Input$RefreshTokenRequest({String? refreshToken}) =>
      Input$RefreshTokenRequest._({
        if (refreshToken != null) r'refreshToken': refreshToken,
      });

  Input$RefreshTokenRequest._(this._$data);

  factory Input$RefreshTokenRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('refreshToken')) {
      final l$refreshToken = data['refreshToken'];
      result$data['refreshToken'] = (l$refreshToken as String?);
    }
    return Input$RefreshTokenRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get refreshToken => (_$data['refreshToken'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('refreshToken')) {
      final l$refreshToken = refreshToken;
      result$data['refreshToken'] = l$refreshToken;
    }
    return result$data;
  }

  CopyWith$Input$RefreshTokenRequest<Input$RefreshTokenRequest> get copyWith =>
      CopyWith$Input$RefreshTokenRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RefreshTokenRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (_$data.containsKey('refreshToken') !=
        other._$data.containsKey('refreshToken')) {
      return false;
    }
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    return Object.hashAll(
        [_$data.containsKey('refreshToken') ? l$refreshToken : const {}]);
  }
}

abstract class CopyWith$Input$RefreshTokenRequest<TRes> {
  factory CopyWith$Input$RefreshTokenRequest(
    Input$RefreshTokenRequest instance,
    TRes Function(Input$RefreshTokenRequest) then,
  ) = _CopyWithImpl$Input$RefreshTokenRequest;

  factory CopyWith$Input$RefreshTokenRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$RefreshTokenRequest;

  TRes call({String? refreshToken});
}

class _CopyWithImpl$Input$RefreshTokenRequest<TRes>
    implements CopyWith$Input$RefreshTokenRequest<TRes> {
  _CopyWithImpl$Input$RefreshTokenRequest(
    this._instance,
    this._then,
  );

  final Input$RefreshTokenRequest _instance;

  final TRes Function(Input$RefreshTokenRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refreshToken = _undefined}) =>
      _then(Input$RefreshTokenRequest._({
        ..._instance._$data,
        if (refreshToken != _undefined)
          'refreshToken': (refreshToken as String?),
      }));
}

class _CopyWithStubImpl$Input$RefreshTokenRequest<TRes>
    implements CopyWith$Input$RefreshTokenRequest<TRes> {
  _CopyWithStubImpl$Input$RefreshTokenRequest(this._res);

  TRes _res;

  call({String? refreshToken}) => _res;
}

class Input$RoleFilter {
  factory Input$RoleFilter({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
    Input$BooleanFilter? tenantLevelAccess,
  }) =>
      Input$RoleFilter._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (account != null) r'account': account,
        if (lifeState != null) r'lifeState': lifeState,
        if (type != null) r'type': type,
        if (tenantLevelAccess != null) r'tenantLevelAccess': tenantLevelAccess,
      });

  Input$RoleFilter._(this._$data);

  factory Input$RoleFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('account')) {
      final l$account = data['account'];
      result$data['account'] = l$account == null
          ? null
          : Input$AccountFilter.fromJson((l$account as Map<String, dynamic>));
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : Input$LifeStateFilter.fromJson(
              (l$lifeState as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringFilter.fromJson((l$type as Map<String, dynamic>));
    }
    if (data.containsKey('tenantLevelAccess')) {
      final l$tenantLevelAccess = data['tenantLevelAccess'];
      result$data['tenantLevelAccess'] = l$tenantLevelAccess == null
          ? null
          : Input$BooleanFilter.fromJson(
              (l$tenantLevelAccess as Map<String, dynamic>));
    }
    return Input$RoleFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);
  Input$AccountFilter? get account =>
      (_$data['account'] as Input$AccountFilter?);
  Input$LifeStateFilter? get lifeState =>
      (_$data['lifeState'] as Input$LifeStateFilter?);
  Input$StringFilter? get type => (_$data['type'] as Input$StringFilter?);
  Input$BooleanFilter? get tenantLevelAccess =>
      (_$data['tenantLevelAccess'] as Input$BooleanFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('account')) {
      final l$account = account;
      result$data['account'] = l$account?.toJson();
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] = l$lifeState?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('tenantLevelAccess')) {
      final l$tenantLevelAccess = tenantLevelAccess;
      result$data['tenantLevelAccess'] = l$tenantLevelAccess?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RoleFilter<Input$RoleFilter> get copyWith =>
      CopyWith$Input$RoleFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RoleFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (_$data.containsKey('account') != other._$data.containsKey('account')) {
      return false;
    }
    if (l$account != lOther$account) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$tenantLevelAccess = tenantLevelAccess;
    final lOther$tenantLevelAccess = other.tenantLevelAccess;
    if (_$data.containsKey('tenantLevelAccess') !=
        other._$data.containsKey('tenantLevelAccess')) {
      return false;
    }
    if (l$tenantLevelAccess != lOther$tenantLevelAccess) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$account = account;
    final l$lifeState = lifeState;
    final l$type = type;
    final l$tenantLevelAccess = tenantLevelAccess;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('account') ? l$account : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('tenantLevelAccess') ? l$tenantLevelAccess : const {},
    ]);
  }
}

abstract class CopyWith$Input$RoleFilter<TRes> {
  factory CopyWith$Input$RoleFilter(
    Input$RoleFilter instance,
    TRes Function(Input$RoleFilter) then,
  ) = _CopyWithImpl$Input$RoleFilter;

  factory CopyWith$Input$RoleFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$RoleFilter;

  TRes call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
    Input$BooleanFilter? tenantLevelAccess,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$AccountFilter<TRes> get account;
  CopyWith$Input$LifeStateFilter<TRes> get lifeState;
  CopyWith$Input$StringFilter<TRes> get type;
  CopyWith$Input$BooleanFilter<TRes> get tenantLevelAccess;
}

class _CopyWithImpl$Input$RoleFilter<TRes>
    implements CopyWith$Input$RoleFilter<TRes> {
  _CopyWithImpl$Input$RoleFilter(
    this._instance,
    this._then,
  );

  final Input$RoleFilter _instance;

  final TRes Function(Input$RoleFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? account = _undefined,
    Object? lifeState = _undefined,
    Object? type = _undefined,
    Object? tenantLevelAccess = _undefined,
  }) =>
      _then(Input$RoleFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (account != _undefined) 'account': (account as Input$AccountFilter?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Input$LifeStateFilter?),
        if (type != _undefined) 'type': (type as Input$StringFilter?),
        if (tenantLevelAccess != _undefined)
          'tenantLevelAccess': (tenantLevelAccess as Input$BooleanFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$AccountFilter<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Input$AccountFilter.stub(_then(_instance))
        : CopyWith$Input$AccountFilter(local$account, (e) => call(account: e));
  }

  CopyWith$Input$LifeStateFilter<TRes> get lifeState {
    final local$lifeState = _instance.lifeState;
    return local$lifeState == null
        ? CopyWith$Input$LifeStateFilter.stub(_then(_instance))
        : CopyWith$Input$LifeStateFilter(
            local$lifeState, (e) => call(lifeState: e));
  }

  CopyWith$Input$StringFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$type, (e) => call(type: e));
  }

  CopyWith$Input$BooleanFilter<TRes> get tenantLevelAccess {
    final local$tenantLevelAccess = _instance.tenantLevelAccess;
    return local$tenantLevelAccess == null
        ? CopyWith$Input$BooleanFilter.stub(_then(_instance))
        : CopyWith$Input$BooleanFilter(
            local$tenantLevelAccess, (e) => call(tenantLevelAccess: e));
  }
}

class _CopyWithStubImpl$Input$RoleFilter<TRes>
    implements CopyWith$Input$RoleFilter<TRes> {
  _CopyWithStubImpl$Input$RoleFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$StringFilter? name,
    Input$AccountFilter? account,
    Input$LifeStateFilter? lifeState,
    Input$StringFilter? type,
    Input$BooleanFilter? tenantLevelAccess,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$AccountFilter<TRes> get account =>
      CopyWith$Input$AccountFilter.stub(_res);
  CopyWith$Input$LifeStateFilter<TRes> get lifeState =>
      CopyWith$Input$LifeStateFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get type =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$BooleanFilter<TRes> get tenantLevelAccess =>
      CopyWith$Input$BooleanFilter.stub(_res);
}

class Input$RoleRequest {
  factory Input$RoleRequest({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    String? type,
    bool? tenantLevelAccess,
    String? fileId,
  }) =>
      Input$RoleRequest._({
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (accountId != null) r'accountId': accountId,
        if (lifeState != null) r'lifeState': lifeState,
        if (type != null) r'type': type,
        if (tenantLevelAccess != null) r'tenantLevelAccess': tenantLevelAccess,
        if (fileId != null) r'fileId': fileId,
      });

  Input$RoleRequest._(this._$data);

  factory Input$RoleRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('lifeState')) {
      final l$lifeState = data['lifeState'];
      result$data['lifeState'] = l$lifeState == null
          ? null
          : fromJson$Enum$LifeState((l$lifeState as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('tenantLevelAccess')) {
      final l$tenantLevelAccess = data['tenantLevelAccess'];
      result$data['tenantLevelAccess'] = (l$tenantLevelAccess as bool?);
    }
    if (data.containsKey('fileId')) {
      final l$fileId = data['fileId'];
      result$data['fileId'] = (l$fileId as String?);
    }
    return Input$RoleRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get accountId => (_$data['accountId'] as String?);
  Enum$LifeState? get lifeState => (_$data['lifeState'] as Enum$LifeState?);
  String? get type => (_$data['type'] as String?);
  bool? get tenantLevelAccess => (_$data['tenantLevelAccess'] as bool?);
  String? get fileId => (_$data['fileId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('lifeState')) {
      final l$lifeState = lifeState;
      result$data['lifeState'] =
          l$lifeState == null ? null : toJson$Enum$LifeState(l$lifeState);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('tenantLevelAccess')) {
      final l$tenantLevelAccess = tenantLevelAccess;
      result$data['tenantLevelAccess'] = l$tenantLevelAccess;
    }
    if (_$data.containsKey('fileId')) {
      final l$fileId = fileId;
      result$data['fileId'] = l$fileId;
    }
    return result$data;
  }

  CopyWith$Input$RoleRequest<Input$RoleRequest> get copyWith =>
      CopyWith$Input$RoleRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RoleRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$lifeState = lifeState;
    final lOther$lifeState = other.lifeState;
    if (_$data.containsKey('lifeState') !=
        other._$data.containsKey('lifeState')) {
      return false;
    }
    if (l$lifeState != lOther$lifeState) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$tenantLevelAccess = tenantLevelAccess;
    final lOther$tenantLevelAccess = other.tenantLevelAccess;
    if (_$data.containsKey('tenantLevelAccess') !=
        other._$data.containsKey('tenantLevelAccess')) {
      return false;
    }
    if (l$tenantLevelAccess != lOther$tenantLevelAccess) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (_$data.containsKey('fileId') != other._$data.containsKey('fileId')) {
      return false;
    }
    if (l$fileId != lOther$fileId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$accountId = accountId;
    final l$lifeState = lifeState;
    final l$type = type;
    final l$tenantLevelAccess = tenantLevelAccess;
    final l$fileId = fileId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('lifeState') ? l$lifeState : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('tenantLevelAccess') ? l$tenantLevelAccess : const {},
      _$data.containsKey('fileId') ? l$fileId : const {},
    ]);
  }
}

abstract class CopyWith$Input$RoleRequest<TRes> {
  factory CopyWith$Input$RoleRequest(
    Input$RoleRequest instance,
    TRes Function(Input$RoleRequest) then,
  ) = _CopyWithImpl$Input$RoleRequest;

  factory CopyWith$Input$RoleRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$RoleRequest;

  TRes call({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    String? type,
    bool? tenantLevelAccess,
    String? fileId,
  });
}

class _CopyWithImpl$Input$RoleRequest<TRes>
    implements CopyWith$Input$RoleRequest<TRes> {
  _CopyWithImpl$Input$RoleRequest(
    this._instance,
    this._then,
  );

  final Input$RoleRequest _instance;

  final TRes Function(Input$RoleRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? accountId = _undefined,
    Object? lifeState = _undefined,
    Object? type = _undefined,
    Object? tenantLevelAccess = _undefined,
    Object? fileId = _undefined,
  }) =>
      _then(Input$RoleRequest._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (lifeState != _undefined)
          'lifeState': (lifeState as Enum$LifeState?),
        if (type != _undefined) 'type': (type as String?),
        if (tenantLevelAccess != _undefined)
          'tenantLevelAccess': (tenantLevelAccess as bool?),
        if (fileId != _undefined) 'fileId': (fileId as String?),
      }));
}

class _CopyWithStubImpl$Input$RoleRequest<TRes>
    implements CopyWith$Input$RoleRequest<TRes> {
  _CopyWithStubImpl$Input$RoleRequest(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    String? accountId,
    Enum$LifeState? lifeState,
    String? type,
    bool? tenantLevelAccess,
    String? fileId,
  }) =>
      _res;
}

class Input$StringFilter {
  factory Input$StringFilter({
    required List<String> value,
    Enum$SearchType? searchType,
    bool? ignoreCase,
  }) =>
      Input$StringFilter._({
        r'value': value,
        if (searchType != null) r'searchType': searchType,
        if (ignoreCase != null) r'ignoreCase': ignoreCase,
      });

  Input$StringFilter._(this._$data);

  factory Input$StringFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$value = data['value'];
    result$data['value'] =
        (l$value as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('searchType')) {
      final l$searchType = data['searchType'];
      result$data['searchType'] = l$searchType == null
          ? null
          : fromJson$Enum$SearchType((l$searchType as String));
    }
    if (data.containsKey('ignoreCase')) {
      final l$ignoreCase = data['ignoreCase'];
      result$data['ignoreCase'] = (l$ignoreCase as bool?);
    }
    return Input$StringFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get value => (_$data['value'] as List<String>);
  Enum$SearchType? get searchType => (_$data['searchType'] as Enum$SearchType?);
  bool? get ignoreCase => (_$data['ignoreCase'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$value = value;
    result$data['value'] = l$value.map((e) => e).toList();
    if (_$data.containsKey('searchType')) {
      final l$searchType = searchType;
      result$data['searchType'] =
          l$searchType == null ? null : toJson$Enum$SearchType(l$searchType);
    }
    if (_$data.containsKey('ignoreCase')) {
      final l$ignoreCase = ignoreCase;
      result$data['ignoreCase'] = l$ignoreCase;
    }
    return result$data;
  }

  CopyWith$Input$StringFilter<Input$StringFilter> get copyWith =>
      CopyWith$Input$StringFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    final l$searchType = searchType;
    final lOther$searchType = other.searchType;
    if (_$data.containsKey('searchType') !=
        other._$data.containsKey('searchType')) {
      return false;
    }
    if (l$searchType != lOther$searchType) {
      return false;
    }
    final l$ignoreCase = ignoreCase;
    final lOther$ignoreCase = other.ignoreCase;
    if (_$data.containsKey('ignoreCase') !=
        other._$data.containsKey('ignoreCase')) {
      return false;
    }
    if (l$ignoreCase != lOther$ignoreCase) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$searchType = searchType;
    final l$ignoreCase = ignoreCase;
    return Object.hashAll([
      Object.hashAll(l$value.map((v) => v)),
      _$data.containsKey('searchType') ? l$searchType : const {},
      _$data.containsKey('ignoreCase') ? l$ignoreCase : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringFilter<TRes> {
  factory CopyWith$Input$StringFilter(
    Input$StringFilter instance,
    TRes Function(Input$StringFilter) then,
  ) = _CopyWithImpl$Input$StringFilter;

  factory CopyWith$Input$StringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFilter;

  TRes call({
    List<String>? value,
    Enum$SearchType? searchType,
    bool? ignoreCase,
  });
}

class _CopyWithImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithImpl$Input$StringFilter(
    this._instance,
    this._then,
  );

  final Input$StringFilter _instance;

  final TRes Function(Input$StringFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? searchType = _undefined,
    Object? ignoreCase = _undefined,
  }) =>
      _then(Input$StringFilter._({
        ..._instance._$data,
        if (value != _undefined && value != null)
          'value': (value as List<String>),
        if (searchType != _undefined)
          'searchType': (searchType as Enum$SearchType?),
        if (ignoreCase != _undefined) 'ignoreCase': (ignoreCase as bool?),
      }));
}

class _CopyWithStubImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithStubImpl$Input$StringFilter(this._res);

  TRes _res;

  call({
    List<String>? value,
    Enum$SearchType? searchType,
    bool? ignoreCase,
  }) =>
      _res;
}

class Input$TokenRequest {
  factory Input$TokenRequest({
    required Enum$GrantType grantType,
    String? clientId,
    String? clientSecret,
    String? code,
    String? appName,
    String? oAuthProviderName,
    String? accountId,
    Input$AdditionalTokenInfoRequest? additionalTokenInfo,
  }) =>
      Input$TokenRequest._({
        r'grantType': grantType,
        if (clientId != null) r'clientId': clientId,
        if (clientSecret != null) r'clientSecret': clientSecret,
        if (code != null) r'code': code,
        if (appName != null) r'appName': appName,
        if (oAuthProviderName != null) r'oAuthProviderName': oAuthProviderName,
        if (accountId != null) r'accountId': accountId,
        if (additionalTokenInfo != null)
          r'additionalTokenInfo': additionalTokenInfo,
      });

  Input$TokenRequest._(this._$data);

  factory Input$TokenRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$grantType = data['grantType'];
    result$data['grantType'] = fromJson$Enum$GrantType((l$grantType as String));
    if (data.containsKey('clientId')) {
      final l$clientId = data['clientId'];
      result$data['clientId'] = (l$clientId as String?);
    }
    if (data.containsKey('clientSecret')) {
      final l$clientSecret = data['clientSecret'];
      result$data['clientSecret'] = (l$clientSecret as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('appName')) {
      final l$appName = data['appName'];
      result$data['appName'] = (l$appName as String?);
    }
    if (data.containsKey('oAuthProviderName')) {
      final l$oAuthProviderName = data['oAuthProviderName'];
      result$data['oAuthProviderName'] = (l$oAuthProviderName as String?);
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = (l$accountId as String?);
    }
    if (data.containsKey('additionalTokenInfo')) {
      final l$additionalTokenInfo = data['additionalTokenInfo'];
      result$data['additionalTokenInfo'] = l$additionalTokenInfo == null
          ? null
          : Input$AdditionalTokenInfoRequest.fromJson(
              (l$additionalTokenInfo as Map<String, dynamic>));
    }
    return Input$TokenRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$GrantType get grantType => (_$data['grantType'] as Enum$GrantType);
  String? get clientId => (_$data['clientId'] as String?);
  String? get clientSecret => (_$data['clientSecret'] as String?);
  String? get code => (_$data['code'] as String?);
  String? get appName => (_$data['appName'] as String?);
  String? get oAuthProviderName => (_$data['oAuthProviderName'] as String?);
  String? get accountId => (_$data['accountId'] as String?);
  Input$AdditionalTokenInfoRequest? get additionalTokenInfo =>
      (_$data['additionalTokenInfo'] as Input$AdditionalTokenInfoRequest?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$grantType = grantType;
    result$data['grantType'] = toJson$Enum$GrantType(l$grantType);
    if (_$data.containsKey('clientId')) {
      final l$clientId = clientId;
      result$data['clientId'] = l$clientId;
    }
    if (_$data.containsKey('clientSecret')) {
      final l$clientSecret = clientSecret;
      result$data['clientSecret'] = l$clientSecret;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('appName')) {
      final l$appName = appName;
      result$data['appName'] = l$appName;
    }
    if (_$data.containsKey('oAuthProviderName')) {
      final l$oAuthProviderName = oAuthProviderName;
      result$data['oAuthProviderName'] = l$oAuthProviderName;
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId;
    }
    if (_$data.containsKey('additionalTokenInfo')) {
      final l$additionalTokenInfo = additionalTokenInfo;
      result$data['additionalTokenInfo'] = l$additionalTokenInfo?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TokenRequest<Input$TokenRequest> get copyWith =>
      CopyWith$Input$TokenRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TokenRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$grantType = grantType;
    final lOther$grantType = other.grantType;
    if (l$grantType != lOther$grantType) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (_$data.containsKey('clientId') !=
        other._$data.containsKey('clientId')) {
      return false;
    }
    if (l$clientId != lOther$clientId) {
      return false;
    }
    final l$clientSecret = clientSecret;
    final lOther$clientSecret = other.clientSecret;
    if (_$data.containsKey('clientSecret') !=
        other._$data.containsKey('clientSecret')) {
      return false;
    }
    if (l$clientSecret != lOther$clientSecret) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$appName = appName;
    final lOther$appName = other.appName;
    if (_$data.containsKey('appName') != other._$data.containsKey('appName')) {
      return false;
    }
    if (l$appName != lOther$appName) {
      return false;
    }
    final l$oAuthProviderName = oAuthProviderName;
    final lOther$oAuthProviderName = other.oAuthProviderName;
    if (_$data.containsKey('oAuthProviderName') !=
        other._$data.containsKey('oAuthProviderName')) {
      return false;
    }
    if (l$oAuthProviderName != lOther$oAuthProviderName) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$additionalTokenInfo = additionalTokenInfo;
    final lOther$additionalTokenInfo = other.additionalTokenInfo;
    if (_$data.containsKey('additionalTokenInfo') !=
        other._$data.containsKey('additionalTokenInfo')) {
      return false;
    }
    if (l$additionalTokenInfo != lOther$additionalTokenInfo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$grantType = grantType;
    final l$clientId = clientId;
    final l$clientSecret = clientSecret;
    final l$code = code;
    final l$appName = appName;
    final l$oAuthProviderName = oAuthProviderName;
    final l$accountId = accountId;
    final l$additionalTokenInfo = additionalTokenInfo;
    return Object.hashAll([
      l$grantType,
      _$data.containsKey('clientId') ? l$clientId : const {},
      _$data.containsKey('clientSecret') ? l$clientSecret : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('appName') ? l$appName : const {},
      _$data.containsKey('oAuthProviderName') ? l$oAuthProviderName : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('additionalTokenInfo')
          ? l$additionalTokenInfo
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TokenRequest<TRes> {
  factory CopyWith$Input$TokenRequest(
    Input$TokenRequest instance,
    TRes Function(Input$TokenRequest) then,
  ) = _CopyWithImpl$Input$TokenRequest;

  factory CopyWith$Input$TokenRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$TokenRequest;

  TRes call({
    Enum$GrantType? grantType,
    String? clientId,
    String? clientSecret,
    String? code,
    String? appName,
    String? oAuthProviderName,
    String? accountId,
    Input$AdditionalTokenInfoRequest? additionalTokenInfo,
  });
  CopyWith$Input$AdditionalTokenInfoRequest<TRes> get additionalTokenInfo;
}

class _CopyWithImpl$Input$TokenRequest<TRes>
    implements CopyWith$Input$TokenRequest<TRes> {
  _CopyWithImpl$Input$TokenRequest(
    this._instance,
    this._then,
  );

  final Input$TokenRequest _instance;

  final TRes Function(Input$TokenRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grantType = _undefined,
    Object? clientId = _undefined,
    Object? clientSecret = _undefined,
    Object? code = _undefined,
    Object? appName = _undefined,
    Object? oAuthProviderName = _undefined,
    Object? accountId = _undefined,
    Object? additionalTokenInfo = _undefined,
  }) =>
      _then(Input$TokenRequest._({
        ..._instance._$data,
        if (grantType != _undefined && grantType != null)
          'grantType': (grantType as Enum$GrantType),
        if (clientId != _undefined) 'clientId': (clientId as String?),
        if (clientSecret != _undefined)
          'clientSecret': (clientSecret as String?),
        if (code != _undefined) 'code': (code as String?),
        if (appName != _undefined) 'appName': (appName as String?),
        if (oAuthProviderName != _undefined)
          'oAuthProviderName': (oAuthProviderName as String?),
        if (accountId != _undefined) 'accountId': (accountId as String?),
        if (additionalTokenInfo != _undefined)
          'additionalTokenInfo':
              (additionalTokenInfo as Input$AdditionalTokenInfoRequest?),
      }));
  CopyWith$Input$AdditionalTokenInfoRequest<TRes> get additionalTokenInfo {
    final local$additionalTokenInfo = _instance.additionalTokenInfo;
    return local$additionalTokenInfo == null
        ? CopyWith$Input$AdditionalTokenInfoRequest.stub(_then(_instance))
        : CopyWith$Input$AdditionalTokenInfoRequest(
            local$additionalTokenInfo, (e) => call(additionalTokenInfo: e));
  }
}

class _CopyWithStubImpl$Input$TokenRequest<TRes>
    implements CopyWith$Input$TokenRequest<TRes> {
  _CopyWithStubImpl$Input$TokenRequest(this._res);

  TRes _res;

  call({
    Enum$GrantType? grantType,
    String? clientId,
    String? clientSecret,
    String? code,
    String? appName,
    String? oAuthProviderName,
    String? accountId,
    Input$AdditionalTokenInfoRequest? additionalTokenInfo,
  }) =>
      _res;
  CopyWith$Input$AdditionalTokenInfoRequest<TRes> get additionalTokenInfo =>
      CopyWith$Input$AdditionalTokenInfoRequest.stub(_res);
}

class Input$VisitorFilter {
  factory Input$VisitorFilter({
    Input$IDFilter? id,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$DateRangeFilter? visitingDate,
    Input$StringFilter? type,
    Input$StringFilter? fullText,
    Input$IDFilter? placeId,
    Input$IDFilter? accountId,
    Input$IDFilter? accountFloorAssociationId,
    Input$BooleanFilter? plannedVisit,
  }) =>
      Input$VisitorFilter._({
        if (id != null) r'id': id,
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (visitingDate != null) r'visitingDate': visitingDate,
        if (type != null) r'type': type,
        if (fullText != null) r'fullText': fullText,
        if (placeId != null) r'placeId': placeId,
        if (accountId != null) r'accountId': accountId,
        if (accountFloorAssociationId != null)
          r'accountFloorAssociationId': accountFloorAssociationId,
        if (plannedVisit != null) r'plannedVisit': plannedVisit,
      });

  Input$VisitorFilter._(this._$data);

  factory Input$VisitorFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = l$emailAddress == null
          ? null
          : Input$StringFilter.fromJson(
              (l$emailAddress as Map<String, dynamic>));
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = l$phoneNumber == null
          ? null
          : Input$StringFilter.fromJson(
              (l$phoneNumber as Map<String, dynamic>));
    }
    if (data.containsKey('visitingDate')) {
      final l$visitingDate = data['visitingDate'];
      result$data['visitingDate'] = l$visitingDate == null
          ? null
          : Input$DateRangeFilter.fromJson(
              (l$visitingDate as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringFilter.fromJson((l$type as Map<String, dynamic>));
    }
    if (data.containsKey('fullText')) {
      final l$fullText = data['fullText'];
      result$data['fullText'] = l$fullText == null
          ? null
          : Input$StringFilter.fromJson((l$fullText as Map<String, dynamic>));
    }
    if (data.containsKey('placeId')) {
      final l$placeId = data['placeId'];
      result$data['placeId'] = l$placeId == null
          ? null
          : Input$IDFilter.fromJson((l$placeId as Map<String, dynamic>));
    }
    if (data.containsKey('accountId')) {
      final l$accountId = data['accountId'];
      result$data['accountId'] = l$accountId == null
          ? null
          : Input$IDFilter.fromJson((l$accountId as Map<String, dynamic>));
    }
    if (data.containsKey('accountFloorAssociationId')) {
      final l$accountFloorAssociationId = data['accountFloorAssociationId'];
      result$data['accountFloorAssociationId'] =
          l$accountFloorAssociationId == null
              ? null
              : Input$IDFilter.fromJson(
                  (l$accountFloorAssociationId as Map<String, dynamic>));
    }
    if (data.containsKey('plannedVisit')) {
      final l$plannedVisit = data['plannedVisit'];
      result$data['plannedVisit'] = l$plannedVisit == null
          ? null
          : Input$BooleanFilter.fromJson(
              (l$plannedVisit as Map<String, dynamic>));
    }
    return Input$VisitorFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$IDFilter? get id => (_$data['id'] as Input$IDFilter?);
  Input$StringFilter? get emailAddress =>
      (_$data['emailAddress'] as Input$StringFilter?);
  Input$StringFilter? get phoneNumber =>
      (_$data['phoneNumber'] as Input$StringFilter?);
  Input$DateRangeFilter? get visitingDate =>
      (_$data['visitingDate'] as Input$DateRangeFilter?);
  Input$StringFilter? get type => (_$data['type'] as Input$StringFilter?);
  Input$StringFilter? get fullText =>
      (_$data['fullText'] as Input$StringFilter?);
  Input$IDFilter? get placeId => (_$data['placeId'] as Input$IDFilter?);
  Input$IDFilter? get accountId => (_$data['accountId'] as Input$IDFilter?);
  Input$IDFilter? get accountFloorAssociationId =>
      (_$data['accountFloorAssociationId'] as Input$IDFilter?);
  Input$BooleanFilter? get plannedVisit =>
      (_$data['plannedVisit'] as Input$BooleanFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress?.toJson();
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber?.toJson();
    }
    if (_$data.containsKey('visitingDate')) {
      final l$visitingDate = visitingDate;
      result$data['visitingDate'] = l$visitingDate?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('fullText')) {
      final l$fullText = fullText;
      result$data['fullText'] = l$fullText?.toJson();
    }
    if (_$data.containsKey('placeId')) {
      final l$placeId = placeId;
      result$data['placeId'] = l$placeId?.toJson();
    }
    if (_$data.containsKey('accountId')) {
      final l$accountId = accountId;
      result$data['accountId'] = l$accountId?.toJson();
    }
    if (_$data.containsKey('accountFloorAssociationId')) {
      final l$accountFloorAssociationId = accountFloorAssociationId;
      result$data['accountFloorAssociationId'] =
          l$accountFloorAssociationId?.toJson();
    }
    if (_$data.containsKey('plannedVisit')) {
      final l$plannedVisit = plannedVisit;
      result$data['plannedVisit'] = l$plannedVisit?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VisitorFilter<Input$VisitorFilter> get copyWith =>
      CopyWith$Input$VisitorFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VisitorFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$visitingDate = visitingDate;
    final lOther$visitingDate = other.visitingDate;
    if (_$data.containsKey('visitingDate') !=
        other._$data.containsKey('visitingDate')) {
      return false;
    }
    if (l$visitingDate != lOther$visitingDate) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$fullText = fullText;
    final lOther$fullText = other.fullText;
    if (_$data.containsKey('fullText') !=
        other._$data.containsKey('fullText')) {
      return false;
    }
    if (l$fullText != lOther$fullText) {
      return false;
    }
    final l$placeId = placeId;
    final lOther$placeId = other.placeId;
    if (_$data.containsKey('placeId') != other._$data.containsKey('placeId')) {
      return false;
    }
    if (l$placeId != lOther$placeId) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (_$data.containsKey('accountId') !=
        other._$data.containsKey('accountId')) {
      return false;
    }
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$accountFloorAssociationId = accountFloorAssociationId;
    final lOther$accountFloorAssociationId = other.accountFloorAssociationId;
    if (_$data.containsKey('accountFloorAssociationId') !=
        other._$data.containsKey('accountFloorAssociationId')) {
      return false;
    }
    if (l$accountFloorAssociationId != lOther$accountFloorAssociationId) {
      return false;
    }
    final l$plannedVisit = plannedVisit;
    final lOther$plannedVisit = other.plannedVisit;
    if (_$data.containsKey('plannedVisit') !=
        other._$data.containsKey('plannedVisit')) {
      return false;
    }
    if (l$plannedVisit != lOther$plannedVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$visitingDate = visitingDate;
    final l$type = type;
    final l$fullText = fullText;
    final l$placeId = placeId;
    final l$accountId = accountId;
    final l$accountFloorAssociationId = accountFloorAssociationId;
    final l$plannedVisit = plannedVisit;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('visitingDate') ? l$visitingDate : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('fullText') ? l$fullText : const {},
      _$data.containsKey('placeId') ? l$placeId : const {},
      _$data.containsKey('accountId') ? l$accountId : const {},
      _$data.containsKey('accountFloorAssociationId')
          ? l$accountFloorAssociationId
          : const {},
      _$data.containsKey('plannedVisit') ? l$plannedVisit : const {},
    ]);
  }
}

abstract class CopyWith$Input$VisitorFilter<TRes> {
  factory CopyWith$Input$VisitorFilter(
    Input$VisitorFilter instance,
    TRes Function(Input$VisitorFilter) then,
  ) = _CopyWithImpl$Input$VisitorFilter;

  factory CopyWith$Input$VisitorFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$VisitorFilter;

  TRes call({
    Input$IDFilter? id,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$DateRangeFilter? visitingDate,
    Input$StringFilter? type,
    Input$StringFilter? fullText,
    Input$IDFilter? placeId,
    Input$IDFilter? accountId,
    Input$IDFilter? accountFloorAssociationId,
    Input$BooleanFilter? plannedVisit,
  });
  CopyWith$Input$IDFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get emailAddress;
  CopyWith$Input$StringFilter<TRes> get phoneNumber;
  CopyWith$Input$DateRangeFilter<TRes> get visitingDate;
  CopyWith$Input$StringFilter<TRes> get type;
  CopyWith$Input$StringFilter<TRes> get fullText;
  CopyWith$Input$IDFilter<TRes> get placeId;
  CopyWith$Input$IDFilter<TRes> get accountId;
  CopyWith$Input$IDFilter<TRes> get accountFloorAssociationId;
  CopyWith$Input$BooleanFilter<TRes> get plannedVisit;
}

class _CopyWithImpl$Input$VisitorFilter<TRes>
    implements CopyWith$Input$VisitorFilter<TRes> {
  _CopyWithImpl$Input$VisitorFilter(
    this._instance,
    this._then,
  );

  final Input$VisitorFilter _instance;

  final TRes Function(Input$VisitorFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? visitingDate = _undefined,
    Object? type = _undefined,
    Object? fullText = _undefined,
    Object? placeId = _undefined,
    Object? accountId = _undefined,
    Object? accountFloorAssociationId = _undefined,
    Object? plannedVisit = _undefined,
  }) =>
      _then(Input$VisitorFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$IDFilter?),
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as Input$StringFilter?),
        if (phoneNumber != _undefined)
          'phoneNumber': (phoneNumber as Input$StringFilter?),
        if (visitingDate != _undefined)
          'visitingDate': (visitingDate as Input$DateRangeFilter?),
        if (type != _undefined) 'type': (type as Input$StringFilter?),
        if (fullText != _undefined)
          'fullText': (fullText as Input$StringFilter?),
        if (placeId != _undefined) 'placeId': (placeId as Input$IDFilter?),
        if (accountId != _undefined)
          'accountId': (accountId as Input$IDFilter?),
        if (accountFloorAssociationId != _undefined)
          'accountFloorAssociationId':
              (accountFloorAssociationId as Input$IDFilter?),
        if (plannedVisit != _undefined)
          'plannedVisit': (plannedVisit as Input$BooleanFilter?),
      }));
  CopyWith$Input$IDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get emailAddress {
    final local$emailAddress = _instance.emailAddress;
    return local$emailAddress == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$emailAddress, (e) => call(emailAddress: e));
  }

  CopyWith$Input$StringFilter<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return local$phoneNumber == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(
            local$phoneNumber, (e) => call(phoneNumber: e));
  }

  CopyWith$Input$DateRangeFilter<TRes> get visitingDate {
    final local$visitingDate = _instance.visitingDate;
    return local$visitingDate == null
        ? CopyWith$Input$DateRangeFilter.stub(_then(_instance))
        : CopyWith$Input$DateRangeFilter(
            local$visitingDate, (e) => call(visitingDate: e));
  }

  CopyWith$Input$StringFilter<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$type, (e) => call(type: e));
  }

  CopyWith$Input$StringFilter<TRes> get fullText {
    final local$fullText = _instance.fullText;
    return local$fullText == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$fullText, (e) => call(fullText: e));
  }

  CopyWith$Input$IDFilter<TRes> get placeId {
    final local$placeId = _instance.placeId;
    return local$placeId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$placeId, (e) => call(placeId: e));
  }

  CopyWith$Input$IDFilter<TRes> get accountId {
    final local$accountId = _instance.accountId;
    return local$accountId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$accountId, (e) => call(accountId: e));
  }

  CopyWith$Input$IDFilter<TRes> get accountFloorAssociationId {
    final local$accountFloorAssociationId = _instance.accountFloorAssociationId;
    return local$accountFloorAssociationId == null
        ? CopyWith$Input$IDFilter.stub(_then(_instance))
        : CopyWith$Input$IDFilter(local$accountFloorAssociationId,
            (e) => call(accountFloorAssociationId: e));
  }

  CopyWith$Input$BooleanFilter<TRes> get plannedVisit {
    final local$plannedVisit = _instance.plannedVisit;
    return local$plannedVisit == null
        ? CopyWith$Input$BooleanFilter.stub(_then(_instance))
        : CopyWith$Input$BooleanFilter(
            local$plannedVisit, (e) => call(plannedVisit: e));
  }
}

class _CopyWithStubImpl$Input$VisitorFilter<TRes>
    implements CopyWith$Input$VisitorFilter<TRes> {
  _CopyWithStubImpl$Input$VisitorFilter(this._res);

  TRes _res;

  call({
    Input$IDFilter? id,
    Input$StringFilter? emailAddress,
    Input$StringFilter? phoneNumber,
    Input$DateRangeFilter? visitingDate,
    Input$StringFilter? type,
    Input$StringFilter? fullText,
    Input$IDFilter? placeId,
    Input$IDFilter? accountId,
    Input$IDFilter? accountFloorAssociationId,
    Input$BooleanFilter? plannedVisit,
  }) =>
      _res;
  CopyWith$Input$IDFilter<TRes> get id => CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get emailAddress =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get phoneNumber =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$DateRangeFilter<TRes> get visitingDate =>
      CopyWith$Input$DateRangeFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get type =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$StringFilter<TRes> get fullText =>
      CopyWith$Input$StringFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get placeId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get accountId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$IDFilter<TRes> get accountFloorAssociationId =>
      CopyWith$Input$IDFilter.stub(_res);
  CopyWith$Input$BooleanFilter<TRes> get plannedVisit =>
      CopyWith$Input$BooleanFilter.stub(_res);
}

class Input$VisitorRequest {
  factory Input$VisitorRequest({
    required String firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    required String accountFloorId,
    required String visitingDate,
    required Enum$VisitorType type,
    required bool plannedVisit,
    Input$ComingFromRequest? comingFrom,
    Input$IDProofRequest? idProof,
    String? notes,
    String? tools,
    String? purposeOfVisit,
    String? checkInDate,
  }) =>
      Input$VisitorRequest._({
        r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (emailAddress != null) r'emailAddress': emailAddress,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        r'accountFloorId': accountFloorId,
        r'visitingDate': visitingDate,
        r'type': type,
        r'plannedVisit': plannedVisit,
        if (comingFrom != null) r'comingFrom': comingFrom,
        if (idProof != null) r'idProof': idProof,
        if (notes != null) r'notes': notes,
        if (tools != null) r'tools': tools,
        if (purposeOfVisit != null) r'purposeOfVisit': purposeOfVisit,
        if (checkInDate != null) r'checkInDate': checkInDate,
      });

  Input$VisitorRequest._(this._$data);

  factory Input$VisitorRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('emailAddress')) {
      final l$emailAddress = data['emailAddress'];
      result$data['emailAddress'] = (l$emailAddress as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    final l$accountFloorId = data['accountFloorId'];
    result$data['accountFloorId'] = (l$accountFloorId as String);
    final l$visitingDate = data['visitingDate'];
    result$data['visitingDate'] = (l$visitingDate as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$VisitorType((l$type as String));
    final l$plannedVisit = data['plannedVisit'];
    result$data['plannedVisit'] = (l$plannedVisit as bool);
    if (data.containsKey('comingFrom')) {
      final l$comingFrom = data['comingFrom'];
      result$data['comingFrom'] = l$comingFrom == null
          ? null
          : Input$ComingFromRequest.fromJson(
              (l$comingFrom as Map<String, dynamic>));
    }
    if (data.containsKey('idProof')) {
      final l$idProof = data['idProof'];
      result$data['idProof'] = l$idProof == null
          ? null
          : Input$IDProofRequest.fromJson((l$idProof as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('tools')) {
      final l$tools = data['tools'];
      result$data['tools'] = (l$tools as String?);
    }
    if (data.containsKey('purposeOfVisit')) {
      final l$purposeOfVisit = data['purposeOfVisit'];
      result$data['purposeOfVisit'] = (l$purposeOfVisit as String?);
    }
    if (data.containsKey('checkInDate')) {
      final l$checkInDate = data['checkInDate'];
      result$data['checkInDate'] = (l$checkInDate as String?);
    }
    return Input$VisitorRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String? get lastName => (_$data['lastName'] as String?);
  String? get emailAddress => (_$data['emailAddress'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String get accountFloorId => (_$data['accountFloorId'] as String);
  String get visitingDate => (_$data['visitingDate'] as String);
  Enum$VisitorType get type => (_$data['type'] as Enum$VisitorType);
  bool get plannedVisit => (_$data['plannedVisit'] as bool);
  Input$ComingFromRequest? get comingFrom =>
      (_$data['comingFrom'] as Input$ComingFromRequest?);
  Input$IDProofRequest? get idProof =>
      (_$data['idProof'] as Input$IDProofRequest?);
  String? get notes => (_$data['notes'] as String?);
  String? get tools => (_$data['tools'] as String?);
  String? get purposeOfVisit => (_$data['purposeOfVisit'] as String?);
  String? get checkInDate => (_$data['checkInDate'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('emailAddress')) {
      final l$emailAddress = emailAddress;
      result$data['emailAddress'] = l$emailAddress;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    final l$accountFloorId = accountFloorId;
    result$data['accountFloorId'] = l$accountFloorId;
    final l$visitingDate = visitingDate;
    result$data['visitingDate'] = l$visitingDate;
    final l$type = type;
    result$data['type'] = toJson$Enum$VisitorType(l$type);
    final l$plannedVisit = plannedVisit;
    result$data['plannedVisit'] = l$plannedVisit;
    if (_$data.containsKey('comingFrom')) {
      final l$comingFrom = comingFrom;
      result$data['comingFrom'] = l$comingFrom?.toJson();
    }
    if (_$data.containsKey('idProof')) {
      final l$idProof = idProof;
      result$data['idProof'] = l$idProof?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('tools')) {
      final l$tools = tools;
      result$data['tools'] = l$tools;
    }
    if (_$data.containsKey('purposeOfVisit')) {
      final l$purposeOfVisit = purposeOfVisit;
      result$data['purposeOfVisit'] = l$purposeOfVisit;
    }
    if (_$data.containsKey('checkInDate')) {
      final l$checkInDate = checkInDate;
      result$data['checkInDate'] = l$checkInDate;
    }
    return result$data;
  }

  CopyWith$Input$VisitorRequest<Input$VisitorRequest> get copyWith =>
      CopyWith$Input$VisitorRequest(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VisitorRequest) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (_$data.containsKey('emailAddress') !=
        other._$data.containsKey('emailAddress')) {
      return false;
    }
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$accountFloorId = accountFloorId;
    final lOther$accountFloorId = other.accountFloorId;
    if (l$accountFloorId != lOther$accountFloorId) {
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
    final l$comingFrom = comingFrom;
    final lOther$comingFrom = other.comingFrom;
    if (_$data.containsKey('comingFrom') !=
        other._$data.containsKey('comingFrom')) {
      return false;
    }
    if (l$comingFrom != lOther$comingFrom) {
      return false;
    }
    final l$idProof = idProof;
    final lOther$idProof = other.idProof;
    if (_$data.containsKey('idProof') != other._$data.containsKey('idProof')) {
      return false;
    }
    if (l$idProof != lOther$idProof) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$tools = tools;
    final lOther$tools = other.tools;
    if (_$data.containsKey('tools') != other._$data.containsKey('tools')) {
      return false;
    }
    if (l$tools != lOther$tools) {
      return false;
    }
    final l$purposeOfVisit = purposeOfVisit;
    final lOther$purposeOfVisit = other.purposeOfVisit;
    if (_$data.containsKey('purposeOfVisit') !=
        other._$data.containsKey('purposeOfVisit')) {
      return false;
    }
    if (l$purposeOfVisit != lOther$purposeOfVisit) {
      return false;
    }
    final l$checkInDate = checkInDate;
    final lOther$checkInDate = other.checkInDate;
    if (_$data.containsKey('checkInDate') !=
        other._$data.containsKey('checkInDate')) {
      return false;
    }
    if (l$checkInDate != lOther$checkInDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$phoneNumber = phoneNumber;
    final l$accountFloorId = accountFloorId;
    final l$visitingDate = visitingDate;
    final l$type = type;
    final l$plannedVisit = plannedVisit;
    final l$comingFrom = comingFrom;
    final l$idProof = idProof;
    final l$notes = notes;
    final l$tools = tools;
    final l$purposeOfVisit = purposeOfVisit;
    final l$checkInDate = checkInDate;
    return Object.hashAll([
      l$firstName,
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('emailAddress') ? l$emailAddress : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      l$accountFloorId,
      l$visitingDate,
      l$type,
      l$plannedVisit,
      _$data.containsKey('comingFrom') ? l$comingFrom : const {},
      _$data.containsKey('idProof') ? l$idProof : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('tools') ? l$tools : const {},
      _$data.containsKey('purposeOfVisit') ? l$purposeOfVisit : const {},
      _$data.containsKey('checkInDate') ? l$checkInDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$VisitorRequest<TRes> {
  factory CopyWith$Input$VisitorRequest(
    Input$VisitorRequest instance,
    TRes Function(Input$VisitorRequest) then,
  ) = _CopyWithImpl$Input$VisitorRequest;

  factory CopyWith$Input$VisitorRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$VisitorRequest;

  TRes call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? accountFloorId,
    String? visitingDate,
    Enum$VisitorType? type,
    bool? plannedVisit,
    Input$ComingFromRequest? comingFrom,
    Input$IDProofRequest? idProof,
    String? notes,
    String? tools,
    String? purposeOfVisit,
    String? checkInDate,
  });
  CopyWith$Input$ComingFromRequest<TRes> get comingFrom;
  CopyWith$Input$IDProofRequest<TRes> get idProof;
}

class _CopyWithImpl$Input$VisitorRequest<TRes>
    implements CopyWith$Input$VisitorRequest<TRes> {
  _CopyWithImpl$Input$VisitorRequest(
    this._instance,
    this._then,
  );

  final Input$VisitorRequest _instance;

  final TRes Function(Input$VisitorRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? phoneNumber = _undefined,
    Object? accountFloorId = _undefined,
    Object? visitingDate = _undefined,
    Object? type = _undefined,
    Object? plannedVisit = _undefined,
    Object? comingFrom = _undefined,
    Object? idProof = _undefined,
    Object? notes = _undefined,
    Object? tools = _undefined,
    Object? purposeOfVisit = _undefined,
    Object? checkInDate = _undefined,
  }) =>
      _then(Input$VisitorRequest._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (emailAddress != _undefined)
          'emailAddress': (emailAddress as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (accountFloorId != _undefined && accountFloorId != null)
          'accountFloorId': (accountFloorId as String),
        if (visitingDate != _undefined && visitingDate != null)
          'visitingDate': (visitingDate as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$VisitorType),
        if (plannedVisit != _undefined && plannedVisit != null)
          'plannedVisit': (plannedVisit as bool),
        if (comingFrom != _undefined)
          'comingFrom': (comingFrom as Input$ComingFromRequest?),
        if (idProof != _undefined)
          'idProof': (idProof as Input$IDProofRequest?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (tools != _undefined) 'tools': (tools as String?),
        if (purposeOfVisit != _undefined)
          'purposeOfVisit': (purposeOfVisit as String?),
        if (checkInDate != _undefined) 'checkInDate': (checkInDate as String?),
      }));
  CopyWith$Input$ComingFromRequest<TRes> get comingFrom {
    final local$comingFrom = _instance.comingFrom;
    return local$comingFrom == null
        ? CopyWith$Input$ComingFromRequest.stub(_then(_instance))
        : CopyWith$Input$ComingFromRequest(
            local$comingFrom, (e) => call(comingFrom: e));
  }

  CopyWith$Input$IDProofRequest<TRes> get idProof {
    final local$idProof = _instance.idProof;
    return local$idProof == null
        ? CopyWith$Input$IDProofRequest.stub(_then(_instance))
        : CopyWith$Input$IDProofRequest(local$idProof, (e) => call(idProof: e));
  }
}

class _CopyWithStubImpl$Input$VisitorRequest<TRes>
    implements CopyWith$Input$VisitorRequest<TRes> {
  _CopyWithStubImpl$Input$VisitorRequest(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
    String? accountFloorId,
    String? visitingDate,
    Enum$VisitorType? type,
    bool? plannedVisit,
    Input$ComingFromRequest? comingFrom,
    Input$IDProofRequest? idProof,
    String? notes,
    String? tools,
    String? purposeOfVisit,
    String? checkInDate,
  }) =>
      _res;
  CopyWith$Input$ComingFromRequest<TRes> get comingFrom =>
      CopyWith$Input$ComingFromRequest.stub(_res);
  CopyWith$Input$IDProofRequest<TRes> get idProof =>
      CopyWith$Input$IDProofRequest.stub(_res);
}

enum Enum$Action { ENABLE, DISABLE, $unknown }

String toJson$Enum$Action(Enum$Action e) {
  switch (e) {
    case Enum$Action.ENABLE:
      return r'ENABLE';
    case Enum$Action.DISABLE:
      return r'DISABLE';
    case Enum$Action.$unknown:
      return r'$unknown';
  }
}

Enum$Action fromJson$Enum$Action(String value) {
  switch (value) {
    case r'ENABLE':
      return Enum$Action.ENABLE;
    case r'DISABLE':
      return Enum$Action.DISABLE;
    default:
      return Enum$Action.$unknown;
  }
}

enum Enum$CacheControlScope { PUBLIC, PRIVATE, $unknown }

String toJson$Enum$CacheControlScope(Enum$CacheControlScope e) {
  switch (e) {
    case Enum$CacheControlScope.PUBLIC:
      return r'PUBLIC';
    case Enum$CacheControlScope.PRIVATE:
      return r'PRIVATE';
    case Enum$CacheControlScope.$unknown:
      return r'$unknown';
  }
}

Enum$CacheControlScope fromJson$Enum$CacheControlScope(String value) {
  switch (value) {
    case r'PUBLIC':
      return Enum$CacheControlScope.PUBLIC;
    case r'PRIVATE':
      return Enum$CacheControlScope.PRIVATE;
    default:
      return Enum$CacheControlScope.$unknown;
  }
}

enum Enum$CredentialType { EMAIL, ISO14443, PHONE, $unknown }

String toJson$Enum$CredentialType(Enum$CredentialType e) {
  switch (e) {
    case Enum$CredentialType.EMAIL:
      return r'EMAIL';
    case Enum$CredentialType.ISO14443:
      return r'ISO14443';
    case Enum$CredentialType.PHONE:
      return r'PHONE';
    case Enum$CredentialType.$unknown:
      return r'$unknown';
  }
}

Enum$CredentialType fromJson$Enum$CredentialType(String value) {
  switch (value) {
    case r'EMAIL':
      return Enum$CredentialType.EMAIL;
    case r'ISO14443':
      return Enum$CredentialType.ISO14443;
    case r'PHONE':
      return Enum$CredentialType.PHONE;
    default:
      return Enum$CredentialType.$unknown;
  }
}

enum Enum$EndExistingAssociations { SINGLE, PMRY_OBJ, SCDY_OBJ, BOTH, $unknown }

String toJson$Enum$EndExistingAssociations(Enum$EndExistingAssociations e) {
  switch (e) {
    case Enum$EndExistingAssociations.SINGLE:
      return r'SINGLE';
    case Enum$EndExistingAssociations.PMRY_OBJ:
      return r'PMRY_OBJ';
    case Enum$EndExistingAssociations.SCDY_OBJ:
      return r'SCDY_OBJ';
    case Enum$EndExistingAssociations.BOTH:
      return r'BOTH';
    case Enum$EndExistingAssociations.$unknown:
      return r'$unknown';
  }
}

Enum$EndExistingAssociations fromJson$Enum$EndExistingAssociations(
    String value) {
  switch (value) {
    case r'SINGLE':
      return Enum$EndExistingAssociations.SINGLE;
    case r'PMRY_OBJ':
      return Enum$EndExistingAssociations.PMRY_OBJ;
    case r'SCDY_OBJ':
      return Enum$EndExistingAssociations.SCDY_OBJ;
    case r'BOTH':
      return Enum$EndExistingAssociations.BOTH;
    default:
      return Enum$EndExistingAssociations.$unknown;
  }
}

enum Enum$FeatureType { OBJECT, ASSOCIATION, OTHER, $unknown }

String toJson$Enum$FeatureType(Enum$FeatureType e) {
  switch (e) {
    case Enum$FeatureType.OBJECT:
      return r'OBJECT';
    case Enum$FeatureType.ASSOCIATION:
      return r'ASSOCIATION';
    case Enum$FeatureType.OTHER:
      return r'OTHER';
    case Enum$FeatureType.$unknown:
      return r'$unknown';
  }
}

Enum$FeatureType fromJson$Enum$FeatureType(String value) {
  switch (value) {
    case r'OBJECT':
      return Enum$FeatureType.OBJECT;
    case r'ASSOCIATION':
      return Enum$FeatureType.ASSOCIATION;
    case r'OTHER':
      return Enum$FeatureType.OTHER;
    default:
      return Enum$FeatureType.$unknown;
  }
}

enum Enum$GrantType { AUTHORIZATION_CODE, CLIENT_CREDENTIALS, $unknown }

String toJson$Enum$GrantType(Enum$GrantType e) {
  switch (e) {
    case Enum$GrantType.AUTHORIZATION_CODE:
      return r'AUTHORIZATION_CODE';
    case Enum$GrantType.CLIENT_CREDENTIALS:
      return r'CLIENT_CREDENTIALS';
    case Enum$GrantType.$unknown:
      return r'$unknown';
  }
}

Enum$GrantType fromJson$Enum$GrantType(String value) {
  switch (value) {
    case r'AUTHORIZATION_CODE':
      return Enum$GrantType.AUTHORIZATION_CODE;
    case r'CLIENT_CREDENTIALS':
      return Enum$GrantType.CLIENT_CREDENTIALS;
    default:
      return Enum$GrantType.$unknown;
  }
}

enum Enum$LifeState {
  ACTIVE,
  INACTIVE,
  DELETED,
  REQUESTED_FOR_DELETION,
  $unknown
}

String toJson$Enum$LifeState(Enum$LifeState e) {
  switch (e) {
    case Enum$LifeState.ACTIVE:
      return r'ACTIVE';
    case Enum$LifeState.INACTIVE:
      return r'INACTIVE';
    case Enum$LifeState.DELETED:
      return r'DELETED';
    case Enum$LifeState.REQUESTED_FOR_DELETION:
      return r'REQUESTED_FOR_DELETION';
    case Enum$LifeState.$unknown:
      return r'$unknown';
  }
}

Enum$LifeState fromJson$Enum$LifeState(String value) {
  switch (value) {
    case r'ACTIVE':
      return Enum$LifeState.ACTIVE;
    case r'INACTIVE':
      return Enum$LifeState.INACTIVE;
    case r'DELETED':
      return Enum$LifeState.DELETED;
    case r'REQUESTED_FOR_DELETION':
      return Enum$LifeState.REQUESTED_FOR_DELETION;
    default:
      return Enum$LifeState.$unknown;
  }
}

enum Enum$Operation { C, R, U, D, $unknown }

String toJson$Enum$Operation(Enum$Operation e) {
  switch (e) {
    case Enum$Operation.C:
      return r'C';
    case Enum$Operation.R:
      return r'R';
    case Enum$Operation.U:
      return r'U';
    case Enum$Operation.D:
      return r'D';
    case Enum$Operation.$unknown:
      return r'$unknown';
  }
}

Enum$Operation fromJson$Enum$Operation(String value) {
  switch (value) {
    case r'C':
      return Enum$Operation.C;
    case r'R':
      return Enum$Operation.R;
    case r'U':
      return Enum$Operation.U;
    case r'D':
      return Enum$Operation.D;
    default:
      return Enum$Operation.$unknown;
  }
}

enum Enum$Relationship {
  ASSIGNED_TO,
  ATTACHED_TO,
  AUTHORIZED_BY,
  ACCEPTED_BY,
  CONFIGURED_BY,
  BELONGS_TO,
  IS_GIVEN,
  PART_OF,
  RESERVED,
  USING,
  MODEL_OF,
  TRIGGERED,
  ALLOWED,
  $unknown
}

String toJson$Enum$Relationship(Enum$Relationship e) {
  switch (e) {
    case Enum$Relationship.ASSIGNED_TO:
      return r'ASSIGNED_TO';
    case Enum$Relationship.ATTACHED_TO:
      return r'ATTACHED_TO';
    case Enum$Relationship.AUTHORIZED_BY:
      return r'AUTHORIZED_BY';
    case Enum$Relationship.ACCEPTED_BY:
      return r'ACCEPTED_BY';
    case Enum$Relationship.CONFIGURED_BY:
      return r'CONFIGURED_BY';
    case Enum$Relationship.BELONGS_TO:
      return r'BELONGS_TO';
    case Enum$Relationship.IS_GIVEN:
      return r'IS_GIVEN';
    case Enum$Relationship.PART_OF:
      return r'PART_OF';
    case Enum$Relationship.RESERVED:
      return r'RESERVED';
    case Enum$Relationship.USING:
      return r'USING';
    case Enum$Relationship.MODEL_OF:
      return r'MODEL_OF';
    case Enum$Relationship.TRIGGERED:
      return r'TRIGGERED';
    case Enum$Relationship.ALLOWED:
      return r'ALLOWED';
    case Enum$Relationship.$unknown:
      return r'$unknown';
  }
}

Enum$Relationship fromJson$Enum$Relationship(String value) {
  switch (value) {
    case r'ASSIGNED_TO':
      return Enum$Relationship.ASSIGNED_TO;
    case r'ATTACHED_TO':
      return Enum$Relationship.ATTACHED_TO;
    case r'AUTHORIZED_BY':
      return Enum$Relationship.AUTHORIZED_BY;
    case r'ACCEPTED_BY':
      return Enum$Relationship.ACCEPTED_BY;
    case r'CONFIGURED_BY':
      return Enum$Relationship.CONFIGURED_BY;
    case r'BELONGS_TO':
      return Enum$Relationship.BELONGS_TO;
    case r'IS_GIVEN':
      return Enum$Relationship.IS_GIVEN;
    case r'PART_OF':
      return Enum$Relationship.PART_OF;
    case r'RESERVED':
      return Enum$Relationship.RESERVED;
    case r'USING':
      return Enum$Relationship.USING;
    case r'MODEL_OF':
      return Enum$Relationship.MODEL_OF;
    case r'TRIGGERED':
      return Enum$Relationship.TRIGGERED;
    case r'ALLOWED':
      return Enum$Relationship.ALLOWED;
    default:
      return Enum$Relationship.$unknown;
  }
}

enum Enum$ResourceCategory {
  ACCOUNT,
  ASSOCIATION,
  CREDENTIAL,
  FEATURE,
  PERSON,
  TENANT,
  ROLE,
  STATE,
  TOKEN,
  COUNTRY,
  ACTION,
  FLOOR,
  BLOCK,
  PLACE,
  ACCOUNT_FLOOR,
  $unknown
}

String toJson$Enum$ResourceCategory(Enum$ResourceCategory e) {
  switch (e) {
    case Enum$ResourceCategory.ACCOUNT:
      return r'ACCOUNT';
    case Enum$ResourceCategory.ASSOCIATION:
      return r'ASSOCIATION';
    case Enum$ResourceCategory.CREDENTIAL:
      return r'CREDENTIAL';
    case Enum$ResourceCategory.FEATURE:
      return r'FEATURE';
    case Enum$ResourceCategory.PERSON:
      return r'PERSON';
    case Enum$ResourceCategory.TENANT:
      return r'TENANT';
    case Enum$ResourceCategory.ROLE:
      return r'ROLE';
    case Enum$ResourceCategory.STATE:
      return r'STATE';
    case Enum$ResourceCategory.TOKEN:
      return r'TOKEN';
    case Enum$ResourceCategory.COUNTRY:
      return r'COUNTRY';
    case Enum$ResourceCategory.ACTION:
      return r'ACTION';
    case Enum$ResourceCategory.FLOOR:
      return r'FLOOR';
    case Enum$ResourceCategory.BLOCK:
      return r'BLOCK';
    case Enum$ResourceCategory.PLACE:
      return r'PLACE';
    case Enum$ResourceCategory.ACCOUNT_FLOOR:
      return r'ACCOUNT_FLOOR';
    case Enum$ResourceCategory.$unknown:
      return r'$unknown';
  }
}

Enum$ResourceCategory fromJson$Enum$ResourceCategory(String value) {
  switch (value) {
    case r'ACCOUNT':
      return Enum$ResourceCategory.ACCOUNT;
    case r'ASSOCIATION':
      return Enum$ResourceCategory.ASSOCIATION;
    case r'CREDENTIAL':
      return Enum$ResourceCategory.CREDENTIAL;
    case r'FEATURE':
      return Enum$ResourceCategory.FEATURE;
    case r'PERSON':
      return Enum$ResourceCategory.PERSON;
    case r'TENANT':
      return Enum$ResourceCategory.TENANT;
    case r'ROLE':
      return Enum$ResourceCategory.ROLE;
    case r'STATE':
      return Enum$ResourceCategory.STATE;
    case r'TOKEN':
      return Enum$ResourceCategory.TOKEN;
    case r'COUNTRY':
      return Enum$ResourceCategory.COUNTRY;
    case r'ACTION':
      return Enum$ResourceCategory.ACTION;
    case r'FLOOR':
      return Enum$ResourceCategory.FLOOR;
    case r'BLOCK':
      return Enum$ResourceCategory.BLOCK;
    case r'PLACE':
      return Enum$ResourceCategory.PLACE;
    case r'ACCOUNT_FLOOR':
      return Enum$ResourceCategory.ACCOUNT_FLOOR;
    default:
      return Enum$ResourceCategory.$unknown;
  }
}

enum Enum$SearchType { CONTAINS, ENDS_WITH, MATCHES, STARTS_WITH, $unknown }

String toJson$Enum$SearchType(Enum$SearchType e) {
  switch (e) {
    case Enum$SearchType.CONTAINS:
      return r'CONTAINS';
    case Enum$SearchType.ENDS_WITH:
      return r'ENDS_WITH';
    case Enum$SearchType.MATCHES:
      return r'MATCHES';
    case Enum$SearchType.STARTS_WITH:
      return r'STARTS_WITH';
    case Enum$SearchType.$unknown:
      return r'$unknown';
  }
}

Enum$SearchType fromJson$Enum$SearchType(String value) {
  switch (value) {
    case r'CONTAINS':
      return Enum$SearchType.CONTAINS;
    case r'ENDS_WITH':
      return Enum$SearchType.ENDS_WITH;
    case r'MATCHES':
      return Enum$SearchType.MATCHES;
    case r'STARTS_WITH':
      return Enum$SearchType.STARTS_WITH;
    default:
      return Enum$SearchType.$unknown;
  }
}

enum Enum$VisitorType { GENERAL, VENDOR, $unknown }

String toJson$Enum$VisitorType(Enum$VisitorType e) {
  switch (e) {
    case Enum$VisitorType.GENERAL:
      return r'GENERAL';
    case Enum$VisitorType.VENDOR:
      return r'VENDOR';
    case Enum$VisitorType.$unknown:
      return r'$unknown';
  }
}

Enum$VisitorType fromJson$Enum$VisitorType(String value) {
  switch (value) {
    case r'GENERAL':
      return Enum$VisitorType.GENERAL;
    case r'VENDOR':
      return Enum$VisitorType.VENDOR;
    default:
      return Enum$VisitorType.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'SystemGeneratedFields': {
    'Account',
    'Block',
    'Credential',
    'Feature',
    'Floor',
    'Person',
    'Place',
    'Role',
    'Visitor',
  },
  'BaseFields': {
    'Account',
    'Block',
    'Feature',
    'Person',
    'Place',
    'Role',
  },
};
