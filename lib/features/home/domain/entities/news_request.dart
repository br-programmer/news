import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_request.freezed.dart';
part 'news_request.g.dart';

@freezed
class NewsRequest with _$NewsRequest {
  factory NewsRequest({
    @JsonKey(name: 'q') String? query,
    @Default(10) int pageSize,
    @Default(1) int page,
    required String language,
    String? from,
    String? to,
    String? category,
  }) = _NewsRequest;

  factory NewsRequest.fromJson(Map<String, dynamic> json) =>
      _$NewsRequestFromJson(json);
}
