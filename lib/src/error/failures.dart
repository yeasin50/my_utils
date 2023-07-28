part of my_utils;

abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object?> get props => [];
}

/// General failures
/// when unknown error occurred
/// [message] is the error message
class UnknownFailure extends Failure {
  const UnknownFailure(this.msg);

  final String msg;

  @override
  List<Object> get props => [msg];
}

/// when device is offline
class NetworkFailure extends Failure {
  @override
  List<Object?> get props => [super.props];
}

/// when server is down
class ServerFailure extends Failure {}

/// when cache is empty
class CacheFailure extends Failure {}

/// when data is null
class NullFailure extends Failure {}

/// when auth failed
class AuthFailure extends Failure {}

/// when auth failed
class AuthCancelByUser extends Failure {}

/// permission failure
class PermissionFailure extends Failure {
  const PermissionFailure({this.msg});
  final String? msg;

  @override
  List<Object?> get props => [msg];
}
