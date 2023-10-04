import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  factory NewsResponse({
    required int totalResults,
    @JsonKey(name: 'articles') @Default([]) List<News> news,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
