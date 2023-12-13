library my_utils;

import '../error/failures.dart';

extension FailureMessage on Failure {
  /// return message of the failure as string
  ///
  /// ```dart
  /// final failure = NetworkFailure();
  /// print(failure.message); // No Internet Connection
  /// ```
  ///
  String get message {
    return switch (runtimeType) {
      NetworkFailure => "No Internet Connection",
      AuthFailure => "Failed to Auth",
      ServerFailure => "Server Error",
      CacheFailure => "Cant get data",
      AuthCancelByUser => "Auth failed: canceled by User",
      NullFailure => "Data is null",
      PermissionFailure =>
        (this as PermissionFailure).msg ?? "Permission failed",
      UnknownFailure => (this as UnknownFailure).msg,
      _ => "Unknown Error",
    };
  }
}
