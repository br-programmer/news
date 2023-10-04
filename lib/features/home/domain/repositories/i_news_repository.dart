import 'package:news/core/core.dart';
import 'package:news/features/features.dart';

abstract class INewsRepository {
  FutureHttpRequest<NewsResponse> latestNews({int? page});
  FutureHttpRequest<NewsResponse> news({required NewsRequest request});
}
