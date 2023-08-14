import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String message;
  final void Function() onTap;

  const BottomButton({required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(message, style: kCalculateTextStyle),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
