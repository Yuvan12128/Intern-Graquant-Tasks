import 'package:skcl_vms/data/graphql/services/place/gql/place.graphql.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/data/model/place/place_filter.dart';

class PlaceService {
  static Future<List<Query$Places$places$values?>> getPlaces(
    PlaceFilter? placeFilter,
    int offset,
    int first,
  ) async {
    return MockData.getPlaces(placeFilter, offset, first);
  }
}

