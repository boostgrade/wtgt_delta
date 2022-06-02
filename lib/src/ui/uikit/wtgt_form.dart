import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';

class WtgtForm extends StatelessWidget {
  final Function(String) onChanged;
  final String? labelText;
  final Widget? suffixIcon;
  final String? initialValue;
  final String? errorText;
  final bool autofocus;
  final TextEditingController? controller;

  const WtgtForm({
    Key? key,
    required this.onChanged,
    this.autofocus = false,
    this.controller,
    this.initialValue,
    this.labelText,
    this.suffixIcon,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      initialValue: initialValue,
      controller: controller,
      onChanged: onChanged,
      style: AppTypography.subtitle1,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        errorText: errorText,
      ),
    );
  }
}
