import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<L, R> with _$Either<L, R> {
  const Either._();
  const factory Either.left(L value) = Left<L, R>;
  const factory Either.right(R value) = Right<L, R>;

  bool get isLeft => when(right: (_) => false, left: (_) => true);
  bool get isRight => when(right: (_) => true, left: (_) => false);

  T? whenIsRight<T>(T Function(R value) fn) {
    return whenOrNull(right: fn);
  }

  T? whenIsLeft<T>(T Function(L value) fn) {
    return whenOrNull(left: fn);
  }
}
