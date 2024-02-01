import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class TransactionDetailsCon2 extends StatelessWidget {
  const TransactionDetailsCon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 117.h,
      padding: const EdgeInsets.only(
        left: 23,
        top: 11,
        right: 40,
      ),
      decoration: BoxDecoration(
        color: PsColors.createInvoiceConColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "Time:",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "5 Jul 2023 at 21:23",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19.h,
          ),
          Row(
            children: [
              Text(
                "Reference:",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "abvegsgertr....",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                width: 58.w,
                height: 32.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: PsColors.authButtonBgColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Copy:",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.grey2Color,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
