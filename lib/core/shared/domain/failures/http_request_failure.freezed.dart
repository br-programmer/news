// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpRequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestFailureCopyWith<$Res> {
  factory $HttpRequestFailureCopyWith(
          HttpRequestFailure value, $Res Function(HttpRequestFailure) then) =
      _$HttpRequestFailureCopyWithImpl<$Res, HttpRequestFailure>;
}

/// @nodoc
class _$HttpRequestFailureCopyWithImpl<$Res, $Val extends HttpRequestFailure>
    implements $HttpRequestFailureCopyWith<$Res> {
  _$HttpRequestFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkImpl implements _Network {
  _$NetworkImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements HttpRequestFailure {
  factory _Network() = _$NetworkImpl;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  _$NotFoundImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements HttpRequestFailure {
  factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerImpl implements _Server {
  _$ServerImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements HttpRequestFailure {
  factory _Server() = _$ServerImpl;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  _$UnauthorizedImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements HttpRequestFailure {
  factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$UnhandledExceptionImplCopyWith<$Res> {
  factory _$$UnhandledExceptionImplCopyWith(_$UnhandledExceptionImpl value,
          $Res Function(_$UnhandledExceptionImpl) then) =
      __$$UnhandledExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$UnhandledExceptionImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$UnhandledExceptionImpl>
    implements _$$UnhandledExceptionImplCopyWith<$Res> {
  __$$UnhandledExceptionImplCopyWithImpl(_$UnhandledExceptionImpl _value,
      $Res Function(_$UnhandledExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UnhandledExceptionImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$UnhandledExceptionImpl implements _UnhandledException {
  _$UnhandledExceptionImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'HttpRequestFailure.unhandledException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnhandledExceptionImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnhandledExceptionImplCopyWith<_$UnhandledExceptionImpl> get copyWith =>
      __$$UnhandledExceptionImplCopyWithImpl<_$UnhandledExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() network,
    required TResult Function() notFound,
    required TResult Function() server,
    required TResult Function() unauthorized,
    required TResult Function(Object? error) unhandledException,
  }) {
    return unhandledException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? network,
    TResult? Function()? notFound,
    TResult? Function()? server,
    TResult? Function()? unauthorized,
    TResult? Function(Object? error)? unhandledException,
  }) {
    return unhandledException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? network,
    TResult Function()? notFound,
    TResult Function()? server,
    TResult Function()? unauthorized,
    TResult Function(Object? error)? unhandledException,
    required TResult orElse(),
  }) {
    if (unhandledException != null) {
      return unhandledException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Server value) server,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UnhandledException value) unhandledException,
  }) {
    return unhandledException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Network value)? network,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Server value)? server,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_UnhandledException value)? unhandledException,
  }) {
    return unhandledException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Server value)? server,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UnhandledException value)? unhandledException,
    required TResult orElse(),
  }) {
    if (unhandledException != null) {
      return unhandledException(this);
    }
    return orElse();
  }
}

abstract class _UnhandledException implements HttpRequestFailure {
  factory _UnhandledException({final Object? error}) = _$UnhandledExceptionImpl;

  Object? get error;
  @JsonKey(ignore: true)
  _$$UnhandledExceptionImplCopyWith<_$UnhandledExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
