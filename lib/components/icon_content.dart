import 'package:flutter/material.dart';
import '../constants.dart';


class iconContent extends StatelessWidget {
  iconContent({this.icon, this.label});

  final IconData? icon;
  final String? label;

/*  final FontAwesomeIcons fontAwesomeIcons;*/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
