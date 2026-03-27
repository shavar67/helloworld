import 'package:cupertino_native_better/cupertino_native_better.dart';
import 'package:flutter/cupertino.dart';
import 'package:helloworld/features/home/models/track.dart';

class TrackListItem extends StatelessWidget {
  const TrackListItem({super.key, required this.track});

  final Track track;

  static const List<CNPopupMenuEntry> _menuItems = [
    CNPopupMenuItem(
      label: 'Play Next',
      icon: CNSymbol('text.line.first.and.arrowtriangle.forward', size: 16),
    ),
    CNPopupMenuItem(
      label: 'Add to Playlist',
      icon: CNSymbol('text.badge.plus', size: 16),
    ),
    CNPopupMenuItem(label: 'Favorite', icon: CNSymbol('star', size: 16)),
    CNPopupMenuDivider(),
    CNPopupMenuItem(
      label: 'Share',
      icon: CNSymbol('square.and.arrow.up', size: 16),
    ),
    CNPopupMenuItem(
      label: 'Remove',
      icon: CNSymbol('trash', size: 16, color: CupertinoColors.systemRed),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final accentColor = CupertinoTheme.of(context).primaryColor;

    return CupertinoListTile(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      leading: _TrackIndexBadge(index: track.index),
      title: Text(track.title),
      subtitle: Text(track.subtitle),
      trailing: CNPopupMenuButton.icon(
        buttonIcon: CNSymbol('ellipsis.circle', size: 20, color: accentColor),
        size: 32,
        preserveTopToBottomOrder: true,
        items: _menuItems,
        onSelected: (_) {},
      ),
    );
  }
}

class _TrackIndexBadge extends StatelessWidget {
  const _TrackIndexBadge({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.primaryColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$index',
        style: theme.textTheme.textStyle.copyWith(
          color: theme.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
