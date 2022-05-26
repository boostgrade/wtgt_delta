import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';
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
                validatorPattern: r'^[а-я-А-Я]*$',
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
                validatorPattern: r'^[а-я-А-Я]*$',
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
                validatorPattern:
                    r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$",
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
                validatorPattern: r'^[0-3]{0,1}[0-9].[0-1]{0,1}[0-9].[0-2][0,9][0-9]{2}$',
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
