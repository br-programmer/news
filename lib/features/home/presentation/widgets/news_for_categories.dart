import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class NewsForCategory extends StatelessWidget {
  const NewsForCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: edgeInsetsH15,
      sliver: BlocBuilder<NewsBloc, NewsState>(
        builder: (_, state) => state.maybeMap(
          orElse: () => const SliverFillRemaining(
            child: Center(child: Text('ERROR')),
          ),
          loading: (_) => const LoadingNewsForCategories(),
          loaded: (loadedState) => NewsForCategoriesList(
            news: loadedState.news,
          ),
        ),
      ),
    );
  }
}
