import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class PrefileDetailsCon extends StatelessWidget {
  const PrefileDetailsCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: PsColors.homeHistoryConColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 37.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Full name",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "Badmus Adeolu",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Date of birth",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "2023-09-23",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Address",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "106 north doc",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "City",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "Birmingham",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Email address",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "samsonbadmus@gmail.com",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Phone number",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "+2347038227035",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Country",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "Nigeria",
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
            height: 16.h,
          ),
          Divider(
            thickness: 1,
            color: PsColors.authButtonBgColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
            ),
            child: Row(
              children: [
                Text(
                  "Postal code",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "334",
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
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
