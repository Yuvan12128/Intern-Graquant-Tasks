class Location {
  double? latitude;
  double? longitude;

  set setLatitude(double? latitude) {
    this.latitude = latitude;
  }

  double? get getLatitude {
    return latitude;
  }

  set setLongitude(double? longitude) {
    this.longitude = longitude;
  }

  double? get getLongitude {
    return longitude;
  }
}
