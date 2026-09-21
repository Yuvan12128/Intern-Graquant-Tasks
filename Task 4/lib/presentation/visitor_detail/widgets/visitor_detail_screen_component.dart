import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/component/custom_icon_button.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/proof_id.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/visitor_detail/bloc/visitor_detail/visitor_detail_delete_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

import '../../../logic/bloc/user_authorization/user_authorization_bloc.dart';

class VisitorDetailScreenComponent {
  static Widget deleteIcon(
    BuildContext context,
    String? visitorId,
    VisitorDeleteUpdateState state,
  ) {
    try {
      if (state is VisitorDeleteButtonShowState && state.canShow) {
        return CustomIconButton(
          icon: Icons.delete_forever_sharp,
          isIconColor: false,
          onpress: () {
            CustomDialog.alertMessage(
              context,
              'Confirmation',
              'Do you want to delete this visitor?',
              true,
              'Yes',
              'No',
              () {
                context.read<VisitorUpdateDeleteBloc>().add(
                      VisitorDeleteEvent(visitorId: visitorId),
                    );
              },
              null,
            );
          },
        );
      } else {
        return Container();
      }
    } catch (err) {
      return Container();
    }
  }

  static Widget checkedInIcon(
    BuildContext context,
    Query$Visitors$visitors$values? visitorDetail,
    UserAuthorizationState state,
  ) {
    try {
      bool visitingType = (visitorDetail?.plannedVisit != null &&
              visitorDetail?.plannedVisit == true)
          ? true
          : false;
      DateTime? visitingDateTime = visitorDetail?.visitingDate;
      DateTime currentDateTime = new DateTime.now();
      int? differenceInDays;
      if (visitingDateTime != null) {
        differenceInDays = currentDateTime.difference(visitingDateTime).inDays;
      }
      if ((state.roleType == AppConstant.SECURITY ||
              state.roleType == AppConstant.ADMINISTRATOR) &&
          visitingType == true &&
          visitorDetail?.checkInDate == null &&
          differenceInDays != null &&
          differenceInDays < 1) {
        return CustomIconButton(
          icon: Icons.check_circle_outline_sharp,
          isIconColor: true,
          onpress: () {
            context
                .read<VisitorUpdateDeleteBloc>()
                .add(VisitorCheckedInEvent(visitorDetail: visitorDetail));
          },
        );
      } else {
        return Container();
      }
    } catch (err) {
      return Container();
    }
  }

  static void blocListener(
    BuildContext context,
    VisitorDeleteUpdateState state,
    String fileName,
  ) {
    if (state is VisitorDeleteUpdateErrorState) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        '_visitor_detail_error_handler',
        state.error,
        'Visitor detail delete bloc error handler',
        'Something Went Wrong!...',
        false,
        null,
        null,
      );
    }

    if (state is VisitorDeleteLoading) {
      EasyLoading.show();
    }

    if (state is VisitorDeletedSuccessfully) {
      EasyLoading.dismiss();
      Navigator.pop(context);
    }

    if (state is VisitorCheckedInLoading) {
      EasyLoading.show();
    }

    if (state is VisitorCheckedInSuccessfully) {
      EasyLoading.dismiss();
      Navigator.pop(context);
    }
  }

  static FormGroup visitorFormBuilder(
    Query$Visitors$visitors$values visitorDetail,
  ) {
    ProofId? idProofType;
    String? type1 = visitorDetail.idProof?.type1;
    if (type1 != null) {
      String apiType = type1.toString().split('.').last.toLowerCase();
      if (apiType == "aadhar") {
        idProofType = ProofId.AADHAR;
      } else if (apiType == "driving_license") {
        idProofType = ProofId.DRIVING_LICENSE;
      } else {
        idProofType = ProofId.VOTER_ID;
      }
    }
    return fb.group(
      <String, Object>{
        FieldConstant.VISITOR_TYPE: FormControl<VisitorType>(
          value: (visitorDetail.type.toString().split('.').last.toLowerCase() ==
                  VisitorType.VENDOR.toString().split('.').last.toLowerCase())
              ? VisitorType.VENDOR
              : VisitorType.GENERAL,
        ),
        FieldConstant.FIRST_NAME: FormControl<String>(
          value: visitorDetail.firstName,
        ),
        FieldConstant.EMAIL_ADDRESS: FormControl<String>(
          value: visitorDetail.emailAddress,
        ),
        FieldConstant.PHONE_NUMBER: FormControl<String>(
          value: visitorDetail.phoneNumber.toString().split('+91').last,
        ),
        FieldConstant.ACCOUNT_FLOOR_ID: FormControl<String>(
          value: visitorDetail.accountFloorId,
          validators: [Validators.required],
        ),
        FieldConstant.COMING_FROM_PLACE: FormControl<String>(
          value: visitorDetail.comingFrom?.placeName,
        ),
        FieldConstant.COMING_FROM_COMPANY: FormControl<String>(
          value: visitorDetail.comingFrom?.companyName,
        ),
        FieldConstant.DATE: FormControl<String>(
          value: DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
              .toLocal()
              .format('yyyy-MM-dd'),
        ),
        FieldConstant.PROOF_ID: FormControl<ProofId>(
          value: idProofType,
        ),
        FieldConstant.PROOF_VALUE: FormControl<String>(
          value: visitorDetail.idProof?.value1,
        ),
        FieldConstant.DISPLAY_TIME: FormControl<String>(
          value: DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
              .toLocal()
              .format('HH:mm:ss'),
        ),
        FieldConstant.TIME: FormControl<String>(
          value: DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
              .toLocal()
              .format('HH:mm:ss'),
        ),
        FieldConstant.TOOLS: FormControl<String>(
          value: visitorDetail.tools,
        ),
        FieldConstant.PURPOSE_OF_VISIT: FormControl<String>(
          value: visitorDetail.purposeOfVisit,
        ),
        FieldConstant.NOTES: FormControl<String>(
          value: visitorDetail.notes,
        ),
        FieldConstant.CHECK_IN_DATE: FormControl<String>(
          value: DateTime.now().toUTC.toIso8601String(),
        ),
        FieldConstant.PLANNED_VISIT: FormControl<bool>(
          value: visitorDetail.plannedVisit,
        ),
        FieldConstant.ID: FormControl<String>(
          value: visitorDetail.id,
        ),
      },
    );
  }
}
