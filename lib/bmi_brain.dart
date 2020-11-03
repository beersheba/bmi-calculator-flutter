import 'dart:math';

import 'package:flutter/material.dart';

class BmiBrain {
  BmiBrain({this.height, this.mass});

  final int height;
  final int mass;
  double _bmi;

  String getBmi() {
    _bmi = mass / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi > 30)
      return 'obese';
    else if (_bmi > 25)
      return 'overweight';
    else if (_bmi > 18.5)
      return 'normal';
    else
      return 'underweight';
  }

  Color getResultColor() {
    if (_bmi > 30)
      return Colors.red;
    else if (_bmi > 25 || _bmi < 18.5)
      return Colors.yellow;
    else
      return Colors.green;
  }

  String getRecommendation() {
    if (_bmi > 30)
      return 'You are in the obese range';
    else if (_bmi > 25)
      return 'You are in the overweight range';
    else if (_bmi > 18.5)
      return 'You are in the healthy weight range';
    else
      return 'You are in the underweight range';
  }
}
