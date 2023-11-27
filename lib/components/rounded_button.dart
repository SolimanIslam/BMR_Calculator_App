import 'package:flutter/material.dart';
import 'package:bmr_calculator/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.onpress, required this.icon});

  final VoidCallback onpress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: kRoundedBottomColor,
      child: Icon(icon, color: Colors.black),
    );
  }
}
