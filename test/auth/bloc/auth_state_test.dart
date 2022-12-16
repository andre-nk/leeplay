// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/auth/bloc/bloc.dart';

void main() {
  group('AuthState', () {
    test('supports value equality', () {
      expect(
        AuthState(),
        equals(
          const AuthState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AuthState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const authState = AuthState();
          expect(
            authState.copyWith(),
            equals(authState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const authState = AuthState();
          final otherAuthState = AuthState();
          expect(authState, isNot(equals(otherAuthState)));

          expect(
            authState.copyWith(),
            equals(otherAuthState),
          );
        },
      );
    });
  });
}
