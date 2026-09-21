import 'package:skcl_vms/data/constant/enum/end_existing_associations.dart';

class OptionsFilter {
  EndExistingAssociations? endExistingAssociation;
  bool? exceptinOnConflict;
  bool? isGlobal;

  EndExistingAssociations? get getEndExistingAssociation =>
      endExistingAssociation;
  bool? get getExceptionOnConflict => exceptinOnConflict;
  bool? get getIsGlobal => isGlobal;
}
