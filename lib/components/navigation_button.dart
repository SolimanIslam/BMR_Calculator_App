import 'package:flutter/material.dart';
import 'package:bmr_calculator/constants.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {super.key, required this.onpressed, required this.navigationText});
  final VoidCallback onpressed;
  final String navigationText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        child: Center(
          child: Text(
            navigationText,
            style: kNavigationButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
