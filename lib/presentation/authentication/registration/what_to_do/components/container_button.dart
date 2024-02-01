// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    this.imagePath,
    this.subText,
    this.text,
    required this.onTap,
  });
  final imagePath;
  final subText;
  final text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
           imagePath,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            width: 23.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: HelperStyle.textStyle(
                  context,
                  PsColors.authButtonBgColor,
                  18.sp,
                  FontWeight.w400,
                ),
              ),
              Text(
                subText,
                style: HelperStyle.textStyle(
                  context,
                  PsColors.verifyMailTextColor,
                  9.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: PsColors.authButtonBgColor,
            size: 25,
          )
        ],
      ),
    );
  }
}
