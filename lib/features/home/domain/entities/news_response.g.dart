// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsResponseImpl _$$NewsResponseImplFromJson(Map<String, dynamic> json) =>
    _$NewsResponseImpl(
      totalResults: json['totalResults'] as int,
      news: (json['articles'] as List<dynamic>?)
              ?.map((e) => News.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NewsResponseImplToJson(_$NewsResponseImpl instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'articles': instance.news.map((e) => e.toJson()).toList(),
    };
