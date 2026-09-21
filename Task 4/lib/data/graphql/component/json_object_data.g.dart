// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_object_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonObjectData _$JsonObjectDataFromJson(Map<String, dynamic> json) =>
    JsonObjectData(
      evses: (json['evses'] as List<dynamic>?)
          ?.map((e) => Evse.fromJson(e as Map<String, dynamic>))
          .toList(),
      firmware: json['firmware'] as Map<String, dynamic>?,
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(e as Map<String, dynamic>))
          .toList(),
      battery: json['battery'] == null
          ? null
          : Battery.fromJson(json['battery'] as Map<String, dynamic>),
      id: json['id'] as String?,
      objCat: json['objCat'] as String?,
      chargingStationUId: json['chargingStationUId'] as String?,
      evse: json['evse'] == null
          ? null
          : Evse.fromJson(json['evse'] as Map<String, dynamic>),
      stop: json['stop'] == null
          ? null
          : Stop.fromJson(json['stop'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$JsonObjectDataToJson(JsonObjectData instance) =>
    <String, dynamic>{
      'evses': instance.evses?.map((e) => e.toJson()).toList(),
      'firmware': instance.firmware,
      'connectors': instance.connectors?.map((e) => e.toJson()).toList(),
      'battery': instance.battery?.toJson(),
      'id': instance.id,
      'objCat': instance.objCat,
      'chargingStationUId': instance.chargingStationUId,
      'evse': instance.evse?.toJson(),
      'stop': instance.stop?.toJson(),
      'name': instance.name,
    };

Evse _$EvseFromJson(Map<String, dynamic> json) => Evse(
      port: (json['port'] as num?)?.toInt(),
      power: (json['power'] as num?)?.toDouble(),
      current: (json['current'] as num?)?.toDouble(),
      voltage: (json['voltage'] as num?)?.toDouble(),
      isFastCharger: json['isFastCharger'] as bool?,
      electricCurrentType: json['electricCurrentType'] as String?,
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EvseToJson(Evse instance) => <String, dynamic>{
      'port': instance.port,
      'power': instance.power,
      'current': instance.current,
      'voltage': instance.voltage,
      'isFastCharger': instance.isFastCharger,
      'electricCurrentType': instance.electricCurrentType,
      'connectors': instance.connectors?.map((e) => e.toJson()).toList(),
    };

Connector _$ConnectorFromJson(Map<String, dynamic> json) => Connector(
      port: (json['port'] as num?)?.toInt(),
      type: json['type'] as String?,
      iconPath: json['iconPath'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      status: json['status'] as String?,
      electricCurrentTypeInfos:
          (json['electricCurrentTypeInfos'] as List<dynamic>?)
              ?.map((e) =>
                  ElectricCurrentTypeInfo.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ConnectorToJson(Connector instance) => <String, dynamic>{
      'port': instance.port,
      'type': instance.type,
      'iconPath': instance.iconPath,
      'isAvailable': instance.isAvailable,
      'status': instance.status,
      'electricCurrentTypeInfos':
          instance.electricCurrentTypeInfos?.map((e) => e.toJson()).toList(),
    };

ElectricCurrentTypeInfo _$ElectricCurrentTypeInfoFromJson(
        Map<String, dynamic> json) =>
    ElectricCurrentTypeInfo(
      electricCurrentType: json['electricCurrentType'] as String?,
      communicationEnabled: json['communicationEnabled'] as bool?,
      power: (json['power'] as num?)?.toDouble(),
      voltage: (json['voltage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ElectricCurrentTypeInfoToJson(
        ElectricCurrentTypeInfo instance) =>
    <String, dynamic>{
      'electricCurrentType': instance.electricCurrentType,
      'communicationEnabled': instance.communicationEnabled,
      'power': instance.power,
      'voltage': instance.voltage,
    };

Battery _$BatteryFromJson(Map<String, dynamic> json) => Battery(
      maxCRating: (json['maxCRating'] as num?)?.toDouble(),
      ampHour: (json['ampHour'] as num?)?.toDouble(),
      minCRating: (json['minCRating'] as num?)?.toDouble(),
      energy: (json['energy'] as num?)?.toDouble(),
      voltage: (json['voltage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BatteryToJson(Battery instance) => <String, dynamic>{
      'maxCRating': instance.maxCRating,
      'ampHour': instance.ampHour,
      'minCRating': instance.minCRating,
      'energy': instance.energy,
      'voltage': instance.voltage,
    };

Stop _$StopFromJson(Map<String, dynamic> json) => Stop(
      reason: json['reason'] as String?,
      occurredDate: json['occurredDate'] as String?,
      systemTriggerReason: json['systemTriggerReason'] as String?,
    );

Map<String, dynamic> _$StopToJson(Stop instance) => <String, dynamic>{
      'reason': instance.reason,
      'occurredDate': instance.occurredDate,
      'systemTriggerReason': instance.systemTriggerReason,
    };
