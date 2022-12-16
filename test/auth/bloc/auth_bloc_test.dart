// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/auth/bloc/bloc.dart';

void main() {
  group('AuthBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AuthBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final authBloc = AuthBloc();
      expect(authBloc.state.isLoading, equals(false));
    });

    blocTest<AuthBloc, AuthState>(
      'CustomAuthEvent emits nothing',
      build: AuthBloc.new,
      act: (bloc) => bloc.add(const AuthLogin()),
      expect: () => <AuthState>[],
    );
  });
}
