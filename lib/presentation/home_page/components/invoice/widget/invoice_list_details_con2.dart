import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class InvoiceListDetailsCon2 extends StatelessWidget {
  const InvoiceListDetailsCon2({super.key});

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
          Text(
            "Summary",
            style: HelperStyle.textStyle(
              context,
              PsColors.authButtonBgColor,
              18.sp,
              FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "Sub total",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "\$23456",
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
                "Tax",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "\$0",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.grey2Color,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
