import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/utility/company_list_utility.dart';
import 'package:skcl_vms/presentation/company_list/widgets/filter_component.dart';

const String fileName =
    'company_detail.widgets.company_detail_filter_screen.dart';

class CompanyListFilterScreen extends StatefulWidget {
  const CompanyListFilterScreen({Key? key}) : super(key: key);

  @override
  State<CompanyListFilterScreen> createState() => _CompanyListFilterScreen();
}

class _CompanyListFilterScreen extends State<CompanyListFilterScreen> {
  FormGroup buildForm() {
    return fb.group(
      <String, Object>{
        FieldConstant.BUILDING_NAME: FormControl<String>(
          value: null,
        ),
        FieldConstant.BUILDING_ID: FormControl<String>(
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
    return BlocListener<CompanyListFilterBloc, CompanyListFilterState>(
      listener: (context, state) {
        CompanyListUtility.errorHandler(context, state, fileName);
        CompanyListUtility.successHandler(context, state);
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
                  return BlocBuilder<CompanyListFilterBloc,
                      CompanyListFilterState>(
                    builder: (context, state) {
                      formGroup.control(FieldConstant.BUILDING_NAME).value =
                          state.placeNameFilter;
                      formGroup.control(FieldConstant.BUILDING_ID).value =
                          state.placeIdFilter;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.5),
                                  width: SizeConfig.widthMultiplier * 0.28,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
