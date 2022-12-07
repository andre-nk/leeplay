// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/player/bloc/bloc.dart';

void main() {
  group('PlayerState', () {
    test('supports value equality', () {
      expect(
        PlayerState(),
        equals(
          const PlayerState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const PlayerState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const playerState = PlayerState();
          expect(
            playerState.copyWith(),
            equals(playerState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const playerState = PlayerState();
          final otherPlayerState = PlayerState();
          expect(playerState, isNot(equals(otherPlayerState)));

          expect(
            playerState.copyWith(),
            equals(otherPlayerState),
          );
        },
      );
    });
  });
}
