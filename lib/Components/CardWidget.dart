import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.cardChild, this.onPress, @required this.colour});

  final Widget cardChild;
  final Function onPress;
  final Color colour;
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
