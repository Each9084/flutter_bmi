import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0D22),
            secondary: Color(0xfFF0A0D22),
          ),
          scaffoldBackgroundColor: Color(0xfFF0A0D22),
          textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.white, fontSize: 20)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.purple,
          )),
      home: InputPage(),
    );
  }
}

