import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  final String buttonText;
  final onPress;
  ButtomButton({required this.buttonText, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonText, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
