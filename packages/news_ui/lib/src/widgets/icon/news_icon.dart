import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

enum NewsIconSize {
  minExtra(4),
  min(6),
  small(12),
  medium(16),
  large(18),
  bigger(20),
  extraLarge(25),
  extraBigger(60);

  const NewsIconSize(this.size);
  final double size;
}

class NewsIcon extends StatelessWidget {
  const NewsIcon({
    super.key,
    required this.icon,
    this.rawSize,
    this.size = NewsIconSize.extraLarge,
    this.color = Palette.white,
  });

  final IconData icon;
  final Color? color;
  final double? rawSize;
  final NewsIconSize size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: rawSize ?? size.size,
      color: color,
    );
  }
}
