part of 'search_news_bloc.dart';

@freezed
class SearchNewsEvent with _$SearchNewsEvent {
  const factory SearchNewsEvent.searchNews({
    required NewsCategory category,
    @Default('') String query,
    @Default(true) bool reset,
  }) = _SearchedNews;
  const factory SearchNewsEvent.resetState() = _ResetedState;
}
