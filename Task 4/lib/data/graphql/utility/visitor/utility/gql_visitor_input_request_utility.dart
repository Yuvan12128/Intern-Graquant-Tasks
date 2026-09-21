import 'package:dart_date/dart_date.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';

class GQLVisitorInputUtility {
  static Input$VisitorRequest inputVisitorFilter(
    FormGroup formGroup,
  ) {
    try {
      String? idProofType;
      String? idProofNo;
      if (formGroup.control(FieldConstant.PROOF_ID).value != null) {
        idProofType = formGroup
            .control(FieldConstant.PROOF_ID)
            .value
            .toString()
            .split('.')
            .last;
      }
      if (formGroup.control(FieldConstant.PROOF_VALUE).value != null) {
        idProofNo = formGroup.control(FieldConstant.PROOF_VALUE).value;
      }
      Input$VisitorRequest inputVisitorRequest = new Input$VisitorRequest(
        firstName: formGroup.control(FieldConstant.FIRST_NAME).value,
        emailAddress: formGroup.control(FieldConstant.EMAIL_ADDRESS).value,
        phoneNumber:
            "+91${formGroup.control(FieldConstant.PHONE_NUMBER).value}",
        comingFrom: Input$ComingFromRequest(
          companyName:
              formGroup.control(FieldConstant.COMING_FROM_COMPANY).value,
          placeName: formGroup.control(FieldConstant.COMING_FROM_PLACE).value,
        ),
        plannedVisit: formGroup.control(FieldConstant.PLANNED_VISIT).value,
        type: formGroup.control(FieldConstant.VISITOR_TYPE).value ==
                VisitorType.VENDOR
            ? Enum$VisitorType.VENDOR
            : Enum$VisitorType.GENERAL,
        idProof: Input$IDProofRequest(
          type1: idProofType,
          value1: idProofNo,
        ),
        visitingDate: (formGroup.control(FieldConstant.DATE).value != null &&
                formGroup.control(FieldConstant.TIME).value != null)
            ? DateTime.parse(
                    "${formGroup.control(FieldConstant.DATE).value} ${formGroup.control(FieldConstant.TIME).value}")
                .toUtc()
                .format("yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'")
            : DateTime.now().toUTC.toIso8601String(),
        accountFloorId: formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value,
        notes: formGroup.control(FieldConstant.NOTES).value,
        purposeOfVisit: formGroup.control(FieldConstant.PURPOSE_OF_VISIT).value,
        tools: formGroup.control(FieldConstant.TOOLS).value,
        checkInDate: formGroup.control(FieldConstant.CHECK_IN_DATE).value,
      );
      return inputVisitorRequest;
    } catch (err) {
      throw err;
    }
  }
}
