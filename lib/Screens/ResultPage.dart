import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import '../Components/CardWidget.dart';
import '../Components/BottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result, @required this.message, @required this.bmi});

  final String result;
  final String message;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardWidget(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      message,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
              colour: kInActiveColor,
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(
                context,
              );
            },
            buttonTitle: "Re-Calculate Your BMI",
          ),
        ],
      ),
    );
  }
}
