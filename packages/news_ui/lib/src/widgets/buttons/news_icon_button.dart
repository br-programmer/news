import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsIconButton extends StatelessWidget {
  const NewsIconButton({
    super.key,
    this.icon,
    this.iconColor,
    this.iconSize = NewsIconSize.extraLarge,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.alignment = Alignment.center,
    this.rawSize,
    this.borderRadius,
    this.dimension = 32,
    this.child,
  });

  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final NewsIconSize iconSize;
  final void Function()? onPressed;
  final AlignmentGeometry alignment;
  final double? rawSize;
  final BorderRadius? borderRadius;
  final double dimension;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox.square(
        dimension: dimension,
        child: InkWell(
          onTap: onPressed,
          borderRadius: borderRadius ?? borderRadius10,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: Palette.redGradient,
              borderRadius: borderRadius ?? borderRadius10,
              border:
                  borderColor != null ? Border.all(color: borderColor!) : null,
            ),
            child: child ??
                NewsIcon(
                  icon: icon!,
                  size: iconSize,
                  color: iconColor,
                  rawSize: rawSize,
                ),
          ),
        ),
      ),
    );
  }
}
