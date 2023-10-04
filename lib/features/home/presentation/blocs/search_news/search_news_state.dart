part of 'search_news_bloc.dart';

@freezed
class SearchNewsState with _$SearchNewsState {
  const factory SearchNewsState.initial() = _Initial;
  const factory SearchNewsState.loading() = _Loading;
  const factory SearchNewsState.loaded({
    required List<News> news,
    @Default(false) bool loadingMore,
    required int page,
  }) = SearchNewsLoadedState;
  const factory SearchNewsState.error() = _Error;
}
