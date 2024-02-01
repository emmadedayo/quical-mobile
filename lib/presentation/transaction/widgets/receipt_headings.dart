import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class TopReceiptHeadings extends StatelessWidget {
  const TopReceiptHeadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Receipt #12345",
            style: HelperStyle.textStyle(
              context,
              PsColors.authButtonBgColor,
              27.sp,
              FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 27.h,
        ),
        Row(
          children: [
            Container(
              height: 14.h,
              width: 54.w,
              decoration: BoxDecoration(
                color: PsColors.greenSuccessColor,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Center(
                child: Text(
                  "Done",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.greenSuccessTextColor,
                    9.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              "Download",
              style: HelperStyle.textStyle(
                context,
                PsColors.authButtonBgColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
            Icon(
              Icons.download,
              size: 20,
              color: PsColors.authButtonBgColor,
            ),
          ],
        ),
      ],
    );
  }
}
