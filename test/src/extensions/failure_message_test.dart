import 'package:flutter_test/flutter_test.dart';
import 'package:my_utils/my_utils.dart';

void main() {
  group(
    "failure_message test: message should return correct message based on Failure",
    () {
      test('UnknownFailure', () {
        const a = UnknownFailure('test');
        expect(a.message, 'test');
      });

      test('NetworkFailure', () {
        final a = NetworkFailure();
        expect(a.message, "No Internet Connection");
      });

      test('ServerFailure', () {
        final a = ServerFailure();
        expect(a.message, "Server Error");
      });

      test('CacheFailure', () {
        final a = CacheFailure();
        expect(a.message, "Cant get data");
      });

      test('NullFailure', () {
        final a = NullFailure();
        expect(a.message, "Data is null");
      });

      test('AuthFailure', () {
        final a = AuthFailure();
        expect(a.message, "Failed to Auth");
      });

      test('AuthCancelByUser', () {
        final a = AuthCancelByUser();
        expect(a.message, "Auth failed: canceled by User");
      });

      test('PermissionFailure', () {
        const a = PermissionFailure(msg: 'test');
        expect(a.message, "test");
      });
    },
  );
}
