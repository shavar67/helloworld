import 'package:cupertino_native_better/cupertino_native_better.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:helloworld/features/home/data/mock_tracks.dart';
import '../../../helpers/pump_app.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders the Cupertino home screen', (WidgetTester tester) async {
      await pumpApp(tester);

      expect(find.text('Demo App'), findsOneWidget);
      expect(find.text('Playlist'), findsOneWidget);
    });

    testWidgets('renders every mock track in the playlist', (
      WidgetTester tester,
    ) async {
      await pumpApp(tester);

      for (final track in mockTracks) {
        expect(find.text(track.title), findsOneWidget);
        expect(find.text(track.subtitle), findsOneWidget);
      }
    });

    testWidgets('renders an action menu for each track', (
      WidgetTester tester,
    ) async {
      await pumpApp(tester);

      expect(find.byType(CNPopupMenuButton), findsNWidgets(mockTracks.length));
      expect(find.text('Intro'), findsOneWidget);
      expect(find.text('Track 9'), findsOneWidget);
    });
  });
}
