import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {required this.color, required this.cardChild, this.onPressed});

  final Color color;
  final Widget cardChild;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    // ! Gesture detector se vuelve opcional, se pasa como funcion
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
