import 'package:flutter/material.dart';
import 'package:leeplay/auth/bloc/bloc.dart';
import 'package:leeplay/auth/widgets/auth_body.dart';

class AuthPage extends StatelessWidget {
  /// {@macro auth_page}
  const AuthPage({super.key});

  /// The static route for AuthPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AuthPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthLoggedIn) {
            return const Text('Logged in yah');
          } else {
            return const AuthView();
          }
        },
      ),
    );
  }
}

/// {@template auth_view}
/// Displays the Body of AuthView
/// {@endtemplate}
class AuthView extends StatelessWidget {
  /// {@macro auth_view}
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBody();
  }
}
