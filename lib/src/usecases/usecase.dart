part of my_utils;

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
