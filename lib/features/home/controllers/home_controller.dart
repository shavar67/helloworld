import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:helloworld/features/home/data/mock_tracks.dart';
import 'package:helloworld/features/home/models/track.dart';

class HomeController extends ChangeNotifier {
  HomeController({List<Track> initialTracks = mockTracks})
    : _tracks = List<Track>.unmodifiable(initialTracks);

  final List<Track> _tracks;

  UnmodifiableListView<Track> get tracks => UnmodifiableListView(_tracks);
}
