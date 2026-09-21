import 'package:skcl_vms/data/constant/enum/life_state.dart';

class CommonFieldFilter {
  List<String>? id;
  List<LifeState>? lifeState;
  List<String>? status;

  List<String>? get getIds {
    return id;
  }

  set setIds(List<String>? id) {
    this.id = id;
  }

  List<String>? get getStatus {
    return status;
  }

  set setStatus(List<String>? status) {
    this.status = status;
  }

  List<LifeState>? get getLifeState {
    return lifeState;
  }

  set setLifeState(List<LifeState>? lifeState) {
    this.lifeState = lifeState;
  }
}
