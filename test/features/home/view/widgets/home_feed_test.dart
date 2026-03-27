import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/features/home/data/mock_tracks.dart';
import 'package:helloworld/features/home/view/widgets/home_feed.dart';
import 'package:helloworld/features/home/view/widgets/track_list_item.dart';

import '../../../../helpers/pump_widget.dart';

void main() {
  group('HomeFeed', () {
    testWidgets('renders the playlist section header', (
      WidgetTester tester,
    ) async {
      await pumpWidgetWithCupertinoApp(tester, child: const HomeFeed());

      expect(find.text('Playlist'), findsOneWidget);
      expect(find.byType(CupertinoListSection), findsOneWidget);
    });

    testWidgets('renders one track list item per mock track', (
      WidgetTester tester,
    ) async {
      await pumpWidgetWithCupertinoApp(tester, child: const HomeFeed());

      expect(find.byType(TrackListItem), findsNWidgets(mockTracks.length));
      expect(find.text(mockTracks.first.title), findsOneWidget);
      expect(find.text(mockTracks.last.title), findsOneWidget);
    });
  });
}
