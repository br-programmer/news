part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loaded({
    required List<News> news,
    @Default(false) bool loadingMore,
    required int page,
    required NewsCategory category,
  }) = NewsLoadedState;
  const factory NewsState.error() = _Error;
}
