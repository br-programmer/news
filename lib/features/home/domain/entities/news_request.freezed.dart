// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsRequest _$NewsRequestFromJson(Map<String, dynamic> json) {
  return _NewsRequest.fromJson(json);
}

/// @nodoc
mixin _$NewsRequest {
  @JsonKey(name: 'q')
  String? get query => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsRequestCopyWith<NewsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsRequestCopyWith<$Res> {
  factory $NewsRequestCopyWith(
          NewsRequest value, $Res Function(NewsRequest) then) =
      _$NewsRequestCopyWithImpl<$Res, NewsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String? query,
      int pageSize,
      int page,
      String language,
      String? from,
      String? to,
      String? category});
}

/// @nodoc
class _$NewsRequestCopyWithImpl<$Res, $Val extends NewsRequest>
    implements $NewsRequestCopyWith<$Res> {
  _$NewsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? pageSize = null,
    Object? page = null,
    Object? language = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsRequestImplCopyWith<$Res>
    implements $NewsRequestCopyWith<$Res> {
  factory _$$NewsRequestImplCopyWith(
          _$NewsRequestImpl value, $Res Function(_$NewsRequestImpl) then) =
      __$$NewsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String? query,
      int pageSize,
      int page,
      String language,
      String? from,
      String? to,
      String? category});
}

/// @nodoc
class __$$NewsRequestImplCopyWithImpl<$Res>
    extends _$NewsRequestCopyWithImpl<$Res, _$NewsRequestImpl>
    implements _$$NewsRequestImplCopyWith<$Res> {
  __$$NewsRequestImplCopyWithImpl(
      _$NewsRequestImpl _value, $Res Function(_$NewsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? pageSize = null,
    Object? page = null,
    Object? language = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? category = freezed,
  }) {
    return _then(_$NewsRequestImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsRequestImpl implements _NewsRequest {
  _$NewsRequestImpl(
      {@JsonKey(name: 'q') this.query,
      this.pageSize = 10,
      this.page = 1,
      required this.language,
      this.from,
      this.to,
      this.category});

  factory _$NewsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'q')
  final String? query;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int page;
  @override
  final String language;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? category;

  @override
  String toString() {
    return 'NewsRequest(query: $query, pageSize: $pageSize, page: $page, language: $language, from: $from, to: $to, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, query, pageSize, page, language, from, to, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsRequestImplCopyWith<_$NewsRequestImpl> get copyWith =>
      __$$NewsRequestImplCopyWithImpl<_$NewsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsRequestImplToJson(
      this,
    );
  }
}

abstract class _NewsRequest implements NewsRequest {
  factory _NewsRequest(
      {@JsonKey(name: 'q') final String? query,
      final int pageSize,
      final int page,
      required final String language,
      final String? from,
      final String? to,
      final String? category}) = _$NewsRequestImpl;

  factory _NewsRequest.fromJson(Map<String, dynamic> json) =
      _$NewsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'q')
  String? get query;
  @override
  int get pageSize;
  @override
  int get page;
  @override
  String get language;
  @override
  String? get from;
  @override
  String? get to;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$NewsRequestImplCopyWith<_$NewsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
