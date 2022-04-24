import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

void main() {
  group(
    'WtgtButton tests',
    () {
      testWidgets(
        'При обычном состоянии кнопки, мы должны увидеть текст',
        (tester) async {
          const text = 'hello!';

          const btn = WtgtButton(
            onPressed: null,
            label: text,
          );

          await tester.pumpWidget(btn);
          final normalFinder = find.text(text);

          expect(normalFinder, findsOneWidget);
        },
      );

      testWidgets(
        'Если статус кнопки Status.loading - должны увидеть лоадер',
        (tester) async {
          const text = 'hello!';

          const btn = WtgtButton(
            onPressed: null,
            label: text,
            status: Status.loading,
          );

          await tester.pumpWidget(btn);
          final normalFinder = find.text(text);

          expect(normalFinder, findsNothing);
        },
      );
    },
  );
}
