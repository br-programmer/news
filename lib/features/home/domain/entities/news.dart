import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  factory News({
    required Source source,
    String? author,
    required String title,
    String? description,
    required String url,
    String? urlToImage,
    required DateTime publishedAt,
    String? content,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

extension NewsX on News {
  String get by {
    if (author != null && author!.isNotEmpty) {
      return '${texts.home.by} $author';
    }
    return '${texts.home.by} ${texts.home.authorNotDefined}';
  }

  String get myAuthor {
    if (author != null && author!.isNotEmpty) {
      return author!;
    }
    return texts.home.authorNotDefined;
  }
}
