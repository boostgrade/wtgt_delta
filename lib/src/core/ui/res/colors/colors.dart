import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = _brightYellow;
  static const Color background = _white;
  static const Color surface = _white;
  static const Color accent = _lightGreen;
  static const Color card = _green;
  static const Color primaryDark = _darkYellow;
  static const Color secondary = _darkBlue;
  static const Color onPrimary = _black;
  static const Color onSecondary = _white;
  static const Color onBackground = _black;
  static const Color onSurface = _black;
  static const Color onError = _red;
  static const Color error = _red;
  static const Color border = _secondaryGrey;
  static const Color disabled = _darkGrey;
  static const Color divider = _grey;
  static const Color shadow = _grey;
  static const Color focusedBorder = _darkBlue;
  static const Color chipsConfirm = _brightGreen;
  static const Color chipsInProgress = _brightBlue;
  static const Color chipsCancel = _brightRed;
  static const Color active = _green;
  static const Color textPrimary = _black;
  static const Color textSecondary = _darkGrey;

//TODO: Основная палитра

  static const Color _brightYellow = Color(0xFFFFD600);
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _lightGreen = Color(0xFFB8F09D);
  static const Color _green = Color(0xFFA9D899);
  static const Color _darkYellow = Color(0xFFC7B800);
  static const Color _darkBlue = Color(0xFF1310BE);
  static const Color _black = Color(0xFF000000);
  static const Color _red = Color(0xFFE33247);
  static const Color _secondaryGrey = Color(0xFFD5D8E5);
  static const Color _darkGrey = Color(0xFF415170);
  static const Color _grey = Color(0xFFAEBAD0);
  static const Color _brightGreen = Color(0xFFC1F3D8);
  static const Color _brightBlue = Color(0xFFD6E6FF);
  static const Color _brightRed = Color(0xFFFFDCDC);
}
