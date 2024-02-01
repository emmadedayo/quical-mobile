import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class TransactionDetailsCon1 extends StatelessWidget {
  const TransactionDetailsCon1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 124.h,
      padding: const EdgeInsets.only(
        left: 23,
        right: 45,
        top: 28,
      ),
      decoration: BoxDecoration(
        color: PsColors.createInvoiceConColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You sent:",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.homeHistoryText2Color,
                    18.sp,
                    FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "1000 GBP",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ],
            ),
            Container(
              width: 1.w,
              height: 61.h,
              color: PsColors.authButtonBgColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You received",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.homeHistoryText2Color,
                    18.sp,
                    FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "0.0 GBP",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
