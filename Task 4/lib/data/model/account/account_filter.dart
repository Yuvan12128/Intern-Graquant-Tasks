import 'package:skcl_vms/data/model/common/common_field_filter.dart';

class AccountFilter {
  String? placeIdFilter;

  set setPlaceIdFilter(String? placeIdFilter) {
    this.placeIdFilter = placeIdFilter;
  }

  String? get getPlaceIdFilter {
    return placeIdFilter;
  }

  CommonFieldFilter? commonFieldFilter;
  CommonFieldFilter? get getCommonFieldFilter => commonFieldFilter;
}
