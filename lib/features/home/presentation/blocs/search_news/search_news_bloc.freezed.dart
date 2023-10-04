// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String query, bool reset)
        searchNews,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedNews value) searchNews,
    required TResult Function(_ResetedState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedNews value)? searchNews,
    TResult? Function(_ResetedState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedNews value)? searchNews,
    TResult Function(_ResetedState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNewsEventCopyWith<$Res> {
  factory $SearchNewsEventCopyWith(
          SearchNewsEvent value, $Res Function(SearchNewsEvent) then) =
      _$SearchNewsEventCopyWithImpl<$Res, SearchNewsEvent>;
}

/// @nodoc
class _$SearchNewsEventCopyWithImpl<$Res, $Val extends SearchNewsEvent>
    implements $SearchNewsEventCopyWith<$Res> {
  _$SearchNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchedNewsImplCopyWith<$Res> {
  factory _$$SearchedNewsImplCopyWith(
          _$SearchedNewsImpl value, $Res Function(_$SearchedNewsImpl) then) =
      __$$SearchedNewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsCategory category, String query, bool reset});
}

/// @nodoc
class __$$SearchedNewsImplCopyWithImpl<$Res>
    extends _$SearchNewsEventCopyWithImpl<$Res, _$SearchedNewsImpl>
    implements _$$SearchedNewsImplCopyWith<$Res> {
  __$$SearchedNewsImplCopyWithImpl(
      _$SearchedNewsImpl _value, $Res Function(_$SearchedNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? query = null,
    Object? reset = null,
  }) {
    return _then(_$SearchedNewsImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      reset: null == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchedNewsImpl implements _SearchedNews {
  const _$SearchedNewsImpl(
      {required this.category, this.query = '', this.reset = true});

  @override
  final NewsCategory category;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool reset;

  @override
  String toString() {
    return 'SearchNewsEvent.searchNews(category: $category, query: $query, reset: $reset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedNewsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, query, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedNewsImplCopyWith<_$SearchedNewsImpl> get copyWith =>
      __$$SearchedNewsImplCopyWithImpl<_$SearchedNewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String query, bool reset)
        searchNews,
    required TResult Function() resetState,
  }) {
    return searchNews(category, query, reset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult? Function()? resetState,
  }) {
    return searchNews?.call(category, query, reset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(category, query, reset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedNews value) searchNews,
    required TResult Function(_ResetedState value) resetState,
  }) {
    return searchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedNews value)? searchNews,
    TResult? Function(_ResetedState value)? resetState,
  }) {
    return searchNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedNews value)? searchNews,
    TResult Function(_ResetedState value)? resetState,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(this);
    }
    return orElse();
  }
}

abstract class _SearchedNews implements SearchNewsEvent {
  const factory _SearchedNews(
      {required final NewsCategory category,
      final String query,
      final bool reset}) = _$SearchedNewsImpl;

  NewsCategory get category;
  String get query;
  bool get reset;
  @JsonKey(ignore: true)
  _$$SearchedNewsImplCopyWith<_$SearchedNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetedStateImplCopyWith<$Res> {
  factory _$$ResetedStateImplCopyWith(
          _$ResetedStateImpl value, $Res Function(_$ResetedStateImpl) then) =
      __$$ResetedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetedStateImplCopyWithImpl<$Res>
    extends _$SearchNewsEventCopyWithImpl<$Res, _$ResetedStateImpl>
    implements _$$ResetedStateImplCopyWith<$Res> {
  __$$ResetedStateImplCopyWithImpl(
      _$ResetedStateImpl _value, $Res Function(_$ResetedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetedStateImpl implements _ResetedState {
  const _$ResetedStateImpl();

  @override
  String toString() {
    return 'SearchNewsEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String query, bool reset)
        searchNews,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String query, bool reset)?
        searchNews,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchedNews value) searchNews,
    required TResult Function(_ResetedState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchedNews value)? searchNews,
    TResult? Function(_ResetedState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchedNews value)? searchNews,
    TResult Function(_ResetedState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetedState implements SearchNewsEvent {
  const factory _ResetedState() = _$ResetedStateImpl;
}

/// @nodoc
mixin _$SearchNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SearchNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNewsStateCopyWith<$Res> {
  factory $SearchNewsStateCopyWith(
          SearchNewsState value, $Res Function(SearchNewsState) then) =
      _$SearchNewsStateCopyWithImpl<$Res, SearchNewsState>;
}

/// @nodoc
class _$SearchNewsStateCopyWithImpl<$Res, $Val extends SearchNewsState>
    implements $SearchNewsStateCopyWith<$Res> {
  _$SearchNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchNewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchNewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SearchNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchNewsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchNewsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SearchNewsState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SearchNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchNewsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SearchNewsLoadedStateImplCopyWith<$Res> {
  factory _$$SearchNewsLoadedStateImplCopyWith(
          _$SearchNewsLoadedStateImpl value,
          $Res Function(_$SearchNewsLoadedStateImpl) then) =
      __$$SearchNewsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<News> news, bool loadingMore, int page});
}

/// @nodoc
class __$$SearchNewsLoadedStateImplCopyWithImpl<$Res>
    extends _$SearchNewsStateCopyWithImpl<$Res, _$SearchNewsLoadedStateImpl>
    implements _$$SearchNewsLoadedStateImplCopyWith<$Res> {
  __$$SearchNewsLoadedStateImplCopyWithImpl(_$SearchNewsLoadedStateImpl _value,
      $Res Function(_$SearchNewsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? loadingMore = null,
    Object? page = null,
  }) {
    return _then(_$SearchNewsLoadedStateImpl(
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
    ));
  }
}

/// @nodoc

class _$SearchNewsLoadedStateImpl implements SearchNewsLoadedState {
  const _$SearchNewsLoadedStateImpl(
      {required final List<News> news,
      this.loadingMore = false,
      required this.page})
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
  String toString() {
    return 'SearchNewsState.loaded(news: $news, loadingMore: $loadingMore, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNewsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_news), loadingMore, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNewsLoadedStateImplCopyWith<_$SearchNewsLoadedStateImpl>
      get copyWith => __$$SearchNewsLoadedStateImplCopyWithImpl<
          _$SearchNewsLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(news, loadingMore, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(news, loadingMore, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news, loadingMore, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SearchNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchNewsLoadedState implements SearchNewsState {
  const factory SearchNewsLoadedState(
      {required final List<News> news,
      final bool loadingMore,
      required final int page}) = _$SearchNewsLoadedStateImpl;

  List<News> get news;
  bool get loadingMore;
  int get page;
  @JsonKey(ignore: true)
  _$$SearchNewsLoadedStateImplCopyWith<_$SearchNewsLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SearchNewsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SearchNewsState.error()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SearchNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SearchNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SearchNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchNewsState {
  const factory _Error() = _$ErrorImpl;
}
