import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class AccountDetailsContainer extends StatelessWidget {
  const AccountDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 364.w,
          height: 154.h,
          padding: const EdgeInsets.only(
            left: 23,
            right: 27,
          ),
          decoration: BoxDecoration(
            color: PsColors.homeHistoryConColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Revolut",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      18.sp,
                      FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Disconnect",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.redColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Account number",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.authButtonBgColor,
                  11.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "02000102674",
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
                "Account name",
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
                "Adejagun Olamide",
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
          "",
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
