// import 'package:flutter/material.dart';
// import 'package:interval_time_picker/interval_time_picker.dart';

// import 'package:skcl_vmstor_mobile_app/app/component/typography.dart';
// import 'package:skcl_vms/app/constant/size_config.dart';

// class CustomTimePicker extends StatelessWidget {
//   const CustomTimePicker({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.validationFun,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final String hintText;
//   final String? Function(String?) validationFun;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: SizeConfig.heightMultiplier * 12,
//       width: SizeConfig.screenWidth / 2,
//       child: TextFormField(
//         controller: controller,
//         decoration: outlinelineInputDecoration(context, hintText),
//         readOnly: true,
//         validator: validationFun,
//         onTap: () async {
//           TimeOfDay? newSelectedTime = await showIntervalTimePicker(
//             context: context,
//             initialTime: TimeOfDay(hour: 0, minute: 0),
//             interval: 15,
//             visibleStep: VisibleStep.fifteenths,
//           );
//           if (newSelectedTime != null) {
//             String selectTime = newSelectedTime.format(context);
//             controller.text = selectTime;
//           }
//         },
//       ),
//     );
//   }
// }

// InputDecoration outlinelineInputDecoration(
//   BuildContext context,
//   String hintText,
// ) {
//   return InputDecoration(
//     hintText: hintText,
//     border: outlineInputBorder(context),
//     enabledBorder: outlineInputBorder(context),
//     focusedBorder: outlineInputBorder(context).copyWith(
//       borderSide: BorderSide(
//         color: Theme.of(context).colorScheme.primary,
//         width: 1,
//       ),
//     ),
//     errorBorder: outlineInputBorder(context).copyWith(
//       borderSide: BorderSide(
//         color: Colors.red,
//         width: 1,
//       ),
//     ),
//     errorStyle: subtitle2.copyWith(
//       color: Theme.of(context).colorScheme.error,
//       fontSize: 3.5 * SizeConfig.textMultiplier,
//       wordSpacing: 2,
//     ),
//     hintStyle: bodyText1.copyWith(
//       color: Theme.of(context).colorScheme.secondary,
//       fontSize: 4.0 * SizeConfig.textMultiplier,
//     ),
//     filled: true,
//     fillColor: Theme.of(context).colorScheme.surface,
//     contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//     suffixIcon: Icon(
//       Icons.schedule,
//     ),
//   );
// }

// OutlineInputBorder outlineInputBorder(BuildContext context) {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(5)),
//     borderSide: BorderSide(
//       color: Theme.of(context).colorScheme.primary,
//       width: 1,
//     ),
//   );
// }
