import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static TextStyle regular({double? fontSize, Color? color}) => TextStyle(
        fontSize: fontSize,
        color: color,
      );
  static TextStyle medium({double? fontSize, Color? color}) =>
      TextStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.w500);
  static TextStyle bold({double? fontSize, Color? color}) =>
      TextStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.bold);
  static TextStyle black({double? fontSize, Color? color}) =>
      TextStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.w900);
}
