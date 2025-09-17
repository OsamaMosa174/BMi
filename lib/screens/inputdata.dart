import 'package:bmi/constants/app_colors.dart';
import 'package:bmi/constants/enum_gender.dart';
import 'package:bmi/relesable_widget/buttom_widget.dart';
import 'package:bmi/relesable_widget/card_widget.dart';
import 'package:bmi/relesable_widget/increase_decreas.dart';
import 'package:bmi/relesable_widget/title_widget.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';

class Inputdata extends StatefulWidget {
  const Inputdata({super.key});

  @override
  State<Inputdata> createState() => _InputdataState();
}

class _InputdataState extends State<Inputdata> {
  double height = 150;
  int weight = 65;
  int age = 25;
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: CardWidget(
                  isSlected: selectedGender == Gender.male,
                  widget: TitleWidget(icon: Icons.male, text: "Male"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: CardWidget(
                  isSlected: selectedGender == Gender.female,
                  widget: TitleWidget(icon: Icons.female, text: "Female"),
                ),
              ),
            ],
          ),

          CardWidget(
            widget: Column(
              children: [
                Text('Height'),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: height.toStringAsFixed(0),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(text: "cm"),
                    ],
                  ),
                ),
                Slider(
                  activeColor: kButtoncolor,
                  min: 100,
                  max: 250,
                  value: height,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IncreaseDecreas(
                title: 'Weight',
                number: weight,
                add: () {
                  setState(() {
                    weight++;
                  });
                },
                remove: () {
                  setState(() {
                    weight--;
                  });
                },
              ),
              IncreaseDecreas(
                title: 'Age',
                number: age,
                add: () {
                  setState(() {
                    age++;
                  });
                },
                remove: () {
                  setState(() {
                    age--;
                  });
                },
              ),
            ],
          ),

          ButtomWidget(
            title: "CALCULATE",
            logic: () {
              double heightInMeter = height / 100;
              double bmi = weight / (heightInMeter * heightInMeter);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
              );
            },
          ),
        ],
      ),
    );
  }
}
