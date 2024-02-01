import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class InvoiceListDetailsCon1 extends StatelessWidget {
  const InvoiceListDetailsCon1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 142.h,
      padding: const EdgeInsets.only(
        left: 23,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: PsColors.createInvoiceConColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New website Design",
            style: HelperStyle.textStyle(
              context,
              PsColors.authButtonBgColor,
              18.sp,
              FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 4,
                  color: PsColors.grey2Color,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "logo design",
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
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 4,
                  color: PsColors.grey2Color,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "action figures",
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
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 4,
                  color: PsColors.grey2Color,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "anoti",
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
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 4,
                  color: PsColors.grey2Color,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "merch designs",
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
        ],
      ),
    );
  }
}
