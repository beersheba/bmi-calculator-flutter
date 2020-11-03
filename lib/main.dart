import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B0E23),
        scaffoldBackgroundColor: Color(0xFF0B0E23),
      ),
      initialRoute: InputPage.routeName,
      routes: {
        InputPage.routeName: (context) => InputPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ResultPage.routeName:
            return PageTransition(
              child: ResultPage(),
              type: PageTransitionType.rightToLeftWithFade,
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}
