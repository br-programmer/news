import 'package:flutter/material.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: ClipRRect(
        borderRadius: borderRadius8,
        child: Stack(
          fit: StackFit.expand,
          children: [
            NewsImage(imageUrl: news.urlToImage),
            Padding(
              padding: edgeInsets8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    news.title,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: Palette.white,
                    ),
                    maxLines: 3,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          news.myAuthor,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: Palette.white,
                          ),
                        ),
                      ),
                      Text(
                        news.publishedAt.createAt(
                          LocaleSettings.currentLocale.languageCode,
                        ),
                        style: context.textTheme.labelMedium?.copyWith(
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCardLoading extends StatelessWidget {
  const NewsCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 2.5,
      child: NewsBaseShimmer(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Palette.grey,
            borderRadius: borderRadius6,
          ),
        ),
      ),
    );
  }
}
