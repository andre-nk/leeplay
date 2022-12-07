// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/player/player.dart';

void main() {
  group('PlayerBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => PlayerBloc(),
          child: MaterialApp(home: PlayerBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
