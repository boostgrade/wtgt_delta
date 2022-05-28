extension StringGetters on DateTime {
  String get getStringDDMMYYYY {
    String dayResult = day.toString().length == 1 ? '0$day' : '$day';
    String monthResult = month.toString().length == 1 ? '0$month' : '$month';

    return '$dayResult.$monthResult.$year';
  }
}
