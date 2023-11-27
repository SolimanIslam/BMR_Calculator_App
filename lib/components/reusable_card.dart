import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.colour,
      required this.iconChild,
      this.ontap,
      this.borderRadius = 10,
      this.margin = 15});

  final VoidCallback? ontap;
  final Color colour;
  final Widget iconChild;
  final double borderRadius;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(borderRadius)),
        child: iconChild,
      ),
    );
  }
}
