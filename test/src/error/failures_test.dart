import 'package:flutter_test/flutter_test.dart';
import 'package:my_utils/my_utils.dart';

void main() {
  group('failures', () {
    group('Instance of same class should pass value equality', () {
      test('UnknownFailure', () {
        final a = UnknownFailure('test');
        final b = UnknownFailure('test');
        expect(a, b);
      });

      test('NetworkFailure', () {
        final a = NetworkFailure();
        final b = NetworkFailure();
        expect(a, b);
      });

      test('ServerFailure', () {
        final a = ServerFailure();
        final b = ServerFailure();
        expect(a, b);
      });

      test('CacheFailure', () {
        final a = CacheFailure();
        final b = CacheFailure();
        expect(a, b);
      });

      test('NullFailure', () {
        final a = NullFailure();
        final b = NullFailure();
        expect(a, b);
      });

      test('AuthFailure', () {
        final a = AuthFailure();
        final b = AuthFailure();
        expect(a, b);
      });

      test('AuthCancelByUser', () {
        final a = AuthCancelByUser();
        final b = AuthCancelByUser();
        expect(a, b);
      });

      test('PermissionFailure', () {
        final a = PermissionFailure(msg: 'test');
        final b = PermissionFailure(msg: 'test');
        expect(a, b);
      });
    });
  });
}
