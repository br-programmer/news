import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class SearchNewsForCategory extends StatelessWidget {
  const SearchNewsForCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: edgeInsetsH15.add(edgeInsetsT16),
      sliver: BlocBuilder<SearchNewsBloc, SearchNewsState>(
        builder: (context, state) => state.maybeMap(
          loading: (_) => const LoadingNewsForCategories(itemCount: 5),
          error: (_) => const SliverFillRemaining(
            hasScrollBody: false,
            child: Text('ERROR'),
          ),
          loaded: (loadedState) => NewsForCategoriesList(
            news: loadedState.news,
          ),
          initial: (value) => SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                texts.home.writeForSearchNews,
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink().toSliver,
        ),
      ),
    );
  }
}
