import 'package:flutter/material.dart';

abstract class AppTypography {
  
  static const body1 =  TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 20 / 16,
  );

  static const body2 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 20 / 18,
  );

  static const subtitle1 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 20 / 16,
  );

  static const label = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 20 / 12,
  );

  static const headline2 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 32 / 24,
  );

  static const caption = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 20 / 16,
  );

  static const newCaption = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 14 / 12,
  );

  static const button = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 20 / 16,
  );

  static const newLargeTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 36 / 24,
  );

  static const newSmallTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 20 / 18,
  );

  static const promoBold = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 20 / 16,
  );
}