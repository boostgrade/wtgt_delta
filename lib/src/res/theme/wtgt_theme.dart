import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';

/// Тема цветовая приложения
/// [lightTheme] геттер для светлой темы
class WtgtTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Montserrat',
      textTheme: WtgtTextStyles.lightTextStyle,
      colorScheme: WtgtColorScheme.lightColorScheme,
      primaryColorDark: AppColors.primaryDark,
      shadowColor: AppColors.shadow,
      dividerColor: AppColors.divider,
      disabledColor: AppColors.disabled,
      backgroundColor: AppColors.background,
      cardColor: AppColors.card,
      cardTheme: const CardTheme(
        color: AppColors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      inputDecorationTheme: WtgtInputDecoration.lightInputDecorationTheme,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.focusedBorder,
      ),
    );
  }
}

class WtgtColorScheme {
  static ColorScheme get lightColorScheme => const ColorScheme(
        primaryVariant: AppColors.primary,
        secondaryVariant: AppColors.secondary,
        primary: AppColors.primary,
        surface: AppColors.surface,
        secondary: AppColors.secondary,
        background: AppColors.background,
        onPrimary: AppColors.onPrimary,
        onSurface: AppColors.onSurface,
        onBackground: AppColors.onBackground,
        onSecondary: AppColors.onSecondary,
        error: AppColors.error,
        onError: AppColors.onError,
        brightness: Brightness.light,
      );
}

class WtgtTextStyles {
  static TextTheme get lightTextStyle => const TextTheme(
        headline1: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
        headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
        caption: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        button: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        ),
        overline: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      );
}

class WtgtInputDecoration {
  static InputDecorationTheme get lightInputDecorationTheme => const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.focusedBorder,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.onError,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
        errorStyle: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
        ),
        labelStyle: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      );
}
