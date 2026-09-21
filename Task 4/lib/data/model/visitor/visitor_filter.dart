import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/data/model/common/date_range_filter.dart';

class VisitorFilter {
  String? placeIdFilter;
  String? accountIdFilter;
  DateRangeFilter? visitingDateFilter;
  MeetingType? meetingTypeFilter;
  VisitorType? visitorTypeFilter;

  set setPlaceIdFilter(String? placeIdFilter) {
    this.placeIdFilter = placeIdFilter;
  }

  String? get getPlaceIdFilter {
    return placeIdFilter;
  }

  set setAccountIdFilter(String? accountIdFilter) {
    this.accountIdFilter = accountIdFilter;
  }

  String? get getAccountIdFilter {
    return accountIdFilter;
  }

  set setVisitingDateFilter(DateRangeFilter? visitingDateFilter) {
    this.visitingDateFilter = visitingDateFilter;
  }

  DateRangeFilter? get getVisitingDateFilter {
    return visitingDateFilter;
  }

  set setMeetingTypeFilter(MeetingType? meetingTypeFilter) {
    this.meetingTypeFilter = meetingTypeFilter;
  }

  MeetingType? get getMeetingTypeFilter {
    return meetingTypeFilter;
  }

  set setVisitorTypeFilter(VisitorType? visitorTypeFilter) {
    this.visitorTypeFilter = visitorTypeFilter;
  }

  VisitorType? get getVisitorTypeFilter {
    return visitorTypeFilter;
  }
}
