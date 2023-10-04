import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';

part 'latest_news_bloc.freezed.dart';
part 'latest_news_event.dart';
part 'latest_news_state.dart';

class LatestNewsBloc extends Bloc<LatestNewsEvent, LatestNewsState> {
  LatestNewsBloc(
    super.initialState, {
    required INewsRepository newsRepository,
  }) : _newsRepository = newsRepository {
    on<_LoadedNews>(_loadedNewsToState);
  }

  final INewsRepository _newsRepository;

  LatestNewsLoadedState get loadedState => state.maybeMap(
        loaded: (value) => value,
        orElse: () => throw AssertionError(),
      );

  Future<void> _loadedNewsToState(
    _LoadedNews _,
    Emitter<LatestNewsState> emit,
  ) async {
    final page = state.maybeMap(
      orElse: () {
        emit(const LatestNewsState.loading());
        return 1;
      },
      loaded: (state) {
        emit(state.copyWith(loadingMore: true));
        return state.page + 1;
      },
    );
    final response = await _newsRepository.latestNews(page: page);
    response.when(
      left: (_) => state.maybeMap(
        loaded: (value) => emit(value),
        orElse: () => emit(const LatestNewsState.error()),
      ),
      right: (newsResponse) => state.maybeMap(
        orElse: () => emit(
          LatestNewsState.loaded(
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
}
