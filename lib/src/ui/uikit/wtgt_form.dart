import 'package:flutter/material.dart';

class WtgtForm extends StatelessWidget {
  final Function(String) onChanged;
  final String? labelText;

  const WtgtForm({
    Key? key,
    required this.onChanged,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16.0),
        labelText: labelText,
      ),
    );
  }
}
