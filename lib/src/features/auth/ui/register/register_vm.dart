//ignore_for_file: no-empty-block

import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/constants/text_field_regexp.dart';

part 'register_vm.g.dart';

enum TextFieldValidationStatus {
  empty,
  illegal,
  noError,
}

class RegisterVm = _RegisterVm with _$RegisterVm;

abstract class _RegisterVm with Store {
  @readonly
  String _date = '';
  @readonly
  TextFieldValidationStatus _nameError = TextFieldValidationStatus.noError;
  @readonly
  TextFieldValidationStatus _lastNameError = TextFieldValidationStatus.noError;
  @readonly
  TextFieldValidationStatus _emailError = TextFieldValidationStatus.noError;
  @readonly
  TextFieldValidationStatus _dateError = TextFieldValidationStatus.noError;

  @action
  void onNameChanged(String text) {
    _nameError = _validateTextField(
      input: text,
      isDefault: true,
      pattern: TextFieldRegExp.name,
    );
  }

  @action
  void onLastNameChanged(String text) {
    _lastNameError = _validateTextField(
      input: text,
      isDefault: true,
      pattern: TextFieldRegExp.name,
    );
  }

  @action
  void onEmailChanged(String text) {
    _emailError = _validateTextField(
      input: text,
      isDefault: true,
      pattern: TextFieldRegExp.email,
    );
  }

  @action
  void onBirthdateChanged(String text) {
    _date = text;

    _dateError = _validateTextField(
      input: text,
      isDefault: true,
      pattern: TextFieldRegExp.date,
    );
  }

  @action
  void acceptAgreement(bool value) {}

  TextFieldValidationStatus _validateTextField({
    required String input,
    bool isDefault = false,
    String? pattern,
  }) {
    if (isDefault && input.isEmpty) {
      return TextFieldValidationStatus.empty;
    }

    if (pattern == null) {
      return TextFieldValidationStatus.noError;
    }

    final regExp = RegExp(
      pattern,
      caseSensitive: false,
    );

    if (!regExp.hasMatch(input)) {
      return TextFieldValidationStatus.illegal;
    }

    return TextFieldValidationStatus.noError;
  }
}
