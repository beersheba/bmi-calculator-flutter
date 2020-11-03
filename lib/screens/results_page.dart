import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_card.dart';

class ResultPage extends StatelessWidget {
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
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: resultLabelTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: resultNumberTextStyle,
                  ),
                  Text(
                    'Some text to display',
                    style: resultBodyTextStyle,
                  )
                ],
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
