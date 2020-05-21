import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({this.height, this.weight});

  final int height;
  final int weight;

  double _bMI = 0.0;

  String calculateBMI() {
    _bMI = weight / pow(height / 100, 2);
    return _bMI.toStringAsFixed(1);
  }

  String getResult() {
    _bMI = weight / pow(height / 100, 2);
    if (_bMI >= 25) {
      return "Overweight";
    } else if (_bMI >= 18.5) {
      return "Normal";
    } else
      return "Underweight";
  }

  String getMessage() {
    _bMI = weight / pow(height / 100, 2);
    if (_bMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bMI >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
