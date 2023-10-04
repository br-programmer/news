import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(
    super.initialState, {
    required INewsRepository newsRepository,
  }) : _newsRepository = newsRepository {
    on<_LoadedNews>(_loadedNewsToState);
  }

  final INewsRepository _newsRepository;

  NewsLoadedState get loadedState => state.maybeMap(
        loaded: (value) => value,
        orElse: () => throw AssertionError(),
      );

  Future<void> _loadedNewsToState(
    _LoadedNews event,
    Emitter<NewsState> emit,
  ) async {
    if (event.reset) {
      emit(const NewsState.loading());
    }
    final page = state.maybeMap(
      orElse: () {
        emit(const NewsState.loading());
        return 1;
      },
      loaded: (state) {
        emit(state.copyWith(loadingMore: true));
        return state.page + 1;
      },
    );
    final request = NewsRequest(
      language: LocaleSettings.currentLocale.languageCode,
      category: event.category.name,
      page: page,
    );
    final response = await _newsRepository.news(
      request: request,
    );
    response.when(
      left: (_) => state.maybeMap(
        loaded: (value) => emit(value),
        orElse: () => emit(const NewsState.error()),
      ),
      right: (newsResponse) => state.maybeMap(
        orElse: () => emit(
          NewsState.loaded(
            news: newsResponse.news,
            page: page,
            category: event.category,
          ),
        ),
        loaded: (state) => emit(
          state.copyWith(
            news: [...state.news, ...newsResponse.news],
            loadingMore: false,
            page: page,
            category: event.category,
          ),
        ),
      ),
    );
  }
}
