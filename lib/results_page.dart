import 'package:bmi_calculator_each/constants.dart';
import 'package:bmi_calculator_each/input_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low,you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  BottomButton(
                    buttonTitle: 'Re-Calculate',
                    onTap: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
