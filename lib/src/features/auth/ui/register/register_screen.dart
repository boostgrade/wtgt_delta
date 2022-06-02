import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/core/extensions/app_localizations_extensions.dart';
import 'package:where_to_go_today/src/core/extensions/date_time_extensions.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/features/auth/ui/register/register_vm.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_checkbox.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterVm registerVm = RegisterVm();
  final _key = GlobalKey<FormState>();
  bool _checkBoxValue = false;
  final _dateFieldController = TextEditingController();

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
              child: Observer(
                builder: (_) {
                  return WtgtForm(
                    errorText: _getErrorText(registerVm.nameError),
                    onChanged: (newValue) => registerVm.onNameChanged(newValue),
                    labelText: AppLocalizationsExtention.tryOf(context).textFieldHintName,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Observer(builder: (_) {
                return WtgtForm(
                  errorText: _getErrorText(registerVm.lastNameError),
                  onChanged: (newValue) => registerVm.onLastNameChanged(newValue),
                  labelText: AppLocalizationsExtention.tryOf(context).textFieldHintLastName,
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Observer(builder: (_) {
                return WtgtForm(
                  errorText: _getErrorText(registerVm.emailError),
                  onChanged: (newValue) => registerVm.onEmailChanged(newValue),
                  labelText: AppLocalizationsExtention.tryOf(context).textFieldHintEmail,
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Observer(
                builder: (_) {
                  return WtgtForm(
                    autofocus: true,
                    controller: _dateFieldController,
                    errorText: _getErrorText(registerVm.dateError),
                    onChanged: (newValue) => registerVm.onBirthdateChanged(newValue),
                    labelText: AppLocalizationsExtention.tryOf(context).textFieldHintBirthdate,
                    suffixIcon: InkWell(
                      onTap: _setDate,
                      child: const Icon(Icons.calendar_today_outlined),
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Observer(builder: (_) {
                  return WtgtCheckBox(
                    value: registerVm.checkBoxValue,
                    onChange: (newValue) => registerVm.acceptAgreement(newValue),
                  );
                }),
                const SizedBox(
                  width: 24.0,
                ),
                Expanded(
                  child: InkWell(
                    child: Text(
                      AppLocalizationsExtention.tryOf(context).acceptUserAgreement,
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
              child: Observer(
                builder: (_) {
                  return WtgtButton(
                    type: registerVm.isLoading ? ButtonType.loading : ButtonType.active,
                    label: AppLocalizationsExtention.tryOf(context).buttonRegistration,
                    onPressed: registerVm.buttonEnabled ? () {} : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _getErrorText(TextFieldValidationStatus status) {
    switch (status) {
      case TextFieldValidationStatus.empty:
        return AppLocalizationsExtention.tryOf(context).textFieldErrorEmpty;
      case TextFieldValidationStatus.illegal:
        return AppLocalizationsExtention.tryOf(context).textFieldErrorNotMatch;
      case TextFieldValidationStatus.noError:
        return null;
    }
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
      registerVm.onBirthdateChanged(date.getStringDDMMYYYY);
      _dateFieldController.text = registerVm.date;
    }
  }
}
