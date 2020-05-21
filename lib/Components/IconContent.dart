import 'package:flutter/material.dart';
import '../Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.userIcon, this.label});
  final IconData userIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          userIcon,
          size: 60.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            label,
            style: kIconTextStyle,
          ),
        ),
      ],
    );
  }
}
