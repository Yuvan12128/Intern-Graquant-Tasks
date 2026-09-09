import 'package:skcl_vms/data/constant/enum/life_state.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';

class GQLLifeStateFilterUtility {
  static Input$LifeStateFilter? gqlLifeStateBuilder(
    List<LifeState>? lifeStates,
  ) {
    try {
      List<Enum$LifeState> gqlLifeStatevalue = [Enum$LifeState.ACTIVE];
      if (lifeStates != null) {
        lifeStates.forEach(
          (value) {
            switch (value) {
              case LifeState.INACTIVE:
                gqlLifeStatevalue.add(Enum$LifeState.INACTIVE);
                break;
              case LifeState.DELETED:
                gqlLifeStatevalue.add(Enum$LifeState.DELETED);
                break;
              default:
                break;
            }
          },
        );
      }
      Input$LifeStateFilter inputLifeStateFilter = new Input$LifeStateFilter(
        value: gqlLifeStatevalue,
      );
      return inputLifeStateFilter;
    } catch (err) {
      throw err;
    }
  }
}
