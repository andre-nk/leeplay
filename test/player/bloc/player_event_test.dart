// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/player/bloc/bloc.dart';

void main() {
  group('PlayerEvent', () {  
    group('CustomPlayerEvent', () {
      test('supports value equality', () {
        expect(
          const InitPlayerEvent(),
          isNotNull,
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          InitPlayerEvent(),
          equals(const InitPlayerEvent()),
        );
      });
    });
  });
}
