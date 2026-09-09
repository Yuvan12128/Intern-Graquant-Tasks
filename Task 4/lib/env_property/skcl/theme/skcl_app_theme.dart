import 'package:flutter/material.dart';

class SKCLAppTheme {
  SKCLAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF5B8ECA),
      onPrimary: Color(0xFF404040),
      secondary: Color(0xFF404040),
      onSecondary: Color(0xFFFFFFFF),
      tertiary: Color(0xFFFFFFFF),
      onTertiary: Color(0xFF34A853),
      background: Color(0xFFFFFFFF),
      onBackground: Color(0xFFFFFFFF),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF404040),
      error: Color(0XFFF15757),
      onError: Color(0xFFFFFFFF),
    ),
    primaryColor: Color(0xFF5B8ECA),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: _lightappBarTheme,
    inputDecorationTheme: _lightinputDecorationTheme(),
    splashColor: Color(0xFF5B8ECA),
    fontFamily: 'ProductSans',
    scrollbarTheme: scrollbarThemeData,
    textSelectionTheme: textSelectionThemeData,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5B8ECA),
      splashColor: Colors.blueGrey,
    ),
    sliderTheme: sliderThemeData,
    tabBarTheme: TabBarThemeData(
      labelColor: Color(0xFF5B8ECA),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xFF5B8ECA)),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: Color(0xFF404040).withOpacity(0.8),
    ),
    primaryIconTheme: IconThemeData(color: Color(0xFFFF5B8ECA)),
    iconTheme: IconThemeData(color: Color(0xFFFF5B8ECA)),
    checkboxTheme: CheckboxThemeData(
      checkColor:
          MaterialStateProperty.resolveWith(SKCLAppTheme.checkBoxCheckColor),
      fillColor:
          MaterialStateProperty.resolveWith(SKCLAppTheme.checkBoxFillColor),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
        SKCLAppTheme.radioButtonFillColor,
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(
        Color(0xFF404040).withOpacity(0.5),
      ),
      thumbColor: MaterialStateProperty.all(
        Color(0xFF5B8ECA),
      ),
    ),
    timePickerTheme: timePickerThemeData,
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme(
      primary: Color(0xFF5B8ECA),
      brightness: Brightness.dark,
      onPrimary: Color(0xFF404040),
      secondary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF404040),
      tertiary: Color(0xFFFFFFFF),
      onTertiary: Color(0xFF34A853),
      background: Color(0xFF26304f),
      onBackground: Color(0xFF394464),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFFFFFFFF),
      error: Colors.red,
      onError: Color(0xFFFFFFFF),
    ),
    primaryColor: Color(0xFF5B8ECA),
    scaffoldBackgroundColor: Color(0xFF26304f),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: _darkappBarTheme,
    inputDecorationTheme: _darkinputDecorationTheme(),
    splashColor: Color(0xFF5B8ECA),
    fontFamily: 'ProductSans',
    scrollbarTheme: scrollbarThemeData,
    textSelectionTheme: textSelectionThemeData,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5B8ECA),
      splashColor: Colors.blueGrey,
    ),
    sliderTheme: sliderThemeData,
    tabBarTheme: TabBarThemeData(
      labelColor: Color(0xFF5B8ECA),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xFF5B8ECA)),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: Color(0xFFFFFFFF),
    ),
    primaryIconTheme: IconThemeData(color: Color(0xFF5B8ECA)),
    iconTheme: IconThemeData(color: Color(0xFF5B8ECA)),
    checkboxTheme: CheckboxThemeData(
      checkColor:
          MaterialStateProperty.resolveWith(SKCLAppTheme.checkBoxCheckColor),
      fillColor:
          MaterialStateProperty.resolveWith(SKCLAppTheme.checkBoxFillColor),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
        SKCLAppTheme.radioButtonFillColor,
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(
        Color(0xFF5B8ECA).withOpacity(0.5),
      ),
      thumbColor: MaterialStateProperty.all(
        Color(0xFF5B8ECA),
      ),
    ),
    timePickerTheme: timePickerThemeData,
  );

  static Color radioButtonFillColor(Set<MaterialState> states) {
    return Color(0xFF5B8ECA);
  }

  static Color checkBoxCheckColor(Set<MaterialState> states) {
    return Color(0xFFFFFFFF);
  }

  static Color checkBoxFillColor(Set<MaterialState> states) {
    return Color(0xFF5B8ECA);
  }

  static final ScrollbarThemeData scrollbarThemeData = ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all(Color(0xFF5B8ECA)),
  );

  static final TextSelectionThemeData textSelectionThemeData =
      TextSelectionThemeData(
    cursorColor: Color(0xFF5B8ECA),
    selectionColor: Color(0xFF5B8ECA),
    selectionHandleColor: Color(0xFF5B8ECA),
  );

  static final AppBarTheme _lightappBarTheme = AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Color(0xFF5B8ECA),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xFF5B8ECA),
    ),
    centerTitle: true,
  );

  static final AppBarTheme _darkappBarTheme = AppBarTheme(
    color: Color(0xFF404040),
    iconTheme: IconThemeData(
      color: Color(0xFF5B8ECA),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xFF5B8ECA),
    ),
    centerTitle: true,
  );

  static OutlineInputBorder lightOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Color(0xFF404040).withOpacity(0.8)),
    gapPadding: 10,
  );

  static OutlineInputBorder darkOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Color(0xFFFFFFFF).withOpacity(0.8)),
    gapPadding: 10,
  );

  static InputDecorationTheme _lightinputDecorationTheme() {
    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: lightOutlineInputBorder,
      focusedBorder: lightOutlineInputBorder.copyWith(
        borderSide: BorderSide(
          color: Color(0xFF5B8ECA),
        ),
      ),
      border: lightOutlineInputBorder,
    );
  }

  static InputDecorationTheme _darkinputDecorationTheme() {
    return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: darkOutlineInputBorder,
      focusedBorder: darkOutlineInputBorder.copyWith(
        borderSide: BorderSide(
          color: Color(0xFF5B8ECA),
        ),
      ),
      border: darkOutlineInputBorder,
    );
  }

  static final SliderThemeData sliderThemeData = SliderThemeData(
    activeTrackColor: Color(0xFF5B8ECA),
    inactiveTrackColor: Color(0xFF404040).withOpacity(0.3),
    activeTickMarkColor: Color(0xFF5B8ECA),
    inactiveTickMarkColor: Color(0xFF404040).withOpacity(0.3),
    showValueIndicator: ShowValueIndicator.always,
    valueIndicatorColor: Color(0xFF5B8ECA),
    thumbColor: Color(0xFF5B8ECA),
    trackHeight: 1.0,
    thumbShape: RoundSliderThumbShape(
      disabledThumbRadius: 8,
      enabledThumbRadius: 8,
    ),
    rangeThumbShape: RoundRangeSliderThumbShape(
      disabledThumbRadius: 8,
      enabledThumbRadius: 8,
    ),
    rangeTickMarkShape: RoundRangeSliderTickMarkShape(tickMarkRadius: 4),
  );

  static final TimePickerThemeData timePickerThemeData = TimePickerThemeData(
    backgroundColor: Colors.white,
    // // hourMinuteShape: const RoundedRectangleBorder(
    // //   borderRadius: BorderRadius.all(Radius.circular(8)),
    // //   side: BorderSide(color: Color(0xFF5B8ECA), width: 4),
    // // ),
    // dayPeriodBorderSide: const BorderSide(color: Color(0xFF5B8ECA), width: 4),
    // dayPeriodColor: Color(0xFF808184).withOpacity(.6),
    // shape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(8)),
    //   side: BorderSide(color: Color(0xFF5B8ECA), width: 4),
    // ),
    // dayPeriodTextColor: Colors.white,
    // dayPeriodShape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(8)),
    //   side: BorderSide(color: Color(0xFF5B8ECA), width: 4),
    // ),
    // hourMinuteColor: MaterialStateColor.resolveWith((states) =>
    //     states.contains(MaterialState.selected)
    //         ? Color(0xFF5B8ECA)
    //         : Color(0xFF808184).withOpacity(.8)),
    // hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
    //     states.contains(MaterialState.selected)
    //         ? Colors.white
    //         : Color(0xFF5B8ECA)),
    // dialHandColor: Color(0xFF808184).withOpacity(.7),
    // dialBackgroundColor: Color(0xFF808184).withOpacity(.8),
    // hourMinuteTextStyle:
    //     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    // dayPeriodTextStyle:
    //     const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    // helpTextStyle: const TextStyle(
    //     fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    // inputDecorationTheme: const InputDecorationTheme(
    //   border: InputBorder.none,
    //   contentPadding: EdgeInsets.all(0),
    // ),
    // dialTextColor: MaterialStateColor.resolveWith((states) =>
    //     states.contains(MaterialState.selected)
    //         ? Color(0xFF5B8ECA)
    //         : Colors.white),
    // entryModeIconColor: Color(0xFF5B8ECA),
  );
}
