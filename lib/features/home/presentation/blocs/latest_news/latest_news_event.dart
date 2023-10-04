part of 'latest_news_bloc.dart';

@freezed
class LatestNewsEvent with _$LatestNewsEvent {
  const factory LatestNewsEvent.loadNews() = _LoadedNews;
}
