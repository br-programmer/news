// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LatestNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNews,
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
}

/// @nodoc
abstract class $LatestNewsEventCopyWith<$Res> {
  factory $LatestNewsEventCopyWith(
          LatestNewsEvent value, $Res Function(LatestNewsEvent) then) =
      _$LatestNewsEventCopyWithImpl<$Res, LatestNewsEvent>;
}

/// @nodoc
class _$LatestNewsEventCopyWithImpl<$Res, $Val extends LatestNewsEvent>
    implements $LatestNewsEventCopyWith<$Res> {
  _$LatestNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedNewsImplCopyWith<$Res> {
  factory _$$LoadedNewsImplCopyWith(
          _$LoadedNewsImpl value, $Res Function(_$LoadedNewsImpl) then) =
      __$$LoadedNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedNewsImplCopyWithImpl<$Res>
    extends _$LatestNewsEventCopyWithImpl<$Res, _$LoadedNewsImpl>
    implements _$$LoadedNewsImplCopyWith<$Res> {
  __$$LoadedNewsImplCopyWithImpl(
      _$LoadedNewsImpl _value, $Res Function(_$LoadedNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedNewsImpl implements _LoadedNews {
  const _$LoadedNewsImpl();

  @override
  String toString() {
    return 'LatestNewsEvent.loadNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNews,
  }) {
    return loadNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNews,
  }) {
    return loadNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNews,
    required TResult orElse(),
  }) {
    if (loadNews != null) {
      return loadNews();
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

abstract class _LoadedNews implements LatestNewsEvent {
  const factory _LoadedNews() = _$LoadedNewsImpl;
}

/// @nodoc
mixin _$LatestNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(LatestNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(LatestNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(LatestNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestNewsStateCopyWith<$Res> {
  factory $LatestNewsStateCopyWith(
          LatestNewsState value, $Res Function(LatestNewsState) then) =
      _$LatestNewsStateCopyWithImpl<$Res, LatestNewsState>;
}

/// @nodoc
class _$LatestNewsStateCopyWithImpl<$Res, $Val extends LatestNewsState>
    implements $LatestNewsStateCopyWith<$Res> {
  _$LatestNewsStateCopyWithImpl(this._value, this._then);

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
    extends _$LatestNewsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'LatestNewsState.loading()';
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
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Loading value) loading,
    required TResult Function(LatestNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(LatestNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(LatestNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LatestNewsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LatestNewsLoadedStateImplCopyWith<$Res> {
  factory _$$LatestNewsLoadedStateImplCopyWith(
          _$LatestNewsLoadedStateImpl value,
          $Res Function(_$LatestNewsLoadedStateImpl) then) =
      __$$LatestNewsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<News> news, bool loadingMore, int page});
}

/// @nodoc
class __$$LatestNewsLoadedStateImplCopyWithImpl<$Res>
    extends _$LatestNewsStateCopyWithImpl<$Res, _$LatestNewsLoadedStateImpl>
    implements _$$LatestNewsLoadedStateImplCopyWith<$Res> {
  __$$LatestNewsLoadedStateImplCopyWithImpl(_$LatestNewsLoadedStateImpl _value,
      $Res Function(_$LatestNewsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? loadingMore = null,
    Object? page = null,
  }) {
    return _then(_$LatestNewsLoadedStateImpl(
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

class _$LatestNewsLoadedStateImpl implements LatestNewsLoadedState {
  const _$LatestNewsLoadedStateImpl(
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
    return 'LatestNewsState.loaded(news: $news, loadingMore: $loadingMore, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestNewsLoadedStateImpl &&
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
  _$$LatestNewsLoadedStateImplCopyWith<_$LatestNewsLoadedStateImpl>
      get copyWith => __$$LatestNewsLoadedStateImplCopyWithImpl<
          _$LatestNewsLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(news, loadingMore, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Loading value) loading,
    required TResult Function(LatestNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(LatestNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(LatestNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LatestNewsLoadedState implements LatestNewsState {
  const factory LatestNewsLoadedState(
      {required final List<News> news,
      final bool loadingMore,
      required final int page}) = _$LatestNewsLoadedStateImpl;

  List<News> get news;
  bool get loadingMore;
  int get page;
  @JsonKey(ignore: true)
  _$$LatestNewsLoadedStateImplCopyWith<_$LatestNewsLoadedStateImpl>
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
    extends _$LatestNewsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'LatestNewsState.error()';
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
    required TResult Function(List<News> news, bool loadingMore, int page)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<News> news, bool loadingMore, int page)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_Loading value) loading,
    required TResult Function(LatestNewsLoadedState value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(LatestNewsLoadedState value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(LatestNewsLoadedState value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LatestNewsState {
  const factory _Error() = _$ErrorImpl;
}
