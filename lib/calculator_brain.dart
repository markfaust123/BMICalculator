import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = -1;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi >= 0.0) {
      return 'Underweight';
    } else {
      return 'Un-calculated';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi >= 0.0) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else {
      return 'Un-calculated';
    }
  }
}
