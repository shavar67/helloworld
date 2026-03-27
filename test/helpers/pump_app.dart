import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/app/app.dart';

Future<void> pumpApp(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  await tester.pumpAndSettle();
}
