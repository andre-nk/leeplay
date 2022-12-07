import 'package:flutter/material.dart';
import 'package:leeplay/player/bloc/bloc.dart';

class PlayerBody extends StatelessWidget {
  const PlayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return SafeArea(
          child: StreamBuilder(
            stream: state.audioStream,
            builder: (context, snapshot) {
              return const Text('test');
            },
          ),
        );
      },
    );
  }
}
