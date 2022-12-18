import 'package:flutter/material.dart';
import 'package:leeplay/auth/auth.dart';
import 'package:leeplay/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const AuthPage(),
    );
  }
}
