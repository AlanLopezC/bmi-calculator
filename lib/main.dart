import 'package:flutter/material.dart';
import 'screens/input_page.dart';
// import 'screens/results_page.dart';

// ! MIGRATION TO NULL SAFETY
// * 1) if not null...
// * 2) color = mycolor ?? black
// * 3) setBackground(myColor!);  // Throws Exception if null (avoid this)
// * 4) "late" for later assigned variables
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ? change only
      theme: ThemeData.dark().copyWith(
        // ? platform: TargetPlatform.iOS,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      //
      home: InputPage(),
      /*
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
      * Didn't know how to pass args
      ? Navigator.pushNamed(context, '/results')
      
      */
      debugShowCheckedModeBanner: false,
    );
  }
}
