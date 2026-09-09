import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/reactive_form_field.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/account/account_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form/visitor_form_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form_add_update/visitor_form_add_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/visitor_entry_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/widgets/visitor_entry_form_utility_widgets.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

const String fileName =
    'visitor_entry_form.widgets.visitor_entry_screen_body.dart';

class VisitorEntryFormScreenBody extends StatefulWidget {
  final MeetingType? meetingType;
  final String? phoneNumber;
  final bool phoneNumberVerified;
  final Query$Visitors$visitors$values? visitorDetail;
  VisitorEntryFormScreenBody({
    Key? key,
    required this.meetingType,
    this.phoneNumber,
    required this.phoneNumberVerified,
    this.visitorDetail,
  }) : super(key: key);

  @override
  _VisitorEntryFormScreenBodyState createState() =>
      _VisitorEntryFormScreenBodyState();
}

class _VisitorEntryFormScreenBodyState
    extends State<VisitorEntryFormScreenBody> {
  @override
  void initState() {
    super.initState();
    context
        .read<VisitorFormBloc>()
        .add(VisitorFormEntryShowBuildingTextFieldEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  FormGroup buildForm() {
    return VisitorEntryFormUtility.visitorFormBuilder(context, widget);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.heightMultiplier * 4,
            horizontal: SizeConfig.widthMultiplier * 7,
          ),
          child: ReactiveFormBuilder(
            form: buildForm,
            builder: (context, formGroup, child) {
              return BlocListener<VisitorFormAddUpdateBloc,
                  VisitorFormAddUpdateState>(
                listener: (context, visitorFormAddstate) {
                  VisitorEntryFormUtility.visitorFormAddBlocListener(
                    context,
                    visitorFormAddstate,
                  );
                },
                child: BlocConsumer<VisitorFormBloc, VisitorFormState>(
                    listener: (context, visitorFormstate) {
                  VisitorEntryFormUtility.visitorFormBlocListener(
                    context,
                    visitorFormstate,
                    formGroup,
                  );
                }, builder: (context, visitorFormstate) {
                  return BlocBuilder<UserAuthorizationBloc,
                      UserAuthorizationState>(
                    builder: (context, userAuthorizationState) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...reactiveFormDropDown(
                            context,
                            'Visitor Type',
                            formGroup,
                            FieldConstant.VISITOR_TYPE,
                            VisitorEntryFormUtility
                                .visitorTypeDropDownMenuItems(
                              context,
                            ),
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  'The visitor category must not be empty',
                            },
                            null,
                            null,
                            true,
                            true,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Full Name',
                            formGroup,
                            FieldConstant.FIRST_NAME,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            true,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Email Address',
                            formGroup,
                            FieldConstant.EMAIL_ADDRESS,
                            TextInputType.emailAddress,
                            null,
                            {
                              ValidationMessage.email: (control) =>
                                  "Please enter a valid email address"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Mobile Number',
                            formGroup,
                            FieldConstant.PHONE_NUMBER,
                            TextInputType.phone,
                            10,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field",
                              ValidationMessage.maxLength: (control) =>
                                  "Please enter a valid mobile number",
                              ValidationMessage.minLength: (control) =>
                                  "Please enter a valid mobile number",
                              ValidationMessage.number: (control) =>
                                  "Please enter a valid mobile number"
                            },
                            null,
                            null,
                            widget.phoneNumber != null ? true : false,
                            true,
                          ),
                          if (widget.visitorDetail == null &&
                              visitorFormstate.showBuildingTextField) ...[
                            PlaceUtility.placeNameTextField(
                              context,
                              'Building Name',
                              formGroup,
                              FieldConstant.BUILDING_NAME,
                              null,
                              null,
                              {
                                ValidationMessage.required: (control) =>
                                    "Mandatory field",
                              },
                              null,
                              (FormControl<Object?> control) {
                                formGroup
                                    .control(FieldConstant.BUILDING_ID)
                                    .reset();
                                formGroup
                                    .control(FieldConstant.BUILDING_NAME)
                                    .reset();
                                formGroup
                                    .control(FieldConstant.COMPANY_NAME)
                                    .reset();
                                formGroup
                                    .control(FieldConstant.BLOCK_NAME)
                                    .reset();
                                formGroup
                                    .control(FieldConstant.FLOOR_NO)
                                    .reset();
                                context.read<VisitorFormBloc>().add(
                                      VisitorFormEntryShowFloorTextFieldEvent(
                                        showFloorTextField: false,
                                      ),
                                    );
                                context.read<VisitorFormBloc>().add(
                                      VisitorFormEntryShowBlockTextFieldEvent(
                                        showBlockTextField: false,
                                      ),
                                    );
                                context.read<PlaceFormBloc>().add(
                                      GetPlaceFormEvent(
                                        accountId:
                                            userAuthorizationState.accountId,
                                        roleType:
                                            userAuthorizationState.roleType,
                                      ),
                                    );
                              },
                              true,
                              true,
                            ),
                          ],
                          if (widget.visitorDetail == null) ...[
                            VisitorEntryFormUtilityWidgets.accountNameTextField(
                              context,
                              'Company Name',
                              formGroup,
                              FieldConstant.COMPANY_NAME,
                              null,
                              null,
                              {
                                ValidationMessage.required: (control) =>
                                    "Mandatory field",
                              },
                              null,
                              (FormControl<Object?> control) {
                                context.read<VisitorFormBloc>().add(
                                      VisitorFormEntryShowFloorTextFieldEvent(
                                        showFloorTextField: false,
                                      ),
                                    );
                                context.read<VisitorFormBloc>().add(
                                      VisitorFormEntryShowBlockTextFieldEvent(
                                        showBlockTextField: false,
                                      ),
                                    );
                                if (userAuthorizationState.roleType ==
                                    AppConstant.RECEPTIONIST) {
                                  String? buildingName = formGroup
                                      .control(FieldConstant.BUILDING_NAME)
                                      .value;
                                  context.read<AccountNameBloc>().add(
                                        AccountNameRequestedEvent(
                                          accountId:
                                              userAuthorizationState.accountId,
                                          buildingName: buildingName,
                                        ),
                                      );
                                } else {
                                  String? formGroupBuildingId = formGroup
                                      .control(FieldConstant.BUILDING_ID)
                                      .value;
                                  String? formGroupBuildingName = formGroup
                                      .control(FieldConstant.BUILDING_NAME)
                                      .value;
                                  String? buildingId =
                                      visitorFormstate.buildingId != null
                                          ? visitorFormstate.buildingId
                                          : formGroupBuildingId;
                                  String? buildingName =
                                      visitorFormstate.buildingName != null
                                          ? visitorFormstate.buildingName
                                          : formGroupBuildingName;
                                  if (buildingId != null &&
                                      buildingId.length > 0 &&
                                      buildingName != null) {
                                    context.read<AccountNameBloc>().add(
                                          AccountNameRequestedEvent(
                                            buildingId: buildingId,
                                            buildingName: buildingName,
                                          ),
                                        );
                                  } else {
                                    EasyLoading.showInfo(
                                        'Please choose building name');
                                  }
                                }
                              },
                              true,
                              true,
                            ),
                          ],
                          if (widget.visitorDetail == null &&
                              visitorFormstate.showBlockTextField) ...[
                            VisitorEntryFormUtilityWidgets.blockNameTextField(
                              context,
                              'Block Name',
                              formGroup,
                              FieldConstant.BLOCK_NAME,
                              null,
                              null,
                              {
                                ValidationMessage.required: (control) =>
                                    "Mandatory field",
                              },
                              null,
                              (FormControl<Object?> control) {
                                String? companyName = formGroup
                                    .control(FieldConstant.COMPANY_NAME)
                                    .value;
                                if (companyName != null &&
                                    companyName.length > 0) {
                                  context
                                      .read<BlockNameBloc>()
                                      .add(BlockNameRequestedEvent());
                                } else {
                                  EasyLoading.showInfo(
                                      'Please choose company name');
                                }
                              },
                              true,
                              true,
                            ),
                          ],
                          if (widget.visitorDetail == null &&
                              visitorFormstate.showFloorTextField) ...[
                            VisitorEntryFormUtilityWidgets.floorNoTextField(
                              context,
                              'Floor No',
                              formGroup,
                              FieldConstant.FLOOR_NO,
                              null,
                              null,
                              {
                                ValidationMessage.required: (control) =>
                                    "Mandatory field",
                              },
                              null,
                              (FormControl<Object?> control) {
                                String? blockName = formGroup
                                    .control(FieldConstant.BLOCK_NAME)
                                    .value;
                                if (blockName != null && blockName.length > 0) {
                                  context
                                      .read<FloorNameBloc>()
                                      .add(FloorNameRequestedEvent());
                                } else {
                                  EasyLoading.showInfo(
                                      'Please choose block name');
                                }
                              },
                              true,
                              true,
                            ),
                          ],
                          ...reactiveFormTextField(
                            context,
                            'From Company',
                            formGroup,
                            FieldConstant.COMING_FROM_COMPANY,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'From Place',
                            formGroup,
                            FieldConstant.COMING_FROM_PLACE,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          ...reactiveFormDropDown(
                            context,
                            'Id Proof Type',
                            formGroup,
                            FieldConstant.PROOF_ID,
                            VisitorEntryFormUtility.proofTypeDropDownMenuItems(
                              context,
                            ),
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  'Mandatory Field',
                            },
                            null,
                            null,
                            true,
                            widget.phoneNumberVerified ? false : true,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Id Proof No',
                            formGroup,
                            FieldConstant.PROOF_VALUE,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            widget.phoneNumberVerified ? false : true,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Purpose of visit',
                            formGroup,
                            FieldConstant.PURPOSE_OF_VISIT,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Notes',
                            formGroup,
                            FieldConstant.NOTES,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          ...reactiveFormTextField(
                            context,
                            'Tools',
                            formGroup,
                            FieldConstant.TOOLS,
                            null,
                            null,
                            {
                              ValidationMessage.required: (control) =>
                                  "Mandatory field"
                            },
                            null,
                            null,
                            null,
                            false,
                          ),
                          if (widget.visitorDetail != null ||
                              widget.meetingType == MeetingType.PLANNED) ...[
                            ...VisitorEntryFormUtilityWidgets
                                .dateAndTimeWidgets(
                              context,
                              formGroup,
                            ),
                          ],
                          SizedBox(height: SizeConfig.heightMultiplier * 13),
                          Center(
                            child: CustomFlatButton(
                              onpress: () async {
                                VisitorEntryFormUtility.addVisitor(
                                    context,
                                    formGroup,
                                    widget.visitorDetail == null
                                        ? 'Add'
                                        : "Update");
                              },
                              widget: Text(
                                widget.visitorDetail == null ? 'Add' : "Update",
                                style: subtitle1.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontSize: 4.5 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
