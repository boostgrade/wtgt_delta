import 'package:flutter/material.dart';

class WtgtCheckBox extends StatelessWidget {
  final Function(bool?) onChange;
  final bool value;

  const WtgtCheckBox({
    Key? key,
    required this.onChange,
    this.value = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.0,
      height: 24.0,
      child: Checkbox(
        value: value,
        onChanged: onChange,
      ),
    );
  }
}
