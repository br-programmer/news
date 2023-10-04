import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsSeeAllWidget extends StatelessWidget {
  const NewsSeeAllWidget({
    super.key,
    this.firstTitle,
    required this.secondTitle,
    required this.onTapSeeAll,
    this.useSliverToBoxAdapter = false,
    this.padding = edgeInsetsZero,
    this.icon,
  });

  final String? firstTitle;
  final String secondTitle;
  final VoidCallback onTapSeeAll;
  final bool useSliverToBoxAdapter;
  final EdgeInsets padding;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final widget = Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (firstTitle != null) ...[
            Text(
              firstTitle!,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 18,
              ),
            ),
          ],
          InkWell(
            onTap: onTapSeeAll,
            splashColor: Palette.transparent,
            hoverColor: Palette.transparent,
            highlightColor: Palette.transparent,
            focusColor: Palette.transparent,
            child: Row(
              children: [
                Text(
                  secondTitle,
                  style: textTheme.labelMedium?.copyWith(
                    color: Palette.blue,
                  ),
                ),
                if (icon != null) ...[
                  space8,
                  NewsIcon(
                    icon: icon!,
                    color: Palette.blue,
                    size: NewsIconSize.small,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
    if (useSliverToBoxAdapter) {
      return widget.toSliver;
    }
    return widget;
  }
}
