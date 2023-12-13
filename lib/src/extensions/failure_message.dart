part of my_utils;

extension FailureMessage on Failure {
  /// return message[string] based on [Failure]
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
