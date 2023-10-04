// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'news_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsRequestImpl _$$NewsRequestImplFromJson(Map<String, dynamic> json) =>
    _$NewsRequestImpl(
      query: json['q'] as String?,
      pageSize: json['pageSize'] as int? ?? 10,
      page: json['page'] as int? ?? 1,
      language: json['language'] as String,
      from: json['from'] as String?,
      to: json['to'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$NewsRequestImplToJson(_$NewsRequestImpl instance) =>
    <String, dynamic>{
      'q': instance.query,
      'pageSize': instance.pageSize,
      'page': instance.page,
      'language': instance.language,
      'from': instance.from,
      'to': instance.to,
      'category': instance.category,
    };
