import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/colors.dart';

/// Статус базовой кнопки
/// [active] - стандартное состояние кнопки,
/// [loading] - ожидание callback'а функции и показывание лоадера
enum ButtonType {
  active,
  loading,
}

/// Базовая кнопка
/// [onPressed] (необязательный параметр) - callback функции,
/// Если [onPressed] == null, то кнопка становится disabled
/// [label] - заголовок кнопки,
/// [type] - состояние кнопки,
/// [height] (необязательный параметр) - высота кнопки
class WtgtButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final ButtonType type;
  final double height;

  const WtgtButton({
    Key? key,
    this.onPressed,
    required this.type,
    required this.label,
    this.height = 52.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size.fromHeight(height)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (_) {
            return onPressed == null
                ? AppColors.primary.withOpacity(0.5)
                : AppColors.primary;
          },
        ),
      ),
      onPressed: onPressed,
      child: type == ButtonType.loading
          ? const Center(
              child: SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColors.textPrimary,
                ),
              ),
            )
          : Center(
              child: Text(
                label.toUpperCase(),
                style: TextStyle(
                  color: onPressed == null
                      ? AppColors.disabled
                      : AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
    );
  }
}
