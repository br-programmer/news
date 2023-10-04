part of 'latest_news_bloc.dart';

@freezed
class LatestNewsState with _$LatestNewsState {
  const factory LatestNewsState.loading() = _Loading;
  const factory LatestNewsState.loaded({
    required List<News> news,
    @Default(false) bool loadingMore,
    required int page,
  }) = LatestNewsLoadedState;
  const factory LatestNewsState.error() = _Error;
}
