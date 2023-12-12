part of my_utils;

/// Extension on `Either` to get the value of `Right` or `Left`.
/// [Either] is a type that represents one of two possible values. An [Either] is either a [Left] or a [Right].
/// and using [fpdart](https://pub.dev/packages/fpdart) package.
/// 
extension EitherX<L, R> on Either<L, R> {
  /// Returns the value of `Right` 
  /// this is generally used when you want to get the value without folding.
  ///
  /// ```dart
  /// final either = Either<String, int>(......);
  /// if (either.isRight()) {
  ///  //....
  ///  final value = either.asRight();
  /// }
  R asRight() => (this as Right).value;

  /// Returns the value of `Left`
  /// this is generally used when you want to get the value without folding.
  /// 
  /// ```dart
  /// final either = Either<String, int>(......);
  /// if (either.isLeft()) {
  /// //....
  /// final value = either.asLeft();
  /// }
  L asLeft() => (this as Left).value;
}
