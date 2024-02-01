import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class SupportCon extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color bgColor;
  final Color iconColor;
  const SupportCon({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 74.h,
        padding: const EdgeInsets.only(
          left: 15,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    18.sp,
                    FontWeight.w400,
                  ),
                ),
                Text(
                  subtitle,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    9.sp,
                    FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 25,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
