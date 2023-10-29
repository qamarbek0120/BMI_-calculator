import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main()=> runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColorDark: Colors.black,
        scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}



