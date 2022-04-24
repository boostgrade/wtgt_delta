import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';

enum Status {
  disable,
  loading,
}

/// Виджет, базовой кнопки
/// Входные параметры: onPressed - callback функции, label - заголовок кнопки,
/// status - состояние кнопки(null - обычное состояние кнопки, disable - кнопка
/// неактивна, loading - показать лоадер)

class WtgtButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final Status? status;

  const WtgtButton({
    Key? key,
    this.onPressed,
    this.status,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(60)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (_) {
            return status == Status.disable
                ? ProjectColors.buttonColor.withOpacity(0.5)
                : ProjectColors.buttonColor;
          },
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(8.0),
        ),
      ),
      onPressed: status == Status.disable ? null : onPressed,
      child: status == Status.loading
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: ProjectColors.textColorPrimary,
              ),
            )
          : Text(
              label.toUpperCase(),
              style: TextStyle(
                color: status == Status.disable ? ProjectColors.disabledColor : ProjectColors.textColorPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
    );
  }
}