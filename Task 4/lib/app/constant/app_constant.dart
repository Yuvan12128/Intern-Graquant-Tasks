class AppConstant {
  AppConstant._();
  static const List<String> GOOGLE_SIGNIN_SCOPES = [
    'https://www.googleapis.com/auth/userinfo.email'
  ];
  static const String GOOGLE_PLACE_API_URL =
      'https://maps.googleapis.com/maps/api/place/details/json';
  static const String MOBILE_NULL_ERROR = "Please Enter your mobile number";
  static const String kMobileError = "Please Enter valid mobile number";
  static const String CURRENT_USER_LOCATION_ID = 'id-1';
  static const Duration AnimationDuration = Duration(milliseconds: 200);
  static const double GOOGLE_MAP_ZOOM_TO_GEO_HASH_PRECISION_DIVIDER = 2.5;
  static const String ADMINISTRATOR = 'ADMINISTRATOR';
  static const String RECEPTIONIST = 'RECEPTIONIST';
  static const String SECURITY = 'SECURITY';
}
