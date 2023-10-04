import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsTextIcon extends StatelessWidget {
  const NewsTextIcon({
    super.key,
    required this.text,
    required this.icon,
    this.style,
    this.space = space8,
    this.iconSize = 20,
    this.iconColor = Palette.white,
    this.ltr = false,
    this.padding = edgeInsetsH20,
  });
  final String text;
  final IconData icon;
  final TextStyle? style;
  final SizedBox space;
  final double iconSize;
  final Color iconColor;
  final bool ltr;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final widgetText = Text(
      text,
      style: style ?? context.textTheme.labelMedium,
    );
    final widgetIcon = NewsIcon(
      icon: icon,
      rawSize: iconSize,
      color: iconColor,
    );
    return Padding(
      padding: padding,
      child: Row(
        children: [
          if (ltr) ...[
            widgetText,
            space,
            widgetIcon,
          ] else ...[
            widgetIcon,
            space,
            widgetText,
          ],
        ],
      ),
    );
  }
}
