import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_check_box.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CheckBoxFilter extends StatefulWidget {
  const CheckBoxFilter({
    Key? key,
    required this.title,
    this.firstCheckBox,
    this.secondCheckBox,
    this.thirdCheckBox,
  }) : super(key: key);

  final String title;
  final String? firstCheckBox;
  final String? secondCheckBox;
  final String? thirdCheckBox;

  @override
  State<CheckBoxFilter> createState() => _CheckBoxFilterState();
}

class _CheckBoxFilterState extends State<CheckBoxFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 15.0,
          ),
          child: Text(
            widget.title,
            style: headline6.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCheckBox(
                textValue: widget.firstCheckBox,
                value: false,
              ),
              SizedBox(
                width: 10 * SizeConfig.widthMultiplier,
              ),
              CustomCheckBox(
                textValue: widget.secondCheckBox,
                value: false,
              ),
              SizedBox(
                width: 10 * SizeConfig.widthMultiplier,
              ),
              CustomCheckBox(
                textValue: widget.thirdCheckBox,
                value: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
