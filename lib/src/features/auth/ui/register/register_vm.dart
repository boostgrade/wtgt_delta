//ignore_for_file: no-empty-block

import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/constants/text_field_regexp.dart';

part 'register_vm.g.dart';

enum TextFieldValidationStatus {
  empty,
  illegal,
  noError,
  untracked,
}

class RegisterVm = _RegisterVm with _$RegisterVm;

abstract class _RegisterVm with Store {
  @readonly
  String _date = '';
  @readonly
  bool _checkBoxValue = false;
  @readonly
  TextFieldValidationStatus _nameError = TextFieldValidationStatus.untracked;
  @readonly
  TextFieldValidationStatus _lastNameError = TextFieldValidationStatus.untracked;
  @readonly
  TextFieldValidationStatus _emailError = TextFieldValidationStatus.untracked;
  @readonly
  TextFieldValidationStatus _dateError = TextFieldValidationStatus.untracked;
  @readonly
  bool _isLoading = false;
  @computed
  bool get buttonEnabled =>
      _nameError == TextFieldValidationStatus.noError &&
      _dateError == TextFieldValidationStatus.noError &&
      _lastNameError == TextFieldValidationStatus.noError &&
      _emailError == TextFieldValidationStatus.noError &&
      _checkBoxValue;

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
  void acceptAgreement(bool value) {
    _checkBoxValue = value;
  }

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
