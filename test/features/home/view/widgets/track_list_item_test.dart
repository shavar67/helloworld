import 'package:cupertino_native_better/cupertino_native_better.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/features/home/models/track.dart';
import 'package:helloworld/features/home/view/widgets/track_list_item.dart';

import '../../../../helpers/pump_widget.dart';

void main() {
  const track = Track(
    index: 7,
    title: 'Night Drive',
    subtitle: 'Analog dreams',
  );

  Future<void> pumpTrackListItem(WidgetTester tester) async {
    await pumpWidgetWithCupertinoApp(
      tester,
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: CupertinoListSection.insetGrouped(
            children: const [TrackListItem(track: track)],
          ),
        ),
      ),
    );
  }

  group('TrackListItem', () {
    testWidgets('renders the track title subtitle and index', (
      WidgetTester tester,
    ) async {
      await pumpTrackListItem(tester);

      expect(find.text(track.title), findsOneWidget);
      expect(find.text(track.subtitle), findsOneWidget);
      expect(find.text('${track.index}'), findsOneWidget);
    });

    testWidgets('renders the popup menu trigger', (WidgetTester tester) async {
      await pumpTrackListItem(tester);

      expect(find.byType(CNPopupMenuButton), findsOneWidget);
      expect(find.byType(CupertinoListTile), findsOneWidget);
    });

    testWidgets('shows menu actions when the popup menu is opened', (
      WidgetTester tester,
    ) async {
      await pumpTrackListItem(tester);

      await tester.tap(find.byType(CNPopupMenuButton));
      await tester.pumpAndSettle();

      expect(find.text('Play Next'), findsOneWidget);
      expect(find.text('Add to Playlist'), findsOneWidget);
      expect(find.text('Favorite'), findsOneWidget);
      expect(find.text('Share'), findsOneWidget);
      expect(find.text('Remove'), findsOneWidget);
    });
  });
}
