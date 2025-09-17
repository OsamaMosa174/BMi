/*repository */
import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/screens/inputdata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: kActiveColor),
        scaffoldBackgroundColor: kActiveColor,
      ),
      home: Inputdata(),
    );
  }
}
