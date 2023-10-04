import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';

class NewsRepository implements INewsRepository {
  NewsRepository({required Http http}) : _http = http;

  final Http _http;

  @override
  FutureHttpRequest<NewsResponse> latestNews({int? page}) {
    final now = DateTime.now();
    return performHttpRequest(
      _http.send(
        '/v2/top-headlines',
        queryParameters: NewsRequest(
          language: LocaleSettings.currentLocale.languageCode,
          from: now.subtract(const Duration(hours: 24)).toIso8601String(),
          to: now.toIso8601String(),
          page: page ?? 1,
        ).toJson(),
        parser: (_, json) => NewsResponse.fromJson(json as Json),
      ),
    );
  }

  @override
  FutureHttpRequest<NewsResponse> news({required NewsRequest request}) {
    return performHttpRequest(
      _http.send(
        '/v2/top-headlines',
        queryParameters: request.toJson(),
        parser: (_, json) => NewsResponse.fromJson(json as Json),
      ),
    );
  }
}
