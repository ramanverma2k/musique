// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musique/screens/splash_screen/splash_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SplashScreenBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => SplashScreenBloc(),
          child: MaterialApp(home: SplashScreenBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
