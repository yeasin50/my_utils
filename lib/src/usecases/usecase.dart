part of my_utils;

/// A `UseCase` is a class that represents a single use case of your app.
/// It is the entry point to the domain layer.
abstract class UseCase<Type, Params> {
  /// Takes a [Params] object and executes the use case.
  Future<Either<Failure, Type>> call(Params params);
}
