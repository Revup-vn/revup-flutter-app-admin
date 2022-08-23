import 'package:flutter_test/flutter_test.dart';

import 'package:revup_admin/login/models/models.dart';

void main() {
  group('fromJson', () {
    test('parse successfully', () {
      const type = LoginAccount(
        email: '',
        password: '',
      );

      final res = LoginAccount.fromJson(type.toJson());
      expect(res.toJson(), type.toJson());
      expect(res, type);
    });
  });
}
