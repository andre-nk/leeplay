// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/auth/bloc/bloc.dart';

void main() {
  group('AuthEvent', () {  
    group('CustomAuthEvent', () {
      test('supports value equality', () {
        expect(
          const AuthLogin(),
          isNotNull,
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AuthLogin(),
          equals(const AuthLogin()),
        );
      });
    });
  });
}
