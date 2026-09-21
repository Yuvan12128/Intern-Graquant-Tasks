import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.maxLength,
    this.cursorColor,
    this.inputFormatters,
    this.hintText,
    this.prefixIcon,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusNode,
    this.validationFun,
    this.textAlign,
  }) : super(key: key);

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Color? cursorColor;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final Widget? prefixIcon;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final FocusNode? focusNode;
  final String? Function(String?)? validationFun;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlign: textAlign != null ? textAlign! : TextAlign.start,
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        keyboardType: keyboardType,
        maxLength: maxLength,
        cursorColor: cursorColor,
        inputFormatters: inputFormatters,
        validator: validationFun,
        style: subtitle1.copyWith(
            fontSize: 4.5 * SizeConfig.textMultiplier,
            color: Theme.of(context).colorScheme.secondary),
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          hintStyle: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
          errorStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.error,
            fontSize: 2.5 * SizeConfig.textMultiplier,
          ),
          counterStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 2.3 * SizeConfig.textMultiplier,
          ),
        ),
      ),
    );
  }
}

class CustomUnderlineInputBorder {
  static UnderlineInputBorder underlineInputBorder(
    BuildContext context,
    Color? color,
  ) {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color:
            color ?? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.8),
      ),
    );
  }
}

class CustomOutlineInputBorder {
  static outlineInputBorder(
    BuildContext context,
    Color? color,
  ) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color:
            color ?? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.8),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(
          100,
        ),
      ),
    );
  }
}
