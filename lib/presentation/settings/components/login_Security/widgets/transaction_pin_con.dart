import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class TransactionPinCon extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color bgColor;
  final String subtitle;
  final Color iconColor;
  final Widget icon;
  const TransactionPinCon({
    super.key,
    required this.title,
    required this.onTap,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.subtitle,
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
            icon,
          ],
        ),
      ),
    );
  }
}
