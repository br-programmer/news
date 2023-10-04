import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_request_failure.freezed.dart';

@freezed
class HttpRequestFailure with _$HttpRequestFailure implements Exception {
  factory HttpRequestFailure.network() = _Network;
  factory HttpRequestFailure.notFound() = _NotFound;
  factory HttpRequestFailure.server() = _Server;
  factory HttpRequestFailure.unauthorized() = _Unauthorized;
  factory HttpRequestFailure.unhandledException({Object? error}) =
      _UnhandledException;
}
