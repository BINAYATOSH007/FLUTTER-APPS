import 'package:flutter/material.dart';
class Reuse extends StatelessWidget {
  Reuse({required this.colour,required this.cardChild});
  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(

        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}