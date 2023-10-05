import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/home/home.dart';
import 'package:news_ui/news_ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LatestNewsBloc(
            const LatestNewsState.loading(),
            newsRepository: Repositories.news,
          )..add(const LatestNewsEvent.loadNews()),
        ),
        BlocProvider(
          create: (context) => NewsBloc(
            const NewsState.loading(),
            newsRepository: Repositories.news,
          )..add(
              const NewsEvent.loadNews(
                category: NewsCategory.business,
                reset: true,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => SearchNewsBloc(
            const SearchNewsState.initial(),
            newsRepository: Repositories.news,
          ),
        ),
        BlocProvider(
          create: (_) => ValueCubit(value: NewsCategory.values.first),
        ),
        BlocProvider(create: (_) => ValueCubit(value: '')),
      ],
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            if (Platform.isAndroid) ...[
              gap8,
            ],
            const NewsAppBar(),
            gap4,
            const _HomeViewBody(),
          ],
        ),
      ),
    );
  }
}

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  void _listener(BuildContext context, HomeViewStatus state) {
    final category = NewsCategory.values.first;
    switch (state) {
      case HomeViewStatus.general:
        context.read<SearchNewsBloc>().add(const SearchNewsEvent.resetState());
        context.read<ValueCubit<NewsCategory>>().change(category);
        context.read<ValueCubit<String>>().change('');
      case HomeViewStatus.search:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValueCubit<HomeViewStatus>, HomeViewStatus>(
      listener: _listener,
      builder: (_, state) => Expanded(
        child: AnimatedSize(
          duration: kThemeAnimationDuration,
          child: Builder(
            builder: (_) {
              switch (state) {
                case HomeViewStatus.general:
                  return const LatestAndForCategoriesNewsView();
                case HomeViewStatus.search:
                  return const SearchView();
              }
            },
          ),
        ),
      ),
    );
  }
}
