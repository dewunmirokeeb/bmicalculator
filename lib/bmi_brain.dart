import 'dart:math';
class CalBrain{
  CalBrain(this.weight,this.height);

   int weight;
   int height;
  double calculateBmi(){
    double _bmi = weight/(pow(height/100,2));
    return _bmi;
  }
  String getResult(int _x){
    if(_x >= 25){
      return 'Overweight';
    }else if(_x > 18.5){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(int _x){
    if(_x >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_x > 18.5){
      return 'You have a normal body weight. Good job!';
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}