part of 'player_bloc.dart';

/// {@template player_state}
/// PlayerState description
/// {@endtemplate}
class PlayerState extends Equatable {
  /// {@macro player_state}
  const PlayerState({
    this.audioStream,
  });

  /// A description for customProperty
  final Stream<List<int>>? audioStream;

  @override
  List<Object> get props => [];

  /// Creates a copy of the current PlayerState with property changes
  PlayerState copyWith({
    Stream<List<int>>? newAudioStream,
  }) {
    return PlayerState(
      audioStream: newAudioStream ?? audioStream,
    );
  }
}

/// {@template player_initial}
/// The initial state of PlayerState
/// {@endtemplate}
class PlayerInitial extends PlayerState {
  const PlayerInitial() : super();
}

class PlayerLoaded extends PlayerState{
  const PlayerLoaded(Stream<List<int>>audioStream) : super(audioStream: audioStream);
}
