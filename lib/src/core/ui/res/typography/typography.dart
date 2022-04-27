import 'package:flutter/material.dart';

/// Описание текстовых стилей приложения
abstract class AppTypography {

  static final body1 =  _font400.copyWith(
    fontSize: 16,
    height: 20 / 16,
  );

  static final label = _font400.copyWith(
    fontSize: 12,
    height: 20 / 12,
  );

  static final caption = _font400.copyWith(
    fontSize: 16,
    height: 20 / 16,
  );

  static final body2 = _font500.copyWith(
    fontSize: 18,
    height: 20 / 18,
  );

  static final subtitle1 = _font500.copyWith(
    fontSize: 16,
    height: 20 / 16,
  );

  static final newCaption = _font500.copyWith(
    fontSize: 12,
    height: 14 / 12,
  );

  static final headline2 = _font600.copyWith(
    fontSize: 24,
    height: 32 / 24,
  );

  static final button = _font600.copyWith(
    fontSize: 16,
    height: 20 / 16,
  );

  static final newSmallTitle = _font600.copyWith(
    fontSize: 18,
    height: 20 / 18,
  );

  static final newLargeTitle = _font700.copyWith(
    fontSize: 24,
    height: 36 / 24,
  );

  static final promoBold = _font700.copyWith(
    fontSize: 16,
    height: 20 / 16,
  );

  static final label700 = label.copyWith(
    fontWeight: FontWeight.w700,
  );

  static const _font = TextStyle(
    fontFamily: 'Montserrat',
  );

  static final _font400 = _font.copyWith(
    fontWeight: FontWeight.w400,
  );

  static final _font500 = _font.copyWith(
    fontWeight: FontWeight.w500,
  );

  static final _font600 = _font.copyWith(
    fontWeight: FontWeight.w600,
  );

  static final _font700 = _font.copyWith(
    fontWeight: FontWeight.w700,
  );
}
