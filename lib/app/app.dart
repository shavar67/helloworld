import 'package:flutter/cupertino.dart';
import 'package:helloworld/features/home/controllers/home_controller.dart';
import 'package:helloworld/features/home/view/home_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: const CupertinoApp(
        title: 'Hello World',
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: CupertinoColors.systemBlue,
          scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
        ),
        home: HomePage(),
      ),
    );
  }
}
