import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATION'),
      ),
      body: Center(
        child: Text('BMI calculation will go here'),
      ),
    );
  }
}
