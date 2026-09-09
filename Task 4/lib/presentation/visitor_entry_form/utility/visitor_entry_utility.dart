import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/proof_id.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form/visitor_form_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form_add_update/visitor_form_add_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/widgets/visitor_entry_form_screen_body.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

const String fileName = 'visitor_entry_form.utility.visitor_entry_utility.dart';

class VisitorEntryFormUtility {
  static void nameChangedFun(String? value) {}
  static void surnameChangedFun(String? value) {}
  static void emailAddressChangedFun(String? value) {}
  static void mobileNumberChangesFun(String? value) {}

  static String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Name is empty';
    } else {
      return null;
    }
  }

  static String? lastNameValidation(String? value) {
    if (value!.isEmpty) {
      return 'Last name is empty';
    } else {
      return null;
    }
  }

  static String? mobileNumberValidation(String? value) {
    if (value!.isEmpty) {
      return 'Mobile number is empty';
    } else {
      return null;
    }
  }

  static void addVisitor(
    BuildContext context,
    FormGroup formGroup,
    String operation,
  ) {
    try {
      formGroup.markAllAsTouched();
      if (formGroup.valid) {
        if (operation == "Add") {
          context.read<VisitorFormAddUpdateBloc>().add(
                VisitorAddEvent(
                  formGroup: formGroup,
                ),
              );
        } else {
          context.read<VisitorFormAddUpdateBloc>().add(
                VisitorUpdateEvent(
                  formGroup: formGroup,
                ),
              );
        }
      } else {
        throw new Exception(formGroup.errors);
      }
    } catch (err) {
      Log.error(
        context,
        fileName,
        'addVisitor',
        err,
        'Error occured while adding visitor',
        null,
        false,
        null,
        null,
      );
    }
  }

  static List<DropdownMenuItem<dynamic>> visitorTypeDropDownMenuItems(
    BuildContext context,
  ) {
    final List<VisitorType> _visitorTypes = VisitorType.values;
    final List<DropdownMenuItem<dynamic>> dropDownItems = [];
    _visitorTypes.forEach((type) {
      dropDownItems.add(
        DropdownMenuItem(
          child: Text(
            type.toString().split('.').last.toLowerCase().capitalizeFirstofEach,
            style: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          value: type,
        ),
      );
    });
    return dropDownItems;
  }

  static List<DropdownMenuItem<dynamic>> proofTypeDropDownMenuItems(
    BuildContext context,
  ) {
    final List<ProofId> _proofTypes = ProofId.values;
    final List<DropdownMenuItem<dynamic>> dropDownItems = [];
    _proofTypes.forEach((type) {
      dropDownItems.add(
        DropdownMenuItem(
          child: Text(
            type.toString().split('.').last.toLowerCase().capitalizeFirstofEach,
            style: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          value: type,
        ),
      );
    });
    return dropDownItems;
  }

  static visitorFormBlocListener(
    BuildContext context,
    VisitorFormState state,
    FormGroup formGroup,
  ) {
    try {
      if (!state.showBuildingTextField) {
        formGroup.control(FieldConstant.BUILDING_NAME).value =
            state.buildingName;
        formGroup.control(FieldConstant.BUILDING_NAME).markAsTouched();
      }

      if (state.error != null) {
        EasyLoading.dismiss();
        Log.error(
          context,
          fileName,
          'Error on showing building name',
          state.error,
          'Error on showing building name',
          "Something went wrong!..",
          false,
          null,
          null,
        );
      }
    } catch (err) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        'Error on showing building name',
        err,
        'Error on showing building name',
        "Something went wrong!..",
        false,
        null,
        null,
      );
    }
  }

  static visitorFormAddBlocListener(
    BuildContext context,
    VisitorFormAddUpdateState state,
  ) {
    try {
      if (state is VisitorFormAddingState) {
        EasyLoading.show();
      }

      if (state is VisitorFormUpdatingState) {
        EasyLoading.show();
      }

      if (state is VisitorFormAddedState) {
        String? userType = context.read<UserAuthorizationBloc>().state.roleType;
        EasyLoading.dismiss();
        EasyLoading.showSuccess("Visitor added successfully");
        if (userType != AppConstant.RECEPTIONIST) {
          Navigator.of(context).pushNamedAndRemoveUntil(
              RouteName.COMPANY_CONTACT_SCREEN, (route) => false);
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(
              RouteName.VISITOR_REGISTRY_SCREEN, (route) => false);
        }
      }

      if (state is VisitorFormUpdatedState) {
        EasyLoading.dismiss();
        EasyLoading.showSuccess("Visitor updated successfully");
        Navigator.pop(context);
      }

      if (state is VisitorFormAddUpdateErrorState) {
        EasyLoading.dismiss();
        Log.error(
          context,
          fileName,
          'Error on creating visitor',
          state.error,
          'Error occured while creating visitor',
          "Something went wrong!..",
          false,
          null,
          null,
        );
      }
    } catch (err) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        'Error on creating visitor',
        err,
        'Error occured while creating visitor',
        "Something went wrong!..",
        false,
        null,
        null,
      );
    }
  }

  static visitorFormBuilder(
    BuildContext context,
    VisitorEntryFormScreenBody widget,
  ) {
    String? roleType = context.read<UserAuthorizationBloc>().state.roleType;
    ProofId? idProofType;
    String? type1 = widget.visitorDetail?.idProof?.type1;
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
    Query$Visitors$visitors$values? visitorDetail = widget.visitorDetail;
    return fb.group(
      <String, Object>{
        FieldConstant.VISITOR_TYPE: FormControl<VisitorType>(
          value: (visitorDetail?.type != null &&
                  visitorDetail?.type
                          .toString()
                          .split('.')
                          .last
                          .toLowerCase() ==
                      VisitorType.VENDOR
                          .toString()
                          .split('.')
                          .last
                          .toLowerCase())
              ? VisitorType.VENDOR
              : VisitorType.GENERAL,
          validators: [Validators.required],
        ),
        FieldConstant.FIRST_NAME: FormControl<String>(
          value: visitorDetail?.firstName,
          validators: [Validators.required],
        ),
        FieldConstant.EMAIL_ADDRESS: FormControl<String>(
          value: visitorDetail?.emailAddress,
          validators: [Validators.email],
        ),
        FieldConstant.PHONE_NUMBER: FormControl<String>(
          value: widget.phoneNumber != null
              ? widget.phoneNumber.toString().split('+91').last
              : visitorDetail?.phoneNumber,
          validators: [
            Validators.required,
            Validators.number,
            Validators.maxLength(10),
            Validators.minLength(10),
          ],
        ),
        FieldConstant.BUILDING_NAME: visitorDetail == null
            ? (roleType != AppConstant.RECEPTIONIST)
                ? FormControl<String>(
                    value: null,
                    validators: [Validators.required],
                  )
                : FormControl<String>(
                    value: null,
                  )
            : FormControl<String>(
                value: null,
              ),
        FieldConstant.BUILDING_ID: FormControl<String>(
          value: null,
        ),
        FieldConstant.COMPANY_NAME: visitorDetail == null
            ? FormControl<String>(
                value: null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value: null,
              ),
        FieldConstant.BLOCK_NAME: visitorDetail == null
            ? FormControl<String>(
                value: null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value: null,
              ),
        FieldConstant.FLOOR_NO: visitorDetail == null
            ? FormControl<String>(
                value: null,
                validators: [Validators.required, Validators.number],
              )
            : FormControl<String>(
                value: null,
              ),
        FieldConstant.ACCOUNT_FLOOR_ID: visitorDetail == null
            ? FormControl<String>(
                value: null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value: visitorDetail.accountFloorId,
              ),
        FieldConstant.COMING_FROM_PLACE: FormControl<String>(
          value: visitorDetail?.comingFrom?.placeName,
        ),
        FieldConstant.COMING_FROM_COMPANY: FormControl<String>(
          value: visitorDetail?.comingFrom?.companyName,
        ),
        FieldConstant.DATE: visitorDetail == null
            ? FormControl<String>(
                value: widget.meetingType == MeetingType.UNPLANNED
                    ? DateTime.now().format('yyyy-MM-dd').toString()
                    : null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value:
                    DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
                        .toLocal()
                        .format('yyyy-MM-dd'),
                validators: [Validators.required],
              ),
        FieldConstant.PROOF_ID: widget.phoneNumberVerified
            ? FormControl<ProofId>(
                value: idProofType,
              )
            : FormControl<ProofId>(
                value: idProofType,
                validators: [Validators.required],
              ),
        FieldConstant.PROOF_VALUE: widget.phoneNumberVerified
            ? FormControl<String>(
                value: visitorDetail?.idProof?.value1,
              )
            : FormControl<String>(
                value: visitorDetail?.idProof?.value1,
                validators: [Validators.required],
              ),
        FieldConstant.DISPLAY_TIME: visitorDetail == null
            ? FormControl<String>(
                value: widget.meetingType == MeetingType.UNPLANNED
                    ? DateTime.now().format('HH:mm:ss').toString()
                    : null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value:
                    DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
                        .toLocal()
                        .format('HH:mm:ss'),
              ),
        FieldConstant.TIME: visitorDetail == null
            ? FormControl<String>(
                value: widget.meetingType == MeetingType.UNPLANNED
                    ? DateTime.now().format('HH:mm:ss')
                    : null,
                validators: [Validators.required],
              )
            : FormControl<String>(
                value:
                    DateTime.parse(visitorDetail.visitingDate?.toString() ?? '')
                        .toLocal()
                        .format('HH:mm:ss'),
              ),
        FieldConstant.TOOLS: FormControl<String>(
          value: visitorDetail?.tools,
        ),
        FieldConstant.PURPOSE_OF_VISIT: FormControl<String>(
          value: visitorDetail?.purposeOfVisit,
        ),
        FieldConstant.NOTES: FormControl<String>(
          value: visitorDetail?.notes,
        ),
        FieldConstant.CHECK_IN_DATE: FormControl<String>(
          value: visitorDetail?.checkInDate != null
              ? visitorDetail?.checkInDate.toString()
              : (widget.meetingType == MeetingType.UNPLANNED)
                  ? DateTime.now().toUTC.toIso8601String()
                  : null,
        ),
        FieldConstant.PLANNED_VISIT: visitorDetail == null
            ? FormControl<bool>(
                value: widget.meetingType == MeetingType.PLANNED ? true : false,
              )
            : FormControl<bool>(value: visitorDetail.plannedVisit),
        FieldConstant.ID: FormControl<String>(
          value: visitorDetail?.id,
        ),
      },
    );
  }
}
