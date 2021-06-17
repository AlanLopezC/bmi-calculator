import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.label, required this.onTap});

  final String label;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kBottomButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 15),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
      ),
    );
  }
}
