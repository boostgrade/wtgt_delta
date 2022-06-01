import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/core/constants/text_field_regexp.dart';

void main() {
  group(
    'Тесты регулярных выражений для имени',
    () {
      final regExp = RegExp(TextFieldRegExp.name);
      test(
        'Неправильная строка для имени, с цифрой',
        () {
          const testString = '7алтыков-Щедрин';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Неправильная строка для имени, с латиницей',
        () {
          const testString = 'Sалтыков-Щедрин';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Правильная строка для имени',
        () {
          const testString = 'Салтыков-Щедрин';
          expect(regExp.hasMatch(testString), true);
        },
      );
    },
  );

  group(
    'Тесты регулярных выражений для почты',
    () {
      final regExp = RegExp(TextFieldRegExp.email);

      test(
        'Неправильная строка для почты без @',
        () {
          const testString = 'emailtimurkarev.ru';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Неправильная строка для почты без domain',
        () {
          const testString = 'email@timurkarev';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Правильный email',
        () {
          const testString = 'email@timurkarev.ru';
          expect(regExp.hasMatch(testString), true);
        },
      );
    },
  );

  group(
    'Тесты регулярных выражений для даты',
    () {
      final regExp = RegExp(TextFieldRegExp.date);

      test(
        'Неправильная строка для даты без года',
        () {
          const testString = '12.14';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Неправильная строка для даты с 42-ым числом',
        () {
          const testString = '42.11.1987';
          expect(regExp.hasMatch(testString), false);
        },
      );

      test(
        'Правильная дата без нулей у единичных чисел',
        () {
          const testString = '1.9.2000';
          expect(regExp.hasMatch(testString), true);
        },
      );

      test(
        'Правильная дата с нулями у единичных чисел',
        () {
          const testString = '01.01.2000';
          expect(regExp.hasMatch(testString), true);
        },
      );
    },
  );
}
