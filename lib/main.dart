import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_screen.dart';
import 'calculator_brain.dart';
void main() => runApp(BMICalculator());
calculator cb = calculator(height: height, weight: weight);
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bmi(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(
            0xFF0A0E29,
          ),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
