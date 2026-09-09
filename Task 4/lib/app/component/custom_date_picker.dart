import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validationFun,
    required this.isFilter,
    this.onPress,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validationFun;
  final bool isFilter;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 12,
      width: SizeConfig.screenWidth / 2,
      child: TextFormField(
        controller: controller,
        decoration: outlinelineInputDecoration(context, hintText),
        readOnly: true,
        validator: validationFun,
        onTap: onPress != null
            ? onPress
            : () async {
                DateTime? newSelectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: isFilter ? DateTime(2000) : DateTime.now(),
                  lastDate: isFilter
                      ? DateTime.now()
                      : DateTime(
                          DateTime.now().year,
                          DateTime.now().month,
                          DateTime.now().day + 6,
                        ),
                );
                if (newSelectedDate != null) {
                  final String formatDate =
                      DateTime.parse(newSelectedDate.toString())
                          .format('yyyy-MM-dd')
                          .toString();
                  controller.text = formatDate;
                }
              },
      ),
    );
  }
}

InputDecoration outlinelineInputDecoration(
  BuildContext context,
  String hintText,
) {
  return InputDecoration(
    hintText: hintText,
    border: outlineInputBorder(context),
    enabledBorder: outlineInputBorder(context),
    focusedBorder: outlineInputBorder(context).copyWith(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
        width: 1,
      ),
    ),
    errorBorder: outlineInputBorder(context).copyWith(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
    ),
    errorStyle: subtitle2.copyWith(
      color: Theme.of(context).colorScheme.error,
      fontSize: 3.5 * SizeConfig.textMultiplier,
      wordSpacing: 2,
    ),
    hintStyle: bodyText1.copyWith(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 4.0 * SizeConfig.textMultiplier,
    ),
    filled: true,
    fillColor: Theme.of(context).colorScheme.background,
    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
    prefixIcon: Icon(
      Icons.date_range,
    ),
  );
}

OutlineInputBorder outlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Theme.of(context).colorScheme.secondary,
      width: 1,
    ),
  );
}
