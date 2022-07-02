import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: null,
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          ButtomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonText: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
