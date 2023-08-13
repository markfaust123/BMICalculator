import 'package:flutter/material.dart';
import 'constants.dart';

class IconWidget extends StatelessWidget {
  final String label;
  final IconData icon;

  IconWidget({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kTextStyle,
        ),
      ],
    );
  }
}
