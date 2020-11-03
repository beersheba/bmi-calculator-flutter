import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.result, this.resultColor, this.recommendation});

  final String bmi;
  final String result;
  final Color resultColor;
  final String recommendation;

  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: resultTitleTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: resultLabelTextStyle.copyWith(
                        color: resultColor,
                      ),
                    ),
                    Text(
                      bmi,
                      style: resultNumberTextStyle,
                    ),
                    Text(
                      recommendation,
                      textAlign: TextAlign.center,
                      style: resultBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
