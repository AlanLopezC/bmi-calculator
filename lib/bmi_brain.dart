import 'dart:math';

class BmiBrain {
  // ! initialized, didnt knew what to to
  BmiBrain({required this.height, required this.weight});

  int height;
  int weight;

  double _bmi = 0;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print(_bmi);
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal. Try eating a lot less.';
    } else if (_bmi >= 18.5) {
      return 'You have a perfect body. Give me a kiss.';
    } else {
      return 'To skinny, try eating some pancakes.';
    }
  }
}
