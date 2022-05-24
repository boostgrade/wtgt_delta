String getStringDDMMYYYYFromDate(DateTime dateTime) {
  String day = dateTime.day.toString().length == 1 ? '0${dateTime.day}' : '${dateTime.day}';
  String month = dateTime.month.toString().length == 1 ? '0${dateTime.month}' : '${dateTime.month}';

  return '$day.$month.${dateTime.year}';
}
