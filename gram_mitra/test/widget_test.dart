import 'package:flutter_test/flutter_test.dart';
import 'package:grammitra/main.dart';

void main() {
  testWidgets('GramMitra splash screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(const GramMitraApp());
    expect(find.text('GramMitra'), findsOneWidget);
    expect(find.text('Get Started  →'), findsOneWidget);
  });
}
