import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
    this.errorWidget = const SizedBox.shrink(),
    this.width,
    this.height,
    this.placeholder,
  });
  final String? imageUrl;
  final BoxFit fit;
  final Widget errorWidget;
  final double? width;
  final double? height;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    var url = imageUrl;
    url ??=
        'https://images.wallpaperscraft.com/image/single/newspaper_ball_glass_4338_2560x1440.jpg';
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      width: width,
      height: height,
      placeholder: (_, __) =>
          placeholder ??
          const NewsBaseShimmer(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Palette.grey),
            ),
          ),
      errorWidget: (_, __, ___) => errorWidget,
    );
  }
}
