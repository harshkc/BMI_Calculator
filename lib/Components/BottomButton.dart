import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPress, this.buttonTitle});
  final Function onPress;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: Color(0xFFEA1556),
        width: double.infinity,
        height: 75,
      ),
    );
  }
}
