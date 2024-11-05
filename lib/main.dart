import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('BMI CALCULATOR')),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Body Text', style: Theme.of(context).textTheme.bodyMedium),
      ),
      /*backgroundColor: Theme.of(context).colorScheme.secondary,*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
