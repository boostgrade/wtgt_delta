import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';

/// Статус базовой кнопки
/// [active] - стандартное состояние кнопки,
/// [disable] - заблокировать нажатие кнопки,
/// [loading] - ожидание callback'а функции и показывание лоадера
enum Status {
  active,
  disable,
  loading,
}

/// Базовая кнопка
/// [onPressed] - callback функции,
/// [label] - заголовок кнопки,
/// [status] - состояние кнопки
class WtgtButton extends StatelessWidget {
  final VoidCallback? onPressed;
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
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(52)),
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
                ? ProjectColors.flatButtonColor.withOpacity(0.5)
                : ProjectColors.flatButtonColor;
          },
        ),
        padding: status == Status.loading
            ? MaterialStateProperty.all(
                const EdgeInsets.all(14.0),
              )
            : MaterialStateProperty.all(
                const EdgeInsets.all(16.0),
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
                color: status == Status.disable
                    ? ProjectColors.disabledColor
                    : ProjectColors.textColorPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
    );
  }
}
