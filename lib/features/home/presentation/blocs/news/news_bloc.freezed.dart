// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  NewsCategory get category => throw _privateConstructorUsedError;
  bool get reset => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, bool reset) loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, bool reset)? loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, bool reset)? loadNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedNews value) loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedNews value)? loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedNews value)? loadNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
  @useResult
  $Res call({NewsCategory category, bool reset});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? reset = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedNewsImplCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$$LoadedNewsImplCopyWith(
          _$LoadedNewsImpl value, $Res Function(_$LoadedNewsImpl) then) =
      __$$LoadedNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsCategory category, bool reset});
}

/// @nodoc
class __$$LoadedNewsImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$LoadedNewsImpl>
    implements _$$LoadedNewsImplCopyWith<$Res> {
  __$$LoadedNewsImplCopyWithImpl(
      _$LoadedNewsImpl _value, $Res Function(_$LoadedNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? reset = null,
  }) {
    return _then(_$LoadedNewsImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedNewsImpl implements _LoadedNews {
  const _$LoadedNewsImpl({required this.category, required this.reset});

  @override
  final NewsCategory category;
  @override
  final bool reset;

  @override
  String toString() {
    return 'NewsEvent.loadNews(category: $category, reset: $reset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedNewsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedNewsImplCopyWith<_$LoadedNewsImpl> get copyWith =>
      __$$LoadedNewsImplCopyWithImpl<_$LoadedNewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, bool reset) loadNews,
  }) {
    return loadNews(category, reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, bool reset)? loadNews,
  }) {
    return loadNews?.call(category, reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, bool reset)? loadNews,
    required TResult orElse(),
  }) {
    if (loadNews != null) {
      return loadNews(category, reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedNews value) loadNews,
  }) {
    return loadNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedNews value)? loadNews,
  }) {
    return loadNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedNews value)? loadNews,
    required TResult orElse(),
  }) {
    if (loadNews != null) {
      return loadNews(this);
    }
    return orElse();
  }
}

abstract class _LoadedNews implements NewsEvent {
  const factory _LoadedNews(
      {required final NewsCategory category,
      required final bool reset}) = _$LoadedNewsImpl;

  @override
  NewsCategory get category;
  @override
  bool get reset;
  @override
  @JsonKey(ignore: true)
  _$$LoadedNewsImplCopyWith<_$LoadedNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NewsLoadedStateImplCopyWith<$Res> {
  factory _$$NewsLoadedStateImplCopyWith(_$NewsLoadedStateImpl value,
          $Res Function(_$NewsLoadedStateImpl) then) =
      __$$NewsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<News> news, bool loadingMore, int page, NewsCategory category});
}

/// @nodoc
class __$$NewsLoadedStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadedStateImpl>
    implements _$$NewsLoadedStateImplCopyWith<$Res> {
  __$$NewsLoadedStateImplCopyWithImpl(
      _$NewsLoadedStateImpl _value, $Res Function(_$NewsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? loadingMore = null,
    Object? page = null,
    Object? category = null,
  }) {
    return _then(_$NewsLoadedStateImpl(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory,
    ));
  }
}

/// @nodoc

class _$NewsLoadedStateImpl implements NewsLoadedState {
  const _$NewsLoadedStateImpl(
      {required final List<News> news,
      this.loadingMore = false,
      required this.page,
      required this.category})
      : _news = news;

  final List<News> _news;
  @override
  List<News> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  @JsonKey()
  final bool loadingMore;
  @override
  final int page;
  @override
  final NewsCategory category;

  @override
  String toString() {
    return 'NewsState.loaded(news: $news, loadingMore: $loadingMore, page: $page, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_news), loadingMore, page, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadedStateImplCopyWith<_$NewsLoadedStateImpl> get copyWith =>
      __$$NewsLoadedStateImplCopyWithImpl<_$NewsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(news, loadingMore, page, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(news, loadingMore, page, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news, loadingMore, page, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoadedState implements NewsState {
  const factory NewsLoadedState(
      {required final List<News> news,
      final bool loadingMore,
      required final int page,
      required final NewsCategory category}) = _$NewsLoadedStateImpl;

  List<News> get news;
  bool get loadingMore;
  int get page;
  NewsCategory get category;
  @JsonKey(ignore: true)
  _$$NewsLoadedStateImplCopyWith<_$NewsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'NewsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<News> news, bool loadingMore, int page, NewsCategory category)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NewsState {
  const factory _Error() = _$ErrorImpl;
}
