part of my_utils;

/// A `Failure` is a class that represents a failure of your app.
/// It can be a failure from the server, from the cache, from the device, etc.
/// This class is abstract, so you can't instantiate it.
/// This is used to handle errors in a functional way .
/// using [Either] from [fpdart](https://pub.dev/packages/fpdart) package.
///
/// ```dart
///  Future<Either<Failure, DataModel>>(......);
/// ```
///
abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object?> get props => [];
}

/// General failures
/// when unknown error occurred
/// [message] is the error message
///
class UnknownFailure extends Failure {
  /// create [UnknownFailure] with [msg] string
  const UnknownFailure(this.msg);

  /// error message
  final String msg;

  @override
  List<Object> get props => [msg];
}

/// when no internet connection available
class NetworkFailure extends Failure {
  @override
  List<Object?> get props => [super.props];
}

/// when server error occurred
/// topically when status code is 500
///
class ServerFailure extends Failure {}

/// when cache error occurred
///
class CacheFailure extends Failure {}

/// when data is null
class NullFailure extends Failure {}

/// when auth failed
/// topically when status code is 401
///
class AuthFailure extends Failure {}

/// when auth canceled by user
///
class AuthCancelByUser extends Failure {}

/// when permission failed
/// Some permission are required to use some features,
/// so this failure is used to handle permission failure.
/// 
class PermissionFailure extends Failure {
  /// create [PermissionFailure] with [msg] string
  const PermissionFailure({this.msg});

  /// specific message for this failure
  final String? msg;

  @override
  List<Object?> get props => [msg];
}

/// when validation failed
/// can be used to validate form fields.
///
/// [field] is the field name
/// [message] is the error message
/// 
class ValidationFailure extends Failure {
  const ValidationFailure({
    required this.field,
    required this.message,
  });

  final String field;
  final String message;

  @override
  List<Object> get props => [field, message];
}

/// Failure occurs when an operation exceeds the specified timeout.
/// 
class TimeoutFailure extends Failure {}


/// Failure occurs when there is an issue with the database(local)
/// [message] is the error message
/// 
class DatabaseFailure extends Failure {
  final String? message;

  const DatabaseFailure({this.message});

  @override
  List<Object?> get props => [message];
}

/// Failure occurs when the input data is in an unexpected format.
/// 
class UnexpectedFormatFailure extends Failure {}

/// Failure occurs when there is an issue with a third-party service.
class ExternalServiceFailure extends Failure {
  final String serviceName;

  const ExternalServiceFailure({required this.serviceName});

  @override
  List<Object> get props => [serviceName];
}

/// Failure occurs during file operations like reading or writing.
/// 
class FileOperationFailure extends Failure {
  final String operation;

  const FileOperationFailure({required this.operation});

  @override
  List<Object> get props => [operation];
}

/// Failure occurs when the application enters an unexpected state.
/// 
class UnexpectedStateFailure extends Failure {}