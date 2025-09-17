import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({required this.icon, required this.text, super.key});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50),
        Text(text, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
