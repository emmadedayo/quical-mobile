import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class BalanceHeadingsWidgets extends StatelessWidget {
  const BalanceHeadingsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppImage.dollarSign,
            fit: BoxFit.fitWidth,
            height: 27,
            width: 27,
          ),
          Text(
            "800:",
            style: HelperStyle.textStyle(
              context,
              PsColors.homeAmountColor,
              53.sp,
              FontWeight.w700,
            ),
          ),
          Text(
            "00",
            style: HelperStyle.textStyle(
              context,
              PsColors.convertCurrencyTextColor,
              27.sp,
              FontWeight.w400,
            ),
          ),
          const Spacer(),
          Container(
            height: 44.h,
            width: 83.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: PsColors.authButtonBgColor,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "GBP",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 14,
                    color: PsColors.authButtonBgColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
