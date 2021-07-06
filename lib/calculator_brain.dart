import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);

    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Hmm... maybe you should seek some specialized help?';
    } else if (_bmi! >= 18.5) {
      return 'Normie.';
    } else {
      return 'Baby, you need to eat more, it\'s for your own good.';
    }
  }


}