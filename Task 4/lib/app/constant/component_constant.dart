import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/data/constant/enum/vehicle_type.dart';
import 'package:skcl_vms/logic/bloc/theme/theme_bloc.dart';

InputDecoration underlineInputDecoration(
  BuildContext context,
) {
  return InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: 4 * SizeConfig.widthMultiplier),
    hintText: 'Enter OTP',
    enabledBorder: underlineInputBorder(context),
    focusedBorder: underlineInputBorder(context).copyWith(
      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
    ),
    errorBorder: underlineInputBorder(context).copyWith(
      borderSide: BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: underlineInputBorder(context).copyWith(
      borderSide: BorderSide(color: Colors.red),
    ),
    labelStyle: bodyText1.copyWith(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
    hintStyle: bodyText2.copyWith(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
  );
}

UnderlineInputBorder underlineInputBorder(BuildContext context) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
  );
}

BoxDecoration containerBoxDecoration(
  BuildContext context,
) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    border: Border.all(color: Color(0XFF00000029)),
    color: Theme.of(context).colorScheme.surface,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 1.0),
        blurRadius: 5.0,
      ),
    ],
  );
}

Center listViewNoRecordContainer(
    BuildContext context, IconData icon, String text) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
          size: SizeConfig.imageSizeMultiplier * 10,
        ),
        Text(
          text,
          style: subtitle1.copyWith(
            fontSize: 4.4 * SizeConfig.textMultiplier,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
          ),
        ),
      ],
    ),
  );
}

Container listViewNoMoreRecordContainer(
  BuildContext context,
) {
  return Container(
    width: double.infinity,
    height: SizeConfig.widthMultiplier * 10,
    child: Center(
      child: Text(
        'No more records',
        style: subtitle1.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    ),
  );
}

DropdownButtonFormField dropDownButton(
    BuildContext context,
    String? label,
    dynamic value,
    Function onChangedFunc,
    List<DropdownMenuItem<dynamic>> items) {
  return DropdownButtonFormField(
    decoration: InputDecoration(
      hintText: label,
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
    value: value,
    onChanged: (dynamic value) {
      onChangedFunc(value);
    },
    items: items,
  );
}

TextField textField(
  BuildContext context,
  String? labelText,
  TextEditingController textEditingController,
  Function(String?) onChangedFun,
  String? fieldErrorText,
  String? hintText,
  bool? isReadonly,
) {
  return TextField(
    keyboardType: TextInputType.name,
    cursorColor: Theme.of(context).colorScheme.primary,
    controller: textEditingController,
    style: subtitle2.copyWith(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
    ),
    onChanged: (String? value) {
      onChangedFun(value);
    },
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: fieldErrorText,
      labelStyle: bodyText1.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
      hintStyle: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
      contentPadding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 5,
        vertical: SizeConfig.widthMultiplier * 5,
      ),
    ),
    readOnly: isReadonly ?? false,
  );
}

TextFormField textFormField(
  BuildContext context,
  TextEditingController textEditingController,
  Function(String?) onChangedFun,
  String? Function(String?) validationFun,
  String? hintText,
  TextInputType? keyboardType,
  int? maxLength,
  bool? isReadonly,
) {
  return TextFormField(
    controller: textEditingController,
    keyboardType: keyboardType != null ? keyboardType : TextInputType.name,
    cursorColor: Theme.of(context).colorScheme.primary,
    maxLength: maxLength,
    style: subtitle2.copyWith(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
    ),
    onChanged: (String? value) {
      onChangedFun(value);
    },
    validator: validationFun,
    decoration: InputDecoration(
      errorStyle: bodyText2.copyWith(
        color: Theme.of(context).colorScheme.error,
        fontSize: 2.5 * SizeConfig.textMultiplier,
      ),
      hintText: hintText,
      labelStyle: bodyText1.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
      hintStyle: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
      contentPadding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 5,
        vertical: SizeConfig.widthMultiplier * 5,
      ),
    ),
    readOnly: isReadonly ?? false,
  );
}

Widget userProfilePicture(
  BuildContext context,
  File? imageFile,
  String? nameKeyWord,
) {
  if (imageFile != null) {
    return Center(
      child: Container(
        width: 33 * SizeConfig.widthMultiplier,
        height: 33 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: FileImage(imageFile),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  } else {
    return Center(
      child: Text(
        nameKeyWord ?? '',
        style: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: SizeConfig.widthMultiplier * 10,
        ),
      ),
    );
  }
}

Widget circleAvatar(
  BuildContext context,
  dynamic image,
  String? nameKeyword,
) {
  return BlocBuilder<ThemeBloc, ThemeState>(
    builder: (context, state) {
      return Container(
        width: 35 * SizeConfig.widthMultiplier,
        height: 35 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.primary,
          boxShadow: [
            BoxShadow(
              color: state.themeMode == ThemeMode.light
                  ? Colors.grey
                  : Theme.of(context).colorScheme.primary,
              offset: state.themeMode == ThemeMode.light
                  ? Offset(0.0, 2.0)
                  : Offset(0.0, 0.0),
              blurRadius: state.themeMode == ThemeMode.light ? 4.0 : 0,
            ),
          ],
        ),
        child: userProfilePicture(
          context,
          image,
          nameKeyword,
        ),
      );
    },
  );
}

Widget circleImage(
  BuildContext context,
) {
  return Center(
    child: Container(
      width: 35 * SizeConfig.widthMultiplier,
      height: 35 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primary,
        // image: DecorationImage(
        //   image: AssetImage(appConfig.initialProfileImage),
        //   fit: BoxFit.fill,
        // ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            offset: Offset(0.0, 2.0),
            blurRadius: 4.0,
          ),
        ],
      ),
    ),
  );
}

Widget makeDismissible(
        {required BuildContext context, required Widget child}) =>
    GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: child,
    );

Map<String, IconData> vehicleCategories() {
  return {
    VehicleType.BIKE.toString().split('.').last: Icons.electric_bike_rounded,
    VehicleType.AUTO.toString().split('.').last:
        Icons.electric_rickshaw_rounded,
    VehicleType.CAR.toString().split('.').last: Icons.electric_car_rounded,
  };
}

List<Widget> rangeSliderLabelBuilder<M>(
        List<M> models, Widget Function(int index, M model) builder) =>
    models
        .asMap()
        .map<int, Widget>(
            (index, model) => MapEntry(index, builder(index, model)))
        .values
        .toList();

Widget mainListSepereatedLine(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.widthMultiplier * 4,
    ),
    child: Divider(
      height: 1,
      color: Theme.of(context).colorScheme.primary,
      thickness: SizeConfig.widthMultiplier * 0.2,
    ),
  );
}
