import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/model/common/date_range_filter.dart';

class DateFilterUtility {
  static Input$DateRangeFilter? gqlOccurredDateInputFilterBuilder(
    DateRangeFilter? occurredDate,
  ) {
    try {
      if (occurredDate != null &&
          occurredDate.startDate != null &&
          occurredDate.endDate != null) {
        Input$DateRangeFilter inputDateRangeFilter = new Input$DateRangeFilter(
          startDate: occurredDate.startDate,
          endDate: occurredDate.endDate,
        );
        return inputDateRangeFilter;
      } else {
        return null;
      }
    } catch (err) {
      throw err;
    }
  }
}
