import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/common/gql_life_state_filter_utility.dart';
import 'package:skcl_vms/data/model/place/place_filter.dart';

class GQLPlaceFilterUtility {
  static Input$PlaceFilter inputPlacesFilter(
    PlaceFilter? placeFilter,
  ) {
    try {
      Input$PlaceFilter inputPlaceFilter = new Input$PlaceFilter(
        lifeState: GQLLifeStateFilterUtility.gqlLifeStateBuilder(
          placeFilter?.commonFieldFilter?.getLifeState,
        ),
      );
      return inputPlaceFilter;
    } catch (err) {
      throw err;
    }
  }
}
