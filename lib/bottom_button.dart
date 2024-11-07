import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton( {required this.buttonTitle,required this.onTap});

  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      /*onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResultsPage()));
      },*/
      child: Container(

        child: Center(child: Text(buttonTitle,style: kLargeButtonTextStyle,)),

        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}