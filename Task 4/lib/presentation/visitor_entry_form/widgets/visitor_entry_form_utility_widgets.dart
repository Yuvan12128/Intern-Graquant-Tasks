import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/reactive_form_field.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/account/account_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/account_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/block_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/floor_utility.dart';

const String fileName =
    'visitor_entry_form.widgets.visitor_entry_form_utility_widgets.dart';

class VisitorEntryFormUtilityWidgets {
  static List<Widget> dateAndTimeWidgets(
    BuildContext context,
    FormGroup formGroup,
  ) {
    return [
      ...reactiveFormTextField(
        context,
        'Date',
        formGroup,
        FieldConstant.DATE,
        null,
        null,
        {
          ValidationMessage.required: (control) => "Mandatory field",
        },
        Icon(
          Icons.date_range,
        ),
        (FormControl<Object?> control) async {
          DateTime? newSelectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day + 7,
            ),
          );
          if (newSelectedDate != null) {
            final String formatDate = DateTime.parse(newSelectedDate.toString())
                .format('yyyy-MM-dd')
                .toString();
            formGroup.control(FieldConstant.DATE).value = formatDate;
            formGroup.control(FieldConstant.DATE).markAsTouched();
          }
        },
        true,
        true,
      ),
      ...reactiveFormTextField(
        context,
        'Time',
        formGroup,
        FieldConstant.DISPLAY_TIME,
        null,
        null,
        {
          ValidationMessage.required: (control) => "Mandatory field",
        },
        Icon(
          Icons.date_range,
        ),
        (FormControl<Object?> control) async {
          TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: 12, minute: 00),
          );
          if (pickedTime != null) {
            String pickedHour = pickedTime.hour.toString();
            String pickedMinute = pickedTime.minute.toString();
            formGroup.control(FieldConstant.DISPLAY_TIME).value =
                pickedTime.format(context);
            formGroup.control(FieldConstant.TIME).value =
                "${pickedHour.length == 2 ? pickedHour : '0$pickedHour'}:${pickedMinute.length == 2 ? pickedMinute : '0$pickedMinute'}";
            formGroup.control(FieldConstant.TIME).markAsTouched();
            formGroup.control(FieldConstant.DISPLAY_TIME).markAsTouched();
          }
        },
        true,
        true,
      ),
    ];
  }

  static Widget accountNameTextField(
    BuildContext context,
    String header,
    FormGroup formGroup,
    String formControllerName,
    TextInputType? keyboardType,
    int? maxLength,
    Map<String, ValidationMessageFunction>? validationMessages,
    Widget? prefixIcon,
    Function(FormControl<Object?> control)? onPress,
    bool? readOnly,
    bool mandatoryField,
  ) {
    return BlocListener<AccountNameBloc, AccountNameState>(
      listener: (context, state) async {
        try {
          await AccountUtility.accountBlocListenerUtility(
            context,
            state,
            header,
            formGroup,
          );
        } catch (err) {
          EasyLoading.dismiss();
          Log.error(
            context,
            fileName,
            'accountNameTextField',
            err,
            'Error occured while getting company name list',
            "Something went wrong!..",
            false,
            null,
            null,
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...reactiveFormTextField(
            context,
            header,
            formGroup,
            formControllerName,
            keyboardType,
            maxLength,
            validationMessages,
            prefixIcon,
            onPress,
            readOnly,
            mandatoryField,
          ),
        ],
      ),
    );
  }

  static Widget blockNameTextField(
    BuildContext context,
    String header,
    FormGroup formGroup,
    String formControllerName,
    TextInputType? keyboardType,
    int? maxLength,
    Map<String, ValidationMessageFunction>? validationMessages,
    Widget? prefixIcon,
    Function(FormControl<Object?> control)? onPress,
    bool? readOnly,
    bool mandatoryField,
  ) {
    return BlocListener<BlockNameBloc, BlockNameState>(
      listener: (context, state) async {
        try {
          await BlockUtility.blockBlocListenerUtility(
            context,
            state,
            header,
            formGroup,
          );
        } catch (err) {
          EasyLoading.dismiss();
          Log.error(
            context,
            fileName,
            'blockNameTextField',
            err,
            'Error occured while getting block name list',
            "Something went wrong!..",
            false,
            null,
            null,
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...reactiveFormTextField(
            context,
            header,
            formGroup,
            formControllerName,
            keyboardType,
            maxLength,
            validationMessages,
            prefixIcon,
            onPress,
            readOnly,
            mandatoryField,
          ),
        ],
      ),
    );
  }

  static Widget floorNoTextField(
    BuildContext context,
    String header,
    FormGroup formGroup,
    String formControllerName,
    TextInputType? keyboardType,
    int? maxLength,
    Map<String, ValidationMessageFunction>? validationMessages,
    Widget? prefixIcon,
    Function(FormControl<Object?> control)? onPress,
    bool? readOnly,
    bool mandatoryField,
  ) {
    return BlocListener<FloorNameBloc, FloorNameState>(
      listener: (context, state) async {
        try {
          await FloorUtility.floorBlocListenerUtility(
            context,
            state,
            header,
            formGroup,
          );
        } catch (err) {
          EasyLoading.dismiss();
          Log.error(
            context,
            fileName,
            'floorNoTextField',
            err,
            'Error occured while getting floor no list',
            "Something went wrong!..",
            false,
            null,
            null,
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...reactiveFormTextField(
            context,
            header,
            formGroup,
            formControllerName,
            keyboardType,
            maxLength,
            validationMessages,
            prefixIcon,
            onPress,
            readOnly,
            mandatoryField,
          ),
        ],
      ),
    );
  }
}
