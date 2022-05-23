import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';

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
      toggleableActiveColor: AppColors.primary,
      cardTheme: const CardTheme(
        color: AppColors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      inputDecorationTheme: WtgtInputDecoration.lightInputDecorationTheme,
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppColors.onPrimary),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.focusedBorder,
      ),
    );
  }
}

class WtgtColorScheme {
  static ColorScheme get lightColorScheme => const ColorScheme(
        primaryContainer: AppColors.primary,
        secondaryContainer: AppColors.secondary,
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
  static TextTheme get lightTextStyle => TextTheme(
        headlineMedium: AppTypography.headline2,
        headlineSmall: AppTypography.promoBold,
        titleLarge: AppTypography.newLargeTitle,
        titleMedium: AppTypography.headline2,
        titleSmall: AppTypography.newSmallTitle,
        labelLarge: AppTypography.label,
        labelMedium: AppTypography.caption,
        labelSmall: AppTypography.newCaption,
        bodyLarge: AppTypography.body2,
        bodyMedium: AppTypography.body1,
        bodySmall: AppTypography.button,
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
          color: AppColors.onPrimary,
        ),
        // contentPadding: EdgeInsets.all(16.0),
      );
}
