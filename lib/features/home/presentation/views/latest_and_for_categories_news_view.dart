import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class LatestAndForCategoriesNewsView extends StatefulWidget {
  const LatestAndForCategoriesNewsView({super.key});

  @override
  State<LatestAndForCategoriesNewsView> createState() =>
      LatestAndForCategoriesNewsViewState();
}

class LatestAndForCategoriesNewsViewState
    extends State<LatestAndForCategoriesNewsView> {
  late final ScrollController scrollController;
  late final newsBloc = context.read<NewsBloc>();
  late final navStatusCubit = context.read<ValueCubit<NavStatus>>();

  @override
  void initState() {
    scrollController = ScrollController()..addListener(listener);
    super.initState();
  }

  void listener() {
    final axisDirection = scrollController.position.userScrollDirection;
    switch (axisDirection) {
      case ScrollDirection.forward:
        navStatusCubit.change(NavStatus.show);
      case ScrollDirection.reverse:
        navStatusCubit.change(NavStatus.hide);
      case ScrollDirection.idle:
        break;
    }
    final offsetPosition = scrollController.offset + 75 >=
        scrollController.position.maxScrollExtent;
    final outOfRange = scrollController.position.outOfRange;
    if (offsetPosition && !outOfRange && !newsBloc.loadedState.loadingMore) {
      newsBloc.add(
        NewsEvent.loadNews(
          category: newsBloc.loadedState.category,
          reset: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        gap20.toSliver,
        NewsSeeAllWidget(
          secondTitle: texts.home.seeAll,
          firstTitle: texts.home.latestNews,
          onTapSeeAll: () {},
          padding: edgeInsets15,
          useSliverToBoxAdapter: true,
          icon: NewsIcons.right,
        ),
        const LatestNews(),
        NewsCategories(
          onChanged: (category) => context.read<NewsBloc>().add(
                NewsEvent.loadNews(category: category, reset: true),
              ),
        ),
        const NewsForCategory(),
        gap108.toSliver,
      ],
    );
  }
}
