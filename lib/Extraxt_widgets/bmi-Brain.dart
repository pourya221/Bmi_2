import 'dart:math';

class Bmibrain {
  late int weight;
  late int height;
  double _result = 0.00;

  String getResult() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String getupresult() {
    if (_result >= 25) {
      return 'Overweight';
    } else if (_result >= 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_result >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_result >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
