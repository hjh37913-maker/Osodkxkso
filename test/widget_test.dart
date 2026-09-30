import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ye_hidnist/main.dart';

void main() {
  testWidgets('Є-Гідність opens access screen', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    await tester.pumpWidget(YeHidnistApp(prefs: prefs));
    await tester.pumpAndSettle();
    expect(find.text('Є-Гідність'), findsOneWidget);
    expect(find.text('Цифровий простір твоєї школи'), findsOneWidget);
  });
}
