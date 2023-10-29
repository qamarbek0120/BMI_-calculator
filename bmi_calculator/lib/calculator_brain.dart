import 'dart:math';


class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI(){
    _bmi = weight /pow(height /100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
       return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpretetion(){
    if(_bmi >= 25){
      return 'You have a higher than a normal body weight. Try to exercise more';
    }
    else if(_bmi > 18.5){
      return 'You have a normal weight. Good job';
    }
    else{
      return 'You have a lower than a normal weight. try to eat more';
    }
  }
}