import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';

class WtgtForm extends StatelessWidget {
  final Function(String) onChanged;
  final String? labelText;
  final Widget? suffixIcon;
  final String? value;
  final String? validatorPattern;
  final bool defaultValue;

  const WtgtForm({
    Key? key,
    required this.onChanged,
    this.validatorPattern,
    this.defaultValue = false,
    this.value,
    this.labelText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      onChanged: onChanged,
      style: AppTypography.subtitle1,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => _validator(context, value),
    );
  }

  String? _validator(BuildContext context, String? value) {
    if (defaultValue && (value == null || value.isEmpty)) {
      return AppLocalizations.of(context)!.textFieldErrorEmpty;
    }
    if ((validatorPattern ?? '').isEmpty) {
      return null;
    }
    final regExp = RegExp(
      validatorPattern!,
      caseSensitive: false,
    );
    if (regExp.hasMatch(value!)) {
      return null;
    }

    return AppLocalizations.of(context)?.textFieldErrorNotMatch;
  }
}
