import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        gap20.toSliver,
        NewsCategories(
          onChanged: (category) {
            final searchBloc = context.read<SearchNewsBloc>();
            final query = context.read<ValueCubit<String>>().state;
            context.read<ValueCubit<NewsCategory>>().change(category);
            if (query.isNotEmpty) {
              searchBloc.add(
                SearchNewsEvent.searchNews(category: category, query: query),
              );
            }
          },
        ),
        const SearchNewsForCategory(),
      ],
    );
  }
}
