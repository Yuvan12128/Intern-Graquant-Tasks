import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({
    Key? key,
    this.textValue,
    required this.value,
  }) : super(key: key);

  final String? textValue;
  bool value;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBox();
}

class _CustomCheckBox extends State<CustomCheckBox> {
  String? currentType;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.textValue != null) ...[
          Container(
            width: 8 * SizeConfig.widthMultiplier,
            height: 8 * SizeConfig.widthMultiplier,
            child: CheckboxListTile(
              checkColor: Colors.white,
              value: widget.value,
              onChanged: (bool? value) {
                setState(() {
                  widget.value = value!;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              widget.textValue!,
              style: bodyText2.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ]
      ],
    );
  }
}
