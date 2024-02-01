import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class SendLimitsContainer extends StatelessWidget {
  const SendLimitsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 364.w,
          height: 154.h,
          padding: const EdgeInsets.only(
            left: 31,
          ),
          decoration: BoxDecoration(
            color: PsColors.homeHistoryConColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sending (per transaction)",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.authButtonBgColor,
                  9.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "2,000,000,000 NGN",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Daily Transaction Limit",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.authButtonBgColor,
                  9.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "2,000,000,000 NGN",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Monthly Transaction Limit",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.authButtonBgColor,
                  9.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "2,000,000,000 NGN",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 33.h,
        ),
        Text(
          "Update your details to upgrade your limit",
          style: HelperStyle.textStyle(
            context,
            PsColors.textfieldHintTextColor,
            14.sp,
            FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
