import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';

class WtgtForm extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController? controller;
  final String? labelText;
  final Widget? suffixIcon;
  final String? value;

  const WtgtForm({
    Key? key,
    required this.onChanged,
    this.controller,
    this.value,
    this.labelText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      child: TextFormField(
        initialValue: value,
        onChanged: onChanged,
        style: AppTypography.subtitle1,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
