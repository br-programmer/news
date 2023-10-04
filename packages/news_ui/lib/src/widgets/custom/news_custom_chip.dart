import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsCustomChip extends StatelessWidget {
  const NewsCustomChip({
    super.key,
    required this.enable,
    required this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  });
  final bool enable;
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Palette.transparent,
      highlightColor: Palette.transparent,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: enable ? Palette.redLight : Palette.whiteLight,
          ),
          color: color,
          borderRadius: borderRadius16,
          gradient: enable ? Palette.redGradient : null,
        ),
        child: Padding(
          padding: edgeInsetsV8.add(edgeInsetsH16),
          child: Text(
            text,
            style: textStyle ??
                context.textTheme.labelMedium?.copyWith(
                  color: !enable ? Palette.redDark : Palette.white,
                ),
          ),
        ),
      ),
    );
  }
}
