import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/features/home/controllers/home_controller.dart';
import 'package:provider/provider.dart';

Future<void> pumpWidgetWithCupertinoApp(
  WidgetTester tester, {
  required Widget child,
  HomeController? homeController,
}) async {
  await tester.pumpWidget(
    ChangeNotifierProvider<HomeController>.value(
      value: homeController ?? HomeController(),
      child: CupertinoApp(home: child),
    ),
  );
  await tester.pumpAndSettle();
}
