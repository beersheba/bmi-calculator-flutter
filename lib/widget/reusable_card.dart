import 'package:flutter/material.dart';

const activeCardColour = Color(0xFF1D2033);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour = activeCardColour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
