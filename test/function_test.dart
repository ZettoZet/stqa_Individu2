import 'package:flutter/material.dart';
import 'package:flutter_login_screen/main.dart';
import 'package:flutter_login_screen/register.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test page route register', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const MyApp(),
        '/register': (_) => const Register(),
      },
    ));

    final inkWellFinder = find.byWidgetPredicate(
      (widget) => widget is InkWell,
    );

    expect(inkWellFinder, findsWidgets);

    await tester.tap(inkWellFinder.first);
    await tester.pumpAndSettle();

    expect(find.text('Register'), findsOneWidget);
  });
}
