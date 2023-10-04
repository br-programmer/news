import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class HttpResult<T> with _$HttpResult<T> {
  factory HttpResult.success(int statusCode, T data) = _HttpSuccess<T>;
  factory HttpResult.failed(int? statusCode, Object? data) = _HttpFailed<T>;
}
