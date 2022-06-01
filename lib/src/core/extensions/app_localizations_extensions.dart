import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsExtention on AppLocalizations {
  static AppLocalizations tryOf(BuildContext context) {
    final result = Localizations.of<AppLocalizations>(context, AppLocalizations);
    assert(result != null, 'Строкового ресурса не существует');

    return result!;
  }
}
