import 'package:cupertino_native_better/cupertino_native_better.dart';
import 'package:flutter/cupertino.dart';
import 'package:helloworld/features/home/view/widgets/home_feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: const Text('Demo App'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          minimumSize: const Size(28, 28),
          onPressed: () {},
          child: CNIcon(
            symbol: CNSymbol(
              'slider.horizontal.3',
              size: 18,
              color: theme.primaryColor,
            ),
          ),
        ),
      ),
      child: const SafeArea(
        bottom: false,
        child: HomeFeed(),
      ),
    );
  }
}
