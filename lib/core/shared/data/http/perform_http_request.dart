import 'dart:io';

import 'package:news/core/core.dart';

FutureEither<HttpRequestFailure, T> performHttpRequest<T>(
  Future<HttpResult<T>> future,
) async {
  final result = await future;

  return result.when(
    success: (_, value) => Either.right(value),
    failed: (statusCode, error) {
      if (error is SocketException) {
        return Either.left(HttpRequestFailure.network());
      }

      HttpRequestFailure? failure;
      switch (statusCode) {
        case 403:
          failure = HttpRequestFailure.unauthorized();
        case 404:
          failure = HttpRequestFailure.notFound();
        case 500:
          failure = HttpRequestFailure.server();
      }
      return Either.left(
        failure ?? HttpRequestFailure.unhandledException(error: error),
      );
    },
  );
}
