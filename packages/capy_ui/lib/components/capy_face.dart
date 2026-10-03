import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// What the mascot's face says.
///
/// A mood is a reading of the app's state, not a decoration. Each one is
/// spent on one thing, so that a face means the same everywhere it appears:
///
/// * [happy] — the ordinary good state. The default.
/// * [delighted] — something finished and went well: a sync that landed, a
///   charge that reached its target.
/// * [surprised] — a reading the reader is unlikely to expect, and that is
///   not a fault.
/// * [sad] — an action failed and nothing was lost by it.
/// * [angry] — a fault the reader has to act on.
/// * [worried] — a degraded state: a stale reading, a car that stopped
///   answering, an estimate standing in for a measurement.
/// * [sleeping] — nothing is running, and nothing is wrong. An idle sync, a
///   parked car.
/// * [winking] — an aside: a hint, a tip, a small confirmation.
/// * [determined] — work is in flight.
///
/// A mood must never be the only carrier of a state. It sits beside the words
/// and the number that state it; a reader who does not read faces has to lose
/// nothing.
enum CapyMood {
  happy,
  delighted,
  surprised,
  sad,
  angry,
  worried,
  sleeping,
  winking,
  determined;

  /// The shared Eaglemetry mark used for every status.
  ///
  /// [CapyMood] remains part of the API so existing callers keep compiling.
  /// A future Eaglemetry expression set can map these states to distinct art
  /// without changing the widgets that consume them.
  String assetFor(CapyDirection direction) =>
      'assets/images/branding/eaglemetry_icon_transparent.png';
}

/// Which way the mascot faces.
///
/// Both sets carry all nine moods and are cut to the same geometry, so a
/// direction is chosen for where the face sits rather than for what it means:
/// nothing about a state is carried by it.
enum CapyDirection {
  /// Straight at the reader. The default, and what the app's mark uses.
  front,

  /// Turned slightly to its right — the reader's right. Use it where the face
  /// should look towards the content beside it rather than out of the screen.
  right;

  String get suffix => name;
}

/// The Eaglemetry mark, drawn at [size].
///
/// The art is full colour and is never tinted.
///
/// The artwork is square and centred, so [CapyFace] can be dropped into a
/// fixed box without a layout change.
class CapyFace extends StatelessWidget {
  const CapyFace({
    required this.size,
    this.mood = CapyMood.happy,
    this.direction = CapyDirection.front,
    this.semanticLabel,
    super.key,
  });

  final CapyMood mood;

  /// Which way the head faces. Both directions are cut to the same geometry,
  /// so swapping one for the other moves the head no more than swapping a
  /// mood does.
  final CapyDirection direction;

  /// Width and height of the square the head is drawn in.
  final double size;

  /// What a screen reader says. Null leaves the image out of the tree that a
  /// screen reader walks, which is right when the face repeats something the
  /// text beside it already says — the normal case.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      mood.assetFor(direction),
      package: 'capy_ui',
      width: size,
      height: size,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.medium,
      // The art is authored at 512 px. Decoding it at the size it is drawn at
      // keeps a list of small faces off the image cache's ceiling.
      cacheWidth: (size * MediaQuery.devicePixelRatioOf(context)).round(),
      semanticLabel: semanticLabel,
      excludeFromSemantics: semanticLabel == null,
    );
  }
}

/// The Eaglemetry mark on a disc, with an optional status badge on its corner.
///
/// This is the app's mark: the shape the reader learns to look for on a
/// welcome, a result, or an empty state. The disc is [AppThemeColors.surface],
/// so the mark reads as a card the face sits on rather than as a cut-out.
class CapyBadge extends StatelessWidget {
  const CapyBadge({
    required this.diameter,
    this.mood = CapyMood.happy,
    this.direction = CapyDirection.front,
    this.badge,
    this.badgeColor,
    this.semanticLabel,
    super.key,
  });

  final CapyMood mood;
  final CapyDirection direction;
  final double diameter;

  /// Corner glyph. Omit for the plain mark.
  final IconData? badge;

  /// Fill behind [badge]. Defaults to the theme's energy gain, which is what
  /// a completed action wears.
  final Color? badgeColor;

  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final colors = AppThemeColors.of(context);
    final badgeSize = diameter * 0.3;
    return SizedBox(
      width: diameter,
      height: diameter,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: diameter,
            height: diameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors.surface,
            ),
            alignment: Alignment.center,
            child: CapyFace(
              mood: mood,
              direction: direction,
              // The head fills most of the disc but keeps a ring of surface
              // around it, so the mark reads as a face on a disc rather than
              // as a face clipped by one.
              size: diameter * 0.78,
              semanticLabel: semanticLabel,
            ),
          ),
          if (badge case final glyph?)
            Positioned(
              right: -AppSpacing.x1,
              bottom: -AppSpacing.x1,
              child: Container(
                width: badgeSize,
                height: badgeSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: badgeColor ?? colors.energy.gain,
                  // The ring is the canvas, not a border colour: it is the
                  // page showing through, which is what lifts the badge off
                  // the disc without drawing a line.
                  border: Border.all(color: colors.canvas, width: 4),
                ),
                child: Icon(
                  glyph,
                  size: badgeSize * 0.56,
                  color: colors.onSelection,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
