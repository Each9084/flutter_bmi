import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;

const activeCardColor = Color(0xFF1D1F33);
//0xFF111328
const inactiveCardColor = Color(0xFF111328);

const bottomContainerColor = Color(0xFFEB1555);

enum genderType {
  male,
  female;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
   genderType?selectedGender;

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
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              //第一行
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = genderType.male;
                        /*updateColor(genderType.male)*/
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == genderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'man',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = genderType.female;
                        /*updateColor(genderType.female);*/
                      });
                    },
                    child: ReusableCard(
                        color: selectedGender == genderType.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'female',
                        )),
                  ),
                ),
              ],
            )),
            Expanded(
                //二行 一大列
                child: ReusableCard(
              color: activeCardColor,
            )),
            Expanded(
                child: Row(
              //三行一列
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                )
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
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
