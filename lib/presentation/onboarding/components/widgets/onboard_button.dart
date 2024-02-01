import 'package:flutter/material.dart';
import 'package:quical/config/config.dart';

class OnboardingButtonWidgets extends StatelessWidget {
  const OnboardingButtonWidgets({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.buttonText,
    required this.buttonTextSize,
    required this.color,
    required this.textColor,
    required this.onTap,
  });

  final double containerHeight;
  final double containerWidth;
  final String buttonText;
  final double buttonTextSize;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 1,
            color: PsColors.authButtonBgColor,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: HelperStyle.textStyle(
              context,
              textColor,
              buttonTextSize,
              FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
