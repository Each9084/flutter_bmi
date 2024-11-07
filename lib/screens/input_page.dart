import 'package:bmi_calculator_each/screens/results_page.dart';
import 'package:bmi_calculator_each/components/round_icon_button.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/icon_content.dart';
import 'package:bmi_calculator_each/calculate_bmi.dart';

enum genderType {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderType? selectedGender;

  int height = 180;
  int weight = 60;
  int age = 22;
  String bottomText = 'Calculate';

  /*Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(genderType selectedGender) {
    if (selectedGender == genderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }

    if (selectedGender == genderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI CALCULATOR')),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .primary,
          foregroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
                  //第一行
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onpress: () {
                          setState(() {
                            selectedGender = genderType.male;
                          });
                        },
                        color: selectedGender == genderType.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'man',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                          onpress: () {
                            setState(() {
                              selectedGender = genderType.female;
                            });
                          },
                          color: selectedGender == genderType.female
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: iconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'female',
                          )),
                    ),
                  ],
                )),
            Expanded(
              //二行 一大列
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Colors.grey,
                            activeTrackColor: Colors.white,
                            overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                            overlayColor: Color(0x15EB1555),
                            thumbColor: Colors.pink,
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            )),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 210.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                                print(height);
                              });
                            }),
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Row(
                  //三行一列
                  children: [
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WIEGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                SizedBox(
                                  width: 20,
                                ),
                                RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    })
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            BottomButton(
              buttonTitle: bottomText,
              onTap: () {
                CalculateBmi calculateObject =
                CalculateBmi(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultsPage(
                              bmiResult: calculateObject.calculateTheBMI(),
                              resultText: calculateObject.getResult(),
                              interpretation:calculateObject.getInterpretation()
                              ,
                            )));
              },
            )
          ],
        )

      /**/
      /*backgroundColor: Theme.of(context).colorScheme.secondary,*/

      /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),*/
    );
  }
}
