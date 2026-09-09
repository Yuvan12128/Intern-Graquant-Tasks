import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/text_field_container.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/account/account_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/account_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/block_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/floor_utility.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/visitor_entry_utility.dart';

const String fileName =
    'visitor_entry_form.widgets.visitor_entry_form_utility_widgets.dart';

class VisitorEntryFormUtilityWidgets {
  static List<Widget> visitorCategoryDropDown(
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
  ) {
    return [
      ...headerContainer(context, header),
      ReactiveDropdownField(
        hint: Text(
          header,
          style: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
        ),
        formControlName: formControllerName,
        decoration: InputDecoration(
          errorStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.error,
            fontSize: 2.5 * SizeConfig.textMultiplier,
          ),
          labelStyle: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
          hintStyle: bodyText2.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 5,
            vertical: SizeConfig.widthMultiplier * 5,
          ),
        ),
        isExpanded: true,
        iconEnabledColor: Theme.of(context).primaryColor,
        iconSize: 5 * SizeConfig.widthMultiplier,
        items: VisitorEntryFormUtility.visitorTypeDropDownMenuItems(context),
        validationMessages: {
          ValidationMessage.required: (control) =>
              'The visitor category must not be empty',
        },
      ),
      SizedBox(
        height: SizeConfig.widthMultiplier * 4,
      ),
    ];
  }

  static List<Widget> dateAndTimeWidgets(
    BuildContext context,
    FormGroup formGroup,
  ) {
    return [
      ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
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
        null,
      ),
      ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
        context,
        'Time',
        formGroup,
        FieldConstant.TIME,
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
            formGroup.control(FieldConstant.DISPLAY_TIME).value =
                pickedTime.format(context);
            formGroup.control(FieldConstant.TIME).value =
                "${pickedTime.hour.toString()}:${pickedTime.minute.toString()}";
            formGroup.control(FieldConstant.TIME).markAsTouched();
            formGroup.control(FieldConstant.DISPLAY_TIME).markAsTouched();
          }
        },
        null,
      ),
    ];
  }

  static List<Widget> reactiveFormTextField(
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
  ) {
    return [
      ...headerContainer(context, header),
      ReactiveTextField(
        keyboardType: keyboardType != null ? keyboardType : TextInputType.name,
        validationMessages: validationMessages,
        maxLength: maxLength,
        formControlName: formControllerName,
        style: subtitle2.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
        ),
        decoration: InputDecoration(
          errorStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.error,
            fontSize: 2.5 * SizeConfig.textMultiplier,
          ),
          hintText: header,
          labelStyle: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
          hintStyle: bodyText2.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 5,
            vertical: SizeConfig.widthMultiplier * 5,
          ),
          prefixIcon: prefixIcon != null ? prefixIcon : null,
        ),
        onTap: onPress,
        readOnly: readOnly ?? false,
      ),
      SizedBox(
        height: SizeConfig.widthMultiplier * 4,
      ),
    ];
  }

  static Widget placeNameTextField(
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
  ) {
    return BlocListener<PlaceFormBloc, PlaceFormState>(
      listener: (context, state) async {
        try {
          await PlaceUtility.placeBlocListenerUtility(
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
            'placeNameTextField',
            err,
            'Error occured while getting building name list',
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
          ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
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
          ),
        ],
      ),
    );
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
          ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
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
          ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...VisitorEntryFormUtilityWidgets.reactiveFormTextField(
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
          ),
        ],
      ),
    );
  }
}
