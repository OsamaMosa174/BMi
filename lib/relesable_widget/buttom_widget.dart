import 'package:bmi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({required this.logic, required this.title, super.key});
  final VoidCallback logic;
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: logic,
      color: kButtoncolor,
      minWidth: double.infinity,
      height: 50,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
