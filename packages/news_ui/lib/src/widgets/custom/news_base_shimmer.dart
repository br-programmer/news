import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';
import 'package:shimmer/shimmer.dart';

class NewsBaseShimmer extends StatelessWidget {
  const NewsBaseShimmer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Palette.grey,
      highlightColor: Palette.whiteLight,
      child: child,
    );
  }
}
