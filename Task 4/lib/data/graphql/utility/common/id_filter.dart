import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';

class IdFilter {
  static gqlInputIdFilter(
    List<String>? ids,
  ) {
    try {
      if (ids != null && ids.length > 0) {
        Input$IDFilter inputIDFilter = Input$IDFilter(
          value: ids,
        );
        return inputIDFilter;
      } else {
        return null;
      }
    } catch (err) {
      throw err;
    }
  }

  // static Input$IDFilter? gqlInputGenericIdFilter(
  //   String? idFilter,
  // ) {
  //   try {
  //     if (idFilter != null) {
  //       Input$IDFilter? inputGenericIDFilter = IdFilter.gqlInputIdFilter(
  //         [idFilter],
  //       );
  //       return inputGenericIDFilter;
  //     } else {
  //       return null;
  //     }
  //   } catch (err) {
  //     throw err;
  //   }
  // }
}
