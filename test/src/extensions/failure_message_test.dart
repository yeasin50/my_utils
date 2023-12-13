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
        const a = NetworkFailure();
        expect(a.message, "No Internet Connection");
      });

      test('ServerFailure', () {
        const a = ServerFailure();
        expect(a.message, "Server Error");
      });

      test('CacheFailure', () {
        const a = CacheFailure();
        expect(a.message, "Cant get data");
      });

      test('NullFailure', () {
        const a = NullFailure();
        expect(a.message, "Data is null");
      });

      test('AuthFailure', () {
        const a = AuthFailure();
        expect(a.message, "Failed to Auth");
      });

      test('AuthCancelByUser', () {
        const a = AuthCancelByUser();
        expect(a.message, "Auth failed: canceled by User");
      });

      test('PermissionFailure', () {
        const a = PermissionFailure(msg: 'test');
        expect(a.message, "test");
      });
    },
  );
}
