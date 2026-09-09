import 'package:skcl_vms/data/constant/enum/relationship.dart';
import 'package:skcl_vms/data/model/common/options_filter.dart';

class AssociationMutationPayload {
  String? primaryId;
  String? secondaryId;
  String? chargingSessionUId;
  Relationship? relationship;
  int? evsePort;
  OptionsFilter? options;

  String? get getPrimaryId => primaryId;
  String? get getSecondaryId => secondaryId;
  String? get getChargingSessionUId => chargingSessionUId;
  Relationship? get getRelationship => relationship;
  int? get getEvsePort => evsePort;
  OptionsFilter? get getOptions => options;
}
