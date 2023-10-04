part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.loadNews({
    required NewsCategory category,
    required bool reset,
  }) = _LoadedNews;
}
