import 'package:flutter/material.dart';
import 'package:bmr_calculator/constants.dart';

class MaleFemaleIcon extends StatelessWidget {
  const MaleFemaleIcon({super.key, required this.mfIcon, required this.label});

  final IconData mfIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mfIcon,
          size: 80,
          color: const Color(0xFFFBC02D),
        ),
        const SizedBox(height: 15),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
