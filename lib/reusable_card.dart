import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  String get colorString => color.toString();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      //一行一列
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}