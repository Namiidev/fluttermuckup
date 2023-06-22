import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static const Color h4Color = Color(0xFF9E9E9E);
  static const Color primaryColor = Color(0xFF687daf);
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color bgColor = Color(0xFFeeedf2);
  static const Color orangeColor = Color(0xFF526799);
  static const TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static const TextStyle h1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static const TextStyle h2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static const TextStyle h3 =
      TextStyle(fontSize: 17, color: h4Color, fontWeight: FontWeight.w500);
  static const TextStyle h4 =
      TextStyle(fontSize: 14, color: h4Color, fontWeight: FontWeight.w500);

  /// xd
  static const Color brandDarkColor = Colors.black;
  static const Color brandLigthDarkColor = Color.fromRGBO(113, 113, 112, 1);
  static const Color brandDarkColorOpacity = Color.fromRGBO(255, 255, 255, 0.2);
  static const Color brandErrorColor = Color.fromRGBO(249, 56, 57, 0.2);
  static const Color brandOnErrorColor = Color.fromRGBO(249, 56, 57, 1);
  static const Color brandSuccessColor = Color.fromRGBO(35, 159, 87, 0.2);
  static const Color brandOnSuccessColor = Color.fromRGBO(35, 159, 87, 1);
}
