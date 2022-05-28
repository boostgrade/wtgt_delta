import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/core/constants/text_field_regexp.dart';
import 'package:where_to_go_today/src/core/extentions/date_time_extentions.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_checkbox.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _key = GlobalKey<FormState>();
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
      child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: WtgtForm(
                defaultValue: true,
                validatorPattern: TextFieldRegExp.name,
                onChanged: (_) {
                  //TODO(any): обработать нажатие на кнопку
                },
                labelText: AppLocalizations.of(context)!.textFieldHintName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: WtgtForm(
                defaultValue: true,
                validatorPattern: TextFieldRegExp.name,
                onChanged: (_) {
                  //TODO(any): обработать нажатие на кнопку
                },
                labelText: AppLocalizations.of(context)!.textFieldHintLastName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: WtgtForm(
                defaultValue: true,
                validatorPattern: TextFieldRegExp.email,
                onChanged: (_) {
                  //TODO(any): обработать нажатие на кнопку
                },
                labelText: AppLocalizations.of(context)!.textFieldHintEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: WtgtForm(
                key: _date == null ? null : Key(_date!),
                value: _date,
                defaultValue: true,
                validatorPattern: TextFieldRegExp.date,
                onChanged: (_) {
                  //TODO(any): обработать нажатие на кнопку
                },
                labelText: AppLocalizations.of(context)!.textFieldHintBirthdate,
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
                Expanded(
                  child: InkWell(
                    child: Text(
                      AppLocalizations.of(context)!.acceptUserAgreement,
                      style: AppTypography.subtitle1.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
              ),
              child: WtgtButton(
                type: ButtonType.active,
                label: AppLocalizations.of(context)!.buttonRegistration,
                onPressed: () {},
              ),
            ),
          ],
        ),
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
        _date = date.getStringDDMMYYYY;
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
