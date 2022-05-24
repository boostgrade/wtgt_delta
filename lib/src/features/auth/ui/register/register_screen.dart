import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/utils/date_utils.dart' as utils;
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_checkbox.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? _date;
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        top: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: WtgtForm(
              onChanged: (_) {},
              labelText: 'Имя',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: WtgtForm(
              onChanged: (_) {},
              labelText: 'Фамилия',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: WtgtForm(
              onChanged: (_) {},
              labelText: 'E-mail',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: WtgtForm(
              key: _date == null ? null : Key(_date!),
              value: _date,
              onChanged: (_) {},
              labelText: 'Дата рождения',
              suffixIcon: InkWell(
                onTap: _setDate,
                child: const Icon(Icons.calendar_today_outlined),
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WtgtCheckBox(
                value: _checkBoxValue,
                onChange: _checkboxOnChange,
              ),
              const SizedBox(
                width: 24.0,
              ),
              const Expanded(
                child: Text('Я принимаю пользовательское соглашение'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
            ),
            child: WtgtButton(
              type: ButtonType.active,
              label: 'Зарегестрироваться',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _setDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(
        const Duration(days: 360 * 18),
      ),
      firstDate: DateTime.now().subtract(
        const Duration(days: 360 * 90),
      ),
      lastDate: DateTime.now(),
    );

    if (date != null) {
      setState(() {
        _date = utils.getStringDDMMYYYYFromDate(date);
      });
    }
  }

  void _checkboxOnChange(bool? newValue) {
    if (newValue != null) {
      setState(() {
        _checkBoxValue = newValue;
      });
    }
  }
}
