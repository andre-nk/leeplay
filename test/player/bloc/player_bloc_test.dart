// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/player/bloc/bloc.dart';

void main() {
  group('PlayerBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          PlayerBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final playerBloc = PlayerBloc();
      expect(playerBloc.state.audioStream, equals('Default Value'));
    });

    blocTest<PlayerBloc, PlayerState>(
      'CustomPlayerEvent emits nothing',
      build: PlayerBloc.new,
      act: (bloc) => bloc.add(const InitPlayerEvent()),
      expect: () => <PlayerState>[],
    );
  });
}
