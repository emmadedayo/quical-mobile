import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class AccountInformationWidgets extends StatelessWidget {
  const AccountInformationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 169.h,
          width: 144.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: PsColors.homeAccountInfoConColor),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 16,
              top: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account limits",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.convertCurrencyTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SvgPicture.asset(
                  AppImage.greatBritainIcon,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "\$ 7,000 left of 8000 this week",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.homeAccountInfoTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
