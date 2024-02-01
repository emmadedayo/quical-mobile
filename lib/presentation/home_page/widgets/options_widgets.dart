import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class OptionsWidgets extends StatelessWidget {
  const OptionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44.h,
              width: 108.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: PsColors.authButtonBgColor,
                ),
                borderRadius: BorderRadius.circular(4),
                color: PsColors.whiteColor,
              ),
              child: Center(
                child: Text(
                  "Send funds",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 31.w,
          ),
          Expanded(
            child: Container(
              height: 44.h,
              width: 108.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: PsColors.authButtonBgColor,
                ),
                borderRadius: BorderRadius.circular(4),
                color: PsColors.whiteColor,
              ),
              child: Center(
                child: Text(
                  "Add funds",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 31.w,
          ),
          Expanded(
            child: Container(
              height: 44.h,
              width: 108.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: PsColors.authButtonBgColor,
                ),
                borderRadius: BorderRadius.circular(4),
                color: PsColors.whiteColor,
              ),
              child: Center(
                child: Text(
                  "...",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
