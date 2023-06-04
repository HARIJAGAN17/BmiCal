import 'dart:math';
class calculator
{

  final int height;
  final int weight;

  double _bmi = 25.0;
  calculator({required this.height,required this.weight});

  String getCal()
  {
  _bmi = weight/(pow(height/100, 2));
  return _bmi.toStringAsFixed(1);
  }

  String HealthResult()
  {
    if(_bmi>=25.0)
      {
        return "OVER WEIGHT";
      }
    else if(_bmi>18.5)
      {
          return "NORMAL";
      }
    else
      {
          return "UNDER WEIGHT";
      }
  }

  String HealthBottom()
  {
    if(_bmi>=25.0)
    {
      return "You should do exercise properly and do calorie deficit";
    }
    else if(_bmi>18.5)
    {
      return "You are healthy and do exercise daily to be consistent";
    }
    else
    {
      return "You should have proper diet and do exercise to build yourself";
    }
  }


}
