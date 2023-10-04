import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';

part 'search_news_bloc.freezed.dart';
part 'search_news_event.dart';
part 'search_news_state.dart';

class SearchNewsBloc extends Bloc<SearchNewsEvent, SearchNewsState> {
  SearchNewsBloc(
    super.initialState, {
    required INewsRepository newsRepository,
  }) : _newsRepository = newsRepository {
    on<_SearchedNews>(_searchedNewsToState);
    on<_ResetedState>(_resetedStateToState);
  }

  final INewsRepository _newsRepository;

  SearchNewsLoadedState get loadedState => state.maybeMap(
        loaded: (value) => value,
        orElse: () => throw AssertionError(),
      );

  Future<void> _searchedNewsToState(
    _SearchedNews event,
    Emitter<SearchNewsState> emit,
  ) async {
    if (event.reset) {
      emit(const SearchNewsState.loading());
    }
    final page = state.maybeMap(
      orElse: () {
        emit(const SearchNewsState.loading());
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
      query: event.query,
    );
    final response = await _newsRepository.news(
      request: request,
    );
    response.when(
      left: (_) => state.maybeMap(
        loaded: (state) => emit(state),
        orElse: () => emit(const SearchNewsState.error()),
      ),
      right: (newsResponse) => state.maybeMap(
        orElse: () => emit(
          SearchNewsState.loaded(
            news: newsResponse.news,
            page: page,
          ),
        ),
        loaded: (state) => emit(
          state.copyWith(
            news: [...state.news, ...newsResponse.news],
            loadingMore: false,
            page: page,
          ),
        ),
      ),
    );
  }

  void _resetedStateToState(_ResetedState _, Emitter<SearchNewsState> emit) {
    emit(const SearchNewsState.initial());
  }
}
