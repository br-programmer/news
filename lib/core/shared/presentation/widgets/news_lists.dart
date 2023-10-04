import 'package:flutter/material.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class NewsForCategoriesList extends StatelessWidget {
  const NewsForCategoriesList({super.key, required this.news});
  final List<News> news;

  @override
  Widget build(BuildContext context) {
    if (news.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NewsIcon(
              icon: NewsIcons.search,
              color: Palette.black,
              rawSize: 50,
            ),
            gap8,
            Text(
              texts.home.noNewsFound,
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
      );
    }
    return SliverList.separated(
      itemBuilder: (_, index) => NewsCard(news: news[index]),
      separatorBuilder: (_, index) => gap8,
      itemCount: news.length,
    );
  }
}

class LoadingNewsForCategories extends StatelessWidget {
  const LoadingNewsForCategories({super.key, this.itemCount = 3});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (_, index) => const NewsCardLoading(),
      separatorBuilder: (_, __) => gap8,
      itemCount: itemCount,
    );
  }
}
