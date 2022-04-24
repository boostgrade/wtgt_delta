import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';

class WtgtTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Montserrat',
      textTheme: WtgtTextStyles.lightTextStyle,
      colorScheme: WtgtColorScheme.lightColorScheme,
      primaryColorDark: ProjectColors.primaryColorDark,
      shadowColor: ProjectColors.shadow,
      dividerColor: ProjectColors.divider,
      disabledColor: ProjectColors.disabledColor,
      backgroundColor: ProjectColors.background,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ProjectColors.primary.withOpacity(0.5);
              }

              return ProjectColors.primary;
            },
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 52.0),
          ),
        ),
      ),
      cardTheme: const CardTheme(
        color: ProjectColors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
    );
  }
}

class WtgtColorScheme {
  static ColorScheme get lightColorScheme => const ColorScheme(
        primary: ProjectColors.primary,
        surface: ProjectColors.surface,
        secondary: ProjectColors.secondary,
        background: ProjectColors.background,
        onPrimary: ProjectColors.onPrimary,
        onSurface: ProjectColors.onSurface,
        onBackground: ProjectColors.onBackground,
        onSecondary: ProjectColors.onSecondary,
        error: ProjectColors.colorError,
        onError: ProjectColors.onError,
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
        subtitle2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
        bodyText2: TextStyle(
          fontSize: 16.0,
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
