import 'package:flutter_test/flutter_test.dart';
import 'package:leeplay/app/app.dart';
import 'package:leeplay/player/player.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(PlayerPage), findsOneWidget);
    });
  });
}
