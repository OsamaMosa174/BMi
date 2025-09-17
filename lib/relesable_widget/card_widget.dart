import 'package:bmi/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.widget,
    this.padding = 20,
    this.isSlected = false,
    super.key,
  });
  final Widget widget;
  final double padding;
  final bool isSlected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: isSlected ? Border.all(color: Colors.white, width: 2) : null,
        borderRadius: BorderRadius.circular(10),
        color: kCardColor,
      ),
      child: widget,
    );
  }
}
