import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/services/place/gql/place.graphql.dart';
import 'package:skcl_vms/data/graphql/utility/grapqhl_exception.dart';
import 'package:skcl_vms/data/graphql/utility/place/utility/gql_place_filter_utility.dart';
import 'package:skcl_vms/data/model/place/place_filter.dart';

class PlaceService {
  static Future<List<Query$Places$places$values?>> getPlaces(
    PlaceFilter? placeFilter,
    int offset,
    int first,
  ) async {
    try {
      Input$PlaceFilter inputPlaceFilter =
          GQLPlaceFilterUtility.inputPlacesFilter(placeFilter);
      final QueryResult<Query$Places> queryResult =
          await GetIt.instance<GraphQLClient>().query$Places(
        Options$Query$Places(
          variables: Variables$Query$Places(
            filters: inputPlaceFilter,
            first: first,
            offset: offset,
            sortBy: [ApiConstant.SORT_BY_UPDATED_DATE_DESCENDING],
          ),
        ),
      );
      GraphQlException.handleException(queryResult.exception);
      final Query$Places? parsedData = queryResult.parsedData;
      final List<Query$Places$places$values?>? placesData =
          parsedData?.places.values;
      if (placesData != null) {
        return placesData;
      } else {
        throw new Exception('Places get throws null value');
      }
    } catch (err) {
      throw err;
    }
  }
}
