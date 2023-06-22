import "package:firstapp/design/colors.dart";
import "package:flutter/material.dart";

class Themes {
  Themes._();
  static ThemeData defaultTheme = ThemeData(
      fontFamily: 'RobotoMono',
      primaryColor: Styles.primaryColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 14.0),
        bodyMedium: TextStyle(fontSize: 14.0),
        bodySmall: TextStyle(fontSize: 10.0),
      ));
}
