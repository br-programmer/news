import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  late final PageController controller;
  late final ValueNotifier<double> page;
  late final latestNewsBloc = context.read<LatestNewsBloc>();

  void listener() {
    final currentPage = controller.page!;
    final loadedState = latestNewsBloc.loadedState;
    if (currentPage + 1 >= loadedState.news.length &&
        !loadedState.loadingMore) {
      latestNewsBloc.add(const LatestNewsEvent.loadNews());
    }
    page.value = currentPage;
  }

  @override
  void initState() {
    controller = PageController(viewportFraction: .925)..addListener(listener);
    page = ValueNotifier<double>(0);
    super.initState();
  }

  @override
  void dispose() {
    controller
      ..removeListener(listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BlocBuilder<LatestNewsBloc, LatestNewsState>(
        builder: (context, state) => state.maybeMap(
          orElse: SizedBox.shrink,
          loading: (_) => const NewsBaseShimmer(
            child: Padding(
              padding: edgeInsetsH20,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Palette.grey,
                  borderRadius: borderRadius6,
                ),
              ),
            ),
          ),
          loaded: (loadedState) {
            final news = loadedState.news;
            return LayoutBuilder(
              builder: (_, constraints) => ValueListenableBuilder<double>(
                valueListenable: page,
                builder: (_, value, __) => PageView.builder(
                  controller: controller,
                  itemCount: news.length,
                  itemBuilder: (_, index) {
                    final paddingTop = lerpDouble(0, 1, (index - value).abs())!;
                    final opacity = lerpDouble(.0, .5, (index - value).abs())!;
                    final verticalPadding = EdgeInsets.symmetric(
                      vertical: constraints.maxHeight * (.05 * paddingTop),
                    );
                    return Opacity(
                      opacity: 1 - opacity,
                      child: Padding(
                        padding: edgeInsetsH4.add(verticalPadding),
                        child: _LatestNewsItem(news: news[index]),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    ).toSliver;
  }
}

class _LatestNewsItem extends StatelessWidget {
  const _LatestNewsItem({required this.news});
  final News news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius8,
      child: Stack(
        fit: StackFit.expand,
        children: [
          NewsImage(imageUrl: news.urlToImage),
          Padding(
            padding: edgeInsets16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        news.by,
                        style: context.textTheme.displayMedium?.copyWith(
                          color: Palette.white,
                        ),
                      ),
                      gap4,
                      Text(
                        news.title,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Palette.white,
                        ),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                Text(
                  news.content ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.labelSmall?.copyWith(
                    color: Palette.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
