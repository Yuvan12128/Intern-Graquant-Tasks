import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/common/gql_life_state_filter_utility.dart';
import 'package:skcl_vms/data/graphql/utility/common/id_filter.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';

class GQLAccountsFilterUtility {
  static Input$AccountFilter inputAccountsFilter(
    AccountFilter? placeFilter,
  ) {
    try {
      Input$IDFilter? inputPlaceIDFilter = IdFilter.gqlInputIdFilter(
        placeFilter?.getPlaceIdFilter != null
            ? [placeFilter!.getPlaceIdFilter!]
            : null,
      );
      Input$IDFilter? inputAccountIDFilter = IdFilter.gqlInputIdFilter(
        placeFilter?.getCommonFieldFilter?.getIds != null
            ? placeFilter?.getCommonFieldFilter?.getIds
            : null,
      );
      Input$AccountFilter inputAccountFilter = new Input$AccountFilter(
        lifeState: GQLLifeStateFilterUtility.gqlLifeStateBuilder(
          placeFilter?.commonFieldFilter?.getLifeState,
        ),
        placeId: inputPlaceIDFilter,
        id: inputAccountIDFilter,
      );
      return inputAccountFilter;
    } catch (err) {
      throw err;
    }
  }
}
