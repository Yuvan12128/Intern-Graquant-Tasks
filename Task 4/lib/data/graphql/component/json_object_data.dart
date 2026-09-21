import 'package:json_annotation/json_annotation.dart';
part 'json_object_data.g.dart';

@JsonSerializable(explicitToJson: true)
class JsonObjectData {
  JsonObjectData({
    this.evses,
    this.firmware,
    this.connectors,
    this.battery,
    this.id,
    this.objCat,
    this.chargingStationUId,
    this.evse,
    this.stop,
    this.name,
  });
  List<Evse>? evses;
  Map<String, dynamic>? firmware;
  List<Connector>? connectors;
  Battery? battery;
  String? id;
  String? objCat;
  String? chargingStationUId;
  Evse? evse;
  Stop? stop;
  String? name;

  factory JsonObjectData.fromJson(Map<String, dynamic> json) =>
      _$JsonObjectDataFromJson(json);
  Map<String, dynamic> toJson() => _$JsonObjectDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Evse {
  Evse({
    this.port,
    this.power,
    this.current,
    this.voltage,
    this.isFastCharger,
    this.electricCurrentType,
    this.connectors,
  });
  int? port;
  double? power;
  double? current;
  double? voltage;
  bool? isFastCharger;
  String? electricCurrentType;
  List<Connector>? connectors;
  factory Evse.fromJson(Map<String, dynamic> json) => _$EvseFromJson(json);
  Map<String, dynamic> toJson() => _$EvseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Connector {
  Connector({
    this.port,
    this.type,
    this.iconPath,
    this.isAvailable,
    this.status,
    this.electricCurrentTypeInfos,
  });
  int? port;
  String? type;
  String? iconPath;
  bool? isAvailable;
  String? status;
  List<ElectricCurrentTypeInfo>? electricCurrentTypeInfos;
  factory Connector.fromJson(Map<String, dynamic> json) =>
      _$ConnectorFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ElectricCurrentTypeInfo {
  ElectricCurrentTypeInfo({
    this.electricCurrentType,
    this.communicationEnabled,
    this.power,
    this.voltage,
  });
  String? electricCurrentType;
  bool? communicationEnabled;
  double? power;
  double? voltage;
  factory ElectricCurrentTypeInfo.fromJson(Map<String, dynamic> json) =>
      _$ElectricCurrentTypeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ElectricCurrentTypeInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Battery {
  Battery({
    this.maxCRating,
    this.ampHour,
    this.minCRating,
    this.energy,
    this.voltage,
  });
  double? maxCRating;
  double? ampHour;
  double? minCRating;
  double? energy;
  double? voltage;
  factory Battery.fromJson(Map<String, dynamic> json) =>
      _$BatteryFromJson(json);
  Map<String, dynamic> toJson() => _$BatteryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Stop {
  Stop({
    this.reason,
    this.occurredDate,
    this.systemTriggerReason,
  });
  String? reason;
  String? occurredDate;
  String? systemTriggerReason;
  factory Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);
  Map<String, dynamic> toJson() => _$StopToJson(this);
}
