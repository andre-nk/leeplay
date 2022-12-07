import 'package:flutter/material.dart';
import 'package:leeplay/player/bloc/bloc.dart';
import 'package:leeplay/player/widgets/player_body.dart';

/// {@template player_page}
/// A description for PlayerPage
/// {@endtemplate}
class PlayerPage extends StatelessWidget {
  /// {@macro player_page}
  const PlayerPage({super.key});

  /// The static route for PlayerPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const PlayerPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerBloc()..add(const InitPlayerEvent()),
      child: const Scaffold(
        body: PlayerView(),
      ),
    );
  }    
}

/// {@template player_view}
/// Displays the Body of PlayerView
/// {@endtemplate}
class PlayerView extends StatelessWidget {
  /// {@macro player_view}
  const PlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlayerBody();
  }
}
