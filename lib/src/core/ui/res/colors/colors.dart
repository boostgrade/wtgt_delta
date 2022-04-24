import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ProjectColors {
  static const Color surface = _white;
  static const Color background = _white;
  static const Color divider = _grey;
  static const Color shadow = _grey;
  static const Color disabledColor = _darkGrey;
  static const Color colorError = _freeSpeechRed;
  static const Color primary = _brightYellow;
  static const Color primaryColorDark = _darkYellow;
  static const Color activeColor = _green;
  static const Color textFieldColor = _brightGrey;
  static const Color secondary = _dustyBlue;
  static const Color textColorPrimary = _black;
  static const Color textColorSecondary = _darkGrey;
  static const Color onError = _red;
  static const Color onSurface = _black;
  static const Color onBackground = _black;
  static const Color onSecondary = _white;
  static const Color onPrimary = _black;
  static const Color card = _green;

//TODO: Основная палитра

  static const Color _white = Color(0xFFFFFFFF);
  static const Color _grey = Color(0xFFDFDFDF);
  static const Color _freeSpeechRed = Color(0xFFE63946);
  static const Color _darkGrey = Color(0xFF415170);
  static const Color _green = Color(0xFFA9D899);
  static const Color _brightGrey = Color(0xFFEBEDF0);
  static const Color _dustyBlue = Color(0xFFA8DADC);
  static const Color _black = Color(0xFF000000);
  static const Color _brightYellow = Color(0xFFFFD600);
  static const Color _darkYellow = Color(0xFFC7B800);
  static const Color _red = Color(0xFFE33247);
}
