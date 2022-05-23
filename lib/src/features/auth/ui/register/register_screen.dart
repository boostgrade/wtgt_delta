import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_checkbox.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
              onChanged: (_) {},
              labelText: 'Дата рождения',
              suffixIcon: const Icon(Icons.calendar_today_outlined),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WtgtCheckBox(
                  onChange: (newValue) {},
                ),
                const SizedBox(
                  width: 24.0,
                ),
                const Expanded(
                  child: Text('Я принимаю пользовательское соглашение'),
                ),
              ],
            ),
          ),
          WtgtButton(
            type: ButtonType.active,
            label: 'Зарегестрироваться',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
