import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static Color lightPrimary = const Color(0xff01C13B);
  static Color darkPrimary = const Color(0xff01C13B);

  static Color lightAccent = const Color(0xff01C13B);
  static Color darkAccent = const Color(0xff01C13B);

  static Color lightBG = const Color(0xffF3F8FE);
  static Color darkBG = Colors.black;

  static Color lightBG2 = const Color(0xffFFFFFF);
  static Color darkBG2 = const Color(0xff1E1E1E);

  static Color buttonLight = const Color(0xff01C13B);
  static Color buttonDark = const Color(0xff01C13B);

  static Color appbarLight = const Color(0xffFFFFFF);
  static Color appbarDark = const Color(0xff1E1E1E);

  static Color shadowColorLight = Colors.black87;
  static Color shadowColorDark = Colors.white70;

  static Color secondaryColor = Colors.grey;

  static var darkShadow = const <BoxShadow>[
    BoxShadow(
      color: Colors.white70,
      spreadRadius: 5,
      blurRadius: 10,
      offset: Offset(0, 5),
    ),
  ];
  static var lightShadow = const <BoxShadow>[
    BoxShadow(
      color: Colors.black87,
      spreadRadius: 5,
      blurRadius: 10,
      offset: Offset(0, 5),
    ),
  ];

  static const MaterialColor primarySwatchLight = MaterialColor(
    0xff01C13B,
    <int, Color>{
      50: Color(0xff01C13B),
      100: Color(0xff01C13B),
      200: Color(0xff01C13B),
      300: Color(0xff01C13B),
      400: Color(0xff01C13B),
      500: Color(0xff01C13B),
      600: Color(0xff01C13B),
      700: Color(0xff01C13B),
      800: Color(0xff01C13B),
      900: Color(0xff01C13B),
    },
  );
  static const MaterialColor primarySwatchDark = MaterialColor(
    0xffFE752F,
    <int, Color>{
      50: Color(0xff01C13B),
      100: Color(0xff01C13B),
      200: Color(0xff01C13B),
      300: Color(0xff01C13B),
      400: Color(0xff01C13B),
      500: Color(0xff01C13B),
      600: Color(0xff01C13B),
      700: Color(0xff01C13B),
      800: Color(0xff01C13B),
      900: Color(0xff01C13B),
    },
  );

  static final light = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 3,
      shadowColor: shadowColorLight,
      iconTheme: const IconThemeData(color: Colors.grey),
      color: appbarLight, systemOverlayStyle: SystemUiOverlayStyle.dark, toolbarTextStyle: const TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 20.0),
        bodyText2: TextStyle(color: Colors.black, fontSize: 14.0),
      ).bodyText2, titleTextStyle: const TextTheme(
        headline6: TextStyle(color: Colors.black, fontSize: 20.0),
        bodyText2: TextStyle(color: Colors.black, fontSize: 14.0),
      ).headline6,
    ),
    bottomAppBarColor: lightBG2,
    bottomAppBarTheme: BottomAppBarTheme(color: lightBG2),
    cardColor: lightBG2,
    dialogBackgroundColor: lightBG2,
    canvasColor: lightBG2,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: lightBG2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // type: BottomNavigationBarType.shifting,
      selectedItemColor: buttonLight,
      backgroundColor: lightBG2,
    ), colorScheme: ColorScheme.fromSwatch(
      primarySwatch: primarySwatchLight,
    ).copyWith(
      secondary: lightPrimary,
    ).copyWith(secondary: lightPrimary),
  );

  static final dark = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 3,
      shadowColor: shadowColorDark,
      iconTheme: const IconThemeData(color: Colors.grey),
      color: appbarDark, systemOverlayStyle: SystemUiOverlayStyle.light, toolbarTextStyle: const TextTheme(
        headline6: TextStyle(color: Colors.white, fontSize: 20.0),
        bodyText2: TextStyle(color: Colors.white, fontSize: 14.0),
      ).bodyText2, titleTextStyle: const TextTheme(
        headline6: TextStyle(color: Colors.white, fontSize: 20.0),
        bodyText2: TextStyle(color: Colors.white, fontSize: 14.0),
      ).headline6,
    ),
    bottomAppBarColor: darkBG2,
    bottomAppBarTheme: BottomAppBarTheme(color: darkBG2),
    cardColor: darkBG2,
    dialogBackgroundColor: darkBG2,
    canvasColor: darkBG2,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkBG2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // type: BottomNavigationBarType.shifting,
      selectedItemColor: buttonDark,
      backgroundColor: darkBG2,
    ), colorScheme: ColorScheme.fromSwatch(
      primarySwatch: primarySwatchDark,
    ).copyWith(
      secondary: darkPrimary,
    ).copyWith(secondary: darkPrimary),
  );
}
