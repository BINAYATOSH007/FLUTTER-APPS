import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  getinterpretation() {
    if (_bmi >= 25) {
      return 'RUN,GO TO GYM,HAVE WORKOUT AND LOOSE SOME CALORIES';
    } else if (_bmi > 18.5) {
      return 'U HAVE NORMAL BODY GOOD JOB';
    } else {
      return 'EAT MORE OR U GONNA DIE SOON OUT OF STARVATION';
    }
  }
}