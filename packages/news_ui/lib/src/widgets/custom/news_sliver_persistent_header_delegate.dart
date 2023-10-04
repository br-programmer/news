import 'package:flutter/material.dart';

class NewsSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  NewsSliverPersistentHeaderDelegate({
    required this.child,
    required this.maxHeight,
    required this.minHeight,
    this.onPercent,
  });

  final Widget child;
  final double maxHeight;
  final double minHeight;
  final ValueChanged<double>? onPercent;

  @override
  Widget build(context, shrinkOffset, __) {
    onPercent?.call(shrinkOffset / maxHeight);
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_) => true;
}
