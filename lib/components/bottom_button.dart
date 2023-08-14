import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const BottomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(title, style: kCalculateTextStyle),
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
