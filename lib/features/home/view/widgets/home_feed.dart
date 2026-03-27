import 'package:flutter/cupertino.dart';
import 'package:helloworld/features/home/controllers/home_controller.dart';
import 'package:helloworld/features/home/view/widgets/track_list_item.dart';
import 'package:provider/provider.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final tracks = context.watch<HomeController>().tracks;

    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 32),
      children: [
        CupertinoListSection.insetGrouped(
          header: const Text('Playlist'),
          children: tracks
              .map((track) => TrackListItem(track: track))
              .toList(growable: false),
        ),
      ],
    );
  }
}
