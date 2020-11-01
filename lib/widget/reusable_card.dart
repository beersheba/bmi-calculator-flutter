import 'package:flutter/material.dart';

const activeCardColour = Color(0xFF1D2033);
const inactiveCardColour = Color(0xFF121528);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour = activeCardColour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
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
