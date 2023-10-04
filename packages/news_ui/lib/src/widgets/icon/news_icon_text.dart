import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsIconText extends StatelessWidget {
  const NewsIconText({
    super.key,
    required this.icon,
    this.rawSize,
    this.size = NewsIconSize.extraLarge,
    this.color = Palette.white,
    this.text,
    this.style,
  });

  final String? text;
  final TextStyle? style;
  final IconData icon;
  final Color? color;
  final double? rawSize;
  final NewsIconSize size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NewsIcon(
          icon: icon,
          color: color,
          rawSize: rawSize,
          size: size,
        ),
        if (text != null) ...[
          space4,
          Flexible(
            child: Text(
              text!,
              style: style ?? context.textTheme.bodyMedium,
            ),
          ),
        ],
      ],
    );
  }
}
