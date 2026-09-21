import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/presentation/setting_page/bloc/place_setting_name/place_setting_name_bloc.dart';
import 'package:skcl_vms/presentation/setting_page/utility/setting_utility.dart';

const String fileName =
    'visitor_entry_form.widgets.visitor_entry_screen_body.dart';

class SettingScreenBody extends StatefulWidget {
  SettingScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  _SettingScreenBodyState createState() => _SettingScreenBodyState();
}

class _SettingScreenBodyState extends State<SettingScreenBody> {
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
    context.read<PlaceSettingNameBloc>().add(GetPlaceSettingNameEvent());
  }

  @override
  void dispose() {
    super.dispose();
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
              return BlocListener<PlaceSettingNameBloc, PlaceSettingNameState>(
                listener: (context, state) {
                  SettingUtility.placeNameBlocListener(
                    context,
                    state,
                    formGroup,
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Configure this device for a Building',
                        style: subtitle1.copyWith(
                          fontSize: 4.5 * SizeConfig.textMultiplier,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.widthMultiplier * 10,
                    ),
                    PlaceUtility.placeNameTextField(
                      context,
                      'Building Name',
                      formGroup,
                      FieldConstant.BUILDING_NAME,
                      null,
                      null,
                      null,
                      null,
                      (FormControl<Object?> control) {
                        context.read<PlaceFormBloc>().add(GetPlaceFormEvent());
                      },
                      false,
                      false,
                    ),
                    SizedBox(height: SizeConfig.heightMultiplier * 47),
                    Center(
                      child: CustomFlatButton(
                        onpress: () async {
                          SettingUtility.updateSetting(context, formGroup);
                        },
                        widget: Text(
                          'Update',
                          style: subtitle1.copyWith(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 4.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
