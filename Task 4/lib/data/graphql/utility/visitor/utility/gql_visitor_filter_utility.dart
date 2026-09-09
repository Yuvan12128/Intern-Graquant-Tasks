import 'package:dart_date/dart_date.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/common/id_filter.dart';
import 'package:skcl_vms/data/model/common/date_range_filter.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';

class GQLVisitorFilterUtility {
  static Input$VisitorFilter inputVisitorFilter(
    VisitorFilter? visitorFilter,
  ) {
    try {
      Input$IDFilter? inputPlaceIDFilter = IdFilter.gqlInputIdFilter(
        visitorFilter?.getPlaceIdFilter != null
            ? [visitorFilter!.getPlaceIdFilter!]
            : [],
      );
      Input$IDFilter? inputAccountIDFilter = IdFilter.gqlInputIdFilter(
        visitorFilter?.getAccountIdFilter != null
            ? [visitorFilter!.getAccountIdFilter!]
            : [],
      );
      Input$BooleanFilter? meetingTypeFilter =
          GQLVisitorFilterUtility.gqlInputMeetingTypeFilter(
        visitorFilter?.getMeetingTypeFilter,
      );
      Input$StringFilter? visitorTypeFilter =
          GQLVisitorFilterUtility.gqlInputVisitorTypeFilter(
        visitorFilter?.getVisitorTypeFilter,
      );

      Input$DateRangeFilter? visitingDateRangeFilter =
          GQLVisitorFilterUtility.gqlInputVisitingDateRangeFilter(
        visitorFilter?.getVisitingDateFilter,
      );
      Input$VisitorFilter inputVisitorFilter = new Input$VisitorFilter(
        placeId: inputPlaceIDFilter,
        accountId: inputAccountIDFilter,
        plannedVisit: meetingTypeFilter,
        type: visitorTypeFilter,
        visitingDate: visitingDateRangeFilter,
      );
      return inputVisitorFilter;
    } catch (err) {
      throw err;
    }
  }

  static Input$BooleanFilter? gqlInputMeetingTypeFilter(
    MeetingType? meetingType,
  ) {
    try {
      if (meetingType != null) {
        Input$BooleanFilter meetingTypeFilter = Input$BooleanFilter(
          value: MeetingType.PLANNED == meetingType ? true : false,
        );
        return meetingTypeFilter;
      } else {
        return null;
      }
    } catch (err) {
      throw err;
    }
  }

  static Input$StringFilter? gqlInputVisitorTypeFilter(
    VisitorType? visitorType,
  ) {
    try {
      if (visitorType != null) {
        Input$StringFilter meetingTypeFilter = Input$StringFilter(
          value: [visitorType.toString().split('.').last],
        );
        return meetingTypeFilter;
      } else {
        return null;
      }
    } catch (err) {
      throw err;
    }
  }

  static Input$DateRangeFilter? gqlInputVisitingDateRangeFilter(
    DateRangeFilter? dateRangeFilter,
  ) {
    try {
      if (dateRangeFilter != null) {
        String? startDate = dateRangeFilter.getStartDate;
        String? endDate = dateRangeFilter.getEndDate;
        if (startDate != null && endDate != null) {
          Input$DateRangeFilter dateRangeFilter = Input$DateRangeFilter(
            startDate:
                DateTime.parse(startDate).startOfDay.toUTC.toIso8601String(),
            endDate: DateTime.parse(endDate).endOfDay.toUTC.toIso8601String(),
          );
          return dateRangeFilter;
        } else {
          Input$DateRangeFilter dateRangeFilter = Input$DateRangeFilter(
            startDate: DateTime.now().startOfDay.toUTC.toIso8601String(),
            endDate: DateTime.now().endOfDay.toUTC.toIso8601String(),
          );
          return dateRangeFilter;
        }
      } else {
        Input$DateRangeFilter dateRangeFilter = Input$DateRangeFilter(
          startDate: DateTime.now().startOfDay.toUTC.toIso8601String(),
          endDate: DateTime.now().endOfDay.toUTC.toIso8601String(),
        );
        return dateRangeFilter;
      }
    } catch (err) {
      throw err;
    }
  }
}
