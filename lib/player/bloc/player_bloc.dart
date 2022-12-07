// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerInitial()) {
    on<InitPlayerEvent>(_onCustomPlayerEvent);
  }

  FutureOr<void> _onCustomPlayerEvent(event, emit) async {
    final yt = YoutubeExplode();
    final myPlayer = FlutterSoundPlayer();

    final streamManifest = await yt.videos.streamsClient.getManifest('FFreTs9YmHU');
    final audioStream = yt.videos.streamsClient.get(streamManifest.audioOnly.first);

    await myPlayer.openPlayer();
    audioStream.listen((event) async {
      await myPlayer.startPlayer(
        fromDataBuffer: Uint8List.fromList(event),
        codec: Codec.pcm16,
        sampleRate: 48000,
      );
    });

    yt.close();
  }
}
