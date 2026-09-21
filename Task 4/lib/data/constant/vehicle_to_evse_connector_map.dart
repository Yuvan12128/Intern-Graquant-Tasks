class VehicleToEVSEConnectorMap {
  VehicleToEVSEConnectorMap._();

  static const Map<String, List<String>> bikeConnectorMap = {
    "AC": ["UNIVERSAL"],
    "DC": ["TYPE6", "ATHER"],
  };

  static const Map<String, List<String>> autoConnectorMap = {
    "AC": ["UNIVERSAL"],
  };

  static const Map<String, List<String>> carConnectorMap = {
    "AC": ["GB_T_AC", "TYPE1", "TYPE2", "UNIVERSAL"],
    "DC": ["CCS1", "CCS2", "GB_T_DC", "CHADEMO"],
  };

  static const Map<String, Map<String, List<String>>>
      vehicleToEVSEConnectorMap = {
    "BIKE": bikeConnectorMap,
    "AUTO": autoConnectorMap,
    "CAR": carConnectorMap,
  };
}
