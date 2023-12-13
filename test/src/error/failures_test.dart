import 'package:flutter_test/flutter_test.dart';
import 'package:my_utils/my_utils.dart';

void main() {
  group('failures', () {
    group('Instance of same class should pass value equality', () {
      test('UnknownFailure', () {
        const a = UnknownFailure('test');
        const b = UnknownFailure('test');
        expect(a, b);
      });

      test('NetworkFailure', () {
        const a = NetworkFailure();
        const b = NetworkFailure();
        expect(a, b);
      });

      test('ServerFailure', () {
        const a = ServerFailure();
        const b = ServerFailure();
        expect(a, b);
      });

      test('CacheFailure', () {
        const a = CacheFailure();
        const b = CacheFailure();
        expect(a, b);
      });

      test('NullFailure', () {
        const a = NullFailure();
        const b = NullFailure();
        expect(a, b);
      });

      test('AuthFailure', () {
        const a = AuthFailure();
        const b = AuthFailure();
        expect(a, b);
      });

      test('AuthCancelByUser', () {
        const a = AuthCancelByUser();
        const b = AuthCancelByUser();
        expect(a, b);
      });

      test('PermissionFailure', () {
        const a = PermissionFailure(msg: 'test');
        const b = PermissionFailure(msg: 'test');
        expect(a, b);
      });
    });
  });
}
