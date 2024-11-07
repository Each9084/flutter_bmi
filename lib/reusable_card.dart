import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild,this.onpress});

  final Color color;
  final Widget? cardChild;
  final VoidCallback?onpress;//VoidCallback 是 void Function() 的简写形式，更符合 onTap 参数的类型要求。

  String get colorString => color.toString();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,

      child: Container(
        child: cardChild,
        //一行一列
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}