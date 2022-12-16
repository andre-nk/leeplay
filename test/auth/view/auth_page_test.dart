// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/auth/auth.dart';

void main() {
  group('AuthPage', () {
    group('route', () {
      test('is routable', () {
        expect(AuthPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders AuthView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AuthPage()));
      expect(find.byType(AuthView), findsOneWidget);
    });
  });
}
