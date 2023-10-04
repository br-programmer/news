// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return _NewsResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsResponse {
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'articles')
  List<News> get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseCopyWith<NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCopyWith<$Res> {
  factory $NewsResponseCopyWith(
          NewsResponse value, $Res Function(NewsResponse) then) =
      _$NewsResponseCopyWithImpl<$Res, NewsResponse>;
  @useResult
  $Res call({int totalResults, @JsonKey(name: 'articles') List<News> news});
}

/// @nodoc
class _$NewsResponseCopyWithImpl<$Res, $Val extends NewsResponse>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? news = null,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsResponseImplCopyWith<$Res>
    implements $NewsResponseCopyWith<$Res> {
  factory _$$NewsResponseImplCopyWith(
          _$NewsResponseImpl value, $Res Function(_$NewsResponseImpl) then) =
      __$$NewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalResults, @JsonKey(name: 'articles') List<News> news});
}

/// @nodoc
class __$$NewsResponseImplCopyWithImpl<$Res>
    extends _$NewsResponseCopyWithImpl<$Res, _$NewsResponseImpl>
    implements _$$NewsResponseImplCopyWith<$Res> {
  __$$NewsResponseImplCopyWithImpl(
      _$NewsResponseImpl _value, $Res Function(_$NewsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? news = null,
  }) {
    return _then(_$NewsResponseImpl(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsResponseImpl implements _NewsResponse {
  _$NewsResponseImpl(
      {required this.totalResults,
      @JsonKey(name: 'articles') final List<News> news = const []})
      : _news = news;

  factory _$NewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsResponseImplFromJson(json);

  @override
  final int totalResults;
  final List<News> _news;
  @override
  @JsonKey(name: 'articles')
  List<News> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'NewsResponse(totalResults: $totalResults, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResponseImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalResults, const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResponseImplCopyWith<_$NewsResponseImpl> get copyWith =>
      __$$NewsResponseImplCopyWithImpl<_$NewsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsResponse implements NewsResponse {
  factory _NewsResponse(
      {required final int totalResults,
      @JsonKey(name: 'articles') final List<News> news}) = _$NewsResponseImpl;

  factory _NewsResponse.fromJson(Map<String, dynamic> json) =
      _$NewsResponseImpl.fromJson;

  @override
  int get totalResults;
  @override
  @JsonKey(name: 'articles')
  List<News> get news;
  @override
  @JsonKey(ignore: true)
  _$$NewsResponseImplCopyWith<_$NewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
