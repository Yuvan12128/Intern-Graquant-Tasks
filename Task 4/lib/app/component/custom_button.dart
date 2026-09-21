import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key? key,
    required this.onpress,
    required this.widget,
    this.buttonWidth,
    this.color,
    this.buttonHeight,
  }) : super(key: key);
  final Widget widget;
  final Function onpress;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 16 * SizeConfig.widthMultiplier,
      child: ElevatedButton(
        onPressed: () => {onpress()},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            return color ?? Theme.of(context).colorScheme.primary;
          }),
          elevation: WidgetStateProperty.resolveWith<double>((_) {
            return 10;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) {
              return states.contains(WidgetState.pressed)
                  ? Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.2)
                  : Theme.of(context).colorScheme.primary;
            },
          ),
        ),
        child: widget,
      ),
    );
  }
}

class CustomFlatIconButton extends StatelessWidget {
  const CustomFlatIconButton({
    Key? key,
    required this.onpress,
    required this.widget,
    required this.iconWidget,
    this.buttonWidth,
    this.color,
    this.buttonHeight,
  }) : super(key: key);
  final Widget widget;
  final Icon iconWidget;
  final Function onpress;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 16 * SizeConfig.widthMultiplier,
      child: ElevatedButton.icon(
        onPressed: () => {onpress()},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            return color ?? Theme.of(context).colorScheme.primary;
          }),
          elevation: WidgetStateProperty.resolveWith<double>((_) {
            return 10;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) {
              return states.contains(WidgetState.pressed)
                  ? Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.2)
                  : Theme.of(context).colorScheme.primary;
            },
          ),
        ),
        label: widget,
        icon: iconWidget,
      ),
    );
  }
}

class CustomDisableButton extends StatelessWidget {
  const CustomDisableButton({
    Key? key,
    required this.widget,
    this.buttonWidth,
    this.color,
    this.buttonHeight,
  }) : super(key: key);
  final Widget widget;
  final double? buttonWidth;
  final double? buttonHeight;
  final WidgetStateProperty<Color>? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 16 * SizeConfig.widthMultiplier,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          backgroundColor: color,
        ),
        onPressed: null,
        label: widget,
        icon: Icon(
          Icons.lock,
          color: Theme.of(context).colorScheme.tertiary,
          size: SizeConfig.widthMultiplier * 5,
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.onpress,
    required this.widget,
    required this.style,
    this.color,
  }) : super(key: key);
  final Widget widget;
  final Function onpress;
  final ButtonStyle style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onpress();
      },
      child: widget,
      style: style,
    );
  }
}

class CustomButtonContainer extends StatelessWidget {
  const CustomButtonContainer({
    Key? key,
    required this.widget,
    this.buttonHeight,
    this.buttonWidth,
  }) : super(key: key);
  final Widget widget;
  final double? buttonHeight;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: buttonHeight ?? SizeConfig.widthMultiplier * 15,
      width: buttonWidth ?? SizeConfig.widthMultiplier * 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Color(0XFF00000029)),
        color: Color(0XFFE4E4E4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: widget,
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPress,
    required this.widget,
    this.backgroundColor,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.fixedSize,
    this.alignment,
    this.borderRadius,
    this.borderColor,
  }) : super(key: key);

  final Function() onPress;
  final Widget widget;
  final Color? backgroundColor;
  final Color? overlayColor;
  final Color? shadowColor;
  final double? elevation;
  final Size? fixedSize;
  final AlignmentGeometry? alignment;
  final double? borderRadius;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.center,
      child: ElevatedButton(
        onPressed: onPress,
        child: widget,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color?>(
            backgroundColor,
          ),
          overlayColor: WidgetStatePropertyAll<Color?>(
            overlayColor ?? Colors.transparent,
          ),
          elevation: WidgetStatePropertyAll<double>(
            elevation ?? 10,
          ),
          fixedSize: WidgetStatePropertyAll<Size>(fixedSize ??
              Size(
                SizeConfig.widthMultiplier * 50,
                SizeConfig.heightMultiplier * 10,
              )),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 100),
              side: (borderColor != null)
                  ? BorderSide(
                      color: borderColor!,
                    )
                  : BorderSide(),
            ),
          ),
          shadowColor: WidgetStatePropertyAll<Color?>(
            shadowColor,
          ),
        ),
      ),
    );
  }
}
