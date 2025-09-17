import 'package:bmi/relesable_widget/buttom_widget.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({required this.bmi, super.key});
  final double bmi;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late final String title;
  late final String description;
  bool isloading = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isloading = false;
      });
    });

    if (widget.bmi < 18.5) {
      title = "Underweight";
      description = "You have a lower weight than normal.Try to eat";
    } else if (widget.bmi > 18.5 && widget.bmi < 24.9) {
      title = "normal weight";
      description = "You are in normal Weight";
    } else if (widget.bmi > 25) {
      title = "normal weight";
      description =
          "You have a higher than normal Weight, Start to exceise more";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Result')),
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title, style: TextStyle(color: Colors.green)),
                Text(
                  widget.bmi.toStringAsFixed(1),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      description,
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],

                  repeatForever: true,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                ButtomWidget(
                  title: "RE_CALCULATE",
                  logic: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
    );
  }
}
