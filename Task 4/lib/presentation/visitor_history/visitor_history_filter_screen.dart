import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/component/reactive_form_field.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/account_utility.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/account/account_form_bloc.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/filter/visitor_history_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/utility/visitor_history_utility.dart';
import 'package:skcl_vms/presentation/visitor_history/widgets/filter_component.dart';

const String fileName = 'visitor_history.visitor_history_filter.dart';

class VisitorHistoryFilterScreen extends StatefulWidget {
  const VisitorHistoryFilterScreen({Key? key}) : super(key: key);

  @override
  State<VisitorHistoryFilterScreen> createState() =>
      _VisitorHistoryFilterScreen();
}

class _VisitorHistoryFilterScreen extends State<VisitorHistoryFilterScreen> {
  FormGroup buildForm() {
    return fb.group(
      <String, Object>{
        FieldConstant.BUILDING_NAME: FormControl<String>(
          value: null,
        ),
        FieldConstant.BUILDING_ID: FormControl<String>(
          value: null,
        ),
        FieldConstant.COMPANY_ID: FormControl<String>(
          value: null,
        ),
        FieldConstant.COMPANY_NAME: FormControl<String>(
          value: null,
        ),
        FieldConstant.VISITOR_TYPE: FormControl<VisitorType>(
          value: null,
        ),
        FieldConstant.MEETING_TYPE: FormControl<MeetingType>(
          value: null,
        ),
        FieldConstant.DATE: FormControl<String>(
          value: null,
        ),
        FieldConstant.START_DATE: FormControl<String>(
          value: null,
        ),
        FieldConstant.END_DATE: FormControl<String>(
          value: null,
        ),
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VisitorHistoryFilterBloc, VisitorHistoryFilterState>(
      listener: (context, state) {
        VisitorHistoryUtility.errorHandler(context, state, fileName);
        VisitorHistoryUtility.successHandler(context, state);
      },
      child: Scaffold(
        appBar: CustomAppBar.appBar(
          context,
          'Filter',
          true,
          null,
          null,
          true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 4,
                horizontal: SizeConfig.widthMultiplier * 7,
              ),
              child: ReactiveFormBuilder(
                form: buildForm,
                builder: (context, formGroup, child) {
                  return BlocBuilder<VisitorHistoryFilterBloc,
                      VisitorHistoryFilterState>(
                    builder: (context, state) {
                      formGroup.control(FieldConstant.BUILDING_NAME).value =
                          state.placeNameFilter;
                      formGroup.control(FieldConstant.BUILDING_ID).value =
                          state.placeIdFilter;
                      formGroup.control(FieldConstant.COMPANY_NAME).value =
                          state.accountNameFilter;
                      formGroup.control(FieldConstant.COMPANY_ID).value =
                          state.accountIdFilter;
                      formGroup.control(FieldConstant.MEETING_TYPE).value =
                          state.meetingTypeFilter;
                      formGroup.control(FieldConstant.VISITOR_TYPE).value =
                          state.visitorTypeFilter;
                      formGroup.control(FieldConstant.START_DATE).value =
                          state.startDate ??
                              DateTime.now().format('yyyy-MM-dd');
                      formGroup.control(FieldConstant.END_DATE).value =
                          state.endDate ?? DateTime.now().format('yyyy-MM-dd');
                      formGroup.control(FieldConstant.DATE).value =
                          "${formGroup.control(FieldConstant.START_DATE).value} - ${formGroup.control(FieldConstant.END_DATE).value}";
                      return BlocConsumer<UserAuthorizationBloc,
                          UserAuthorizationState>(
                        listener: (context, state) {
                          UserAuthorizationListener.userAuthorizationListener(
                            context,
                            state,
                          );
                        },
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (state.roleType !=
                                  AppConstant.RECEPTIONIST) ...[
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
                                    context
                                        .read<PlaceFormBloc>()
                                        .add(GetPlaceFormEvent());
                                  },
                                  true,
                                  false,
                                ),
                              ],
                              if (state.roleType !=
                                  AppConstant.RECEPTIONIST) ...[
                                AccountUtility.accountNameTextField(
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
                                    context.read<AccountFormBloc>().add(
                                          GetAccountFormEvent(
                                            formGroup: formGroup,
                                          ),
                                        );
                                  },
                                  true,
                                ),
                              ],
                              ...reactiveFormTextField(
                                context,
                                'Date Range',
                                formGroup,
                                FieldConstant.DATE,
                                null,
                                null,
                                null,
                                Icon(
                                  Icons.date_range,
                                ),
                                FilterComponent.dateRangeFilterFunctionBuilder(
                                  context,
                                  formGroup,
                                ),
                                true,
                                false,
                              ),
                              ...reactiveFormDropDown(
                                context,
                                'Meeting Type',
                                formGroup,
                                FieldConstant.MEETING_TYPE,
                                VisitorHistoryUtility
                                    .meetingTypeDropDownMenuItems(
                                  context,
                                ),
                                null,
                                null,
                                null,
                                null,
                                null,
                                true,
                                false,
                              ),
                              ...reactiveFormDropDown(
                                context,
                                'Visitor Type',
                                formGroup,
                                FieldConstant.VISITOR_TYPE,
                                VisitorHistoryUtility
                                    .visitorTypeDropDownMenuItems(
                                  context,
                                ),
                                null,
                                null,
                                null,
                                null,
                                null,
                                true,
                                false,
                              ),
                              SizedBox(
                                height:
                                    state.roleType != AppConstant.RECEPTIONIST
                                        ? SizeConfig.heightMultiplier * 6
                                        : SizeConfig.heightMultiplier * 32,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary
                                          .withValues(alpha: 0.5),
                                      width: SizeConfig.widthMultiplier * 0.28,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FilterComponent.clearAllButton(
                                    context,
                                    formGroup,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 2,
                                  ),
                                  FilterComponent.filterOkButton(
                                    context,
                                    formGroup,
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
