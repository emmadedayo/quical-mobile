import 'package:quical/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget{
  const ButtonWidget({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
    required this.buttonText,
    required this.buttonTextSize,
    required this.onTap,
    required this.color,
    required this.textColor,
  }): super (key: key);

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
          color: PsColors.authButtonBgColor,
          borderRadius: const BorderRadius.all(Radius.circular(3.0)),
        ),
        child: Center(
          child: Text(buttonText,style: HelperStyle.textStyle(context, PsColors.whiteColor, 14.sp, FontWeight.normal),),
        )
      ),
    );
  }}