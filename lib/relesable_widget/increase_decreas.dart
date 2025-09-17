import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/relesable_widget/card_widget.dart';
import 'package:flutter/material.dart';

class IncreaseDecreas extends StatelessWidget {
  const IncreaseDecreas({
    super.key,
    required this.number,
    required this.title,
    required this.add,
    required this.remove,
  });
  final String title;
  final int number;
  final VoidCallback add;
  final VoidCallback remove;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      widget: Column(
        children: [
          Text(title),
          Text(
            '$number',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: remove,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kfloatingActionButtonColor,
                  ),
                  padding: EdgeInsets.all(5),

                  child: Icon(Icons.remove),
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: add,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kfloatingActionButtonColor,
                  ),
                  padding: EdgeInsets.all(5),

                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
