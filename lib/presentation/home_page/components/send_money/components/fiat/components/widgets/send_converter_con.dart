import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class SendMoneyConverterContainer extends StatelessWidget {
  const SendMoneyConverterContainer({
    super.key,
    required this.subtext1,
    this.subtext2,
    required this.text1,
    required this.text2,
    required this.onTap,
    required this.image,
  });

  final String subtext1;
  final String? subtext2;
  final String text1;
  final String text2;
  final Widget image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.h,
      width: 358.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: PsColors.whiteColor,
        border: Border.all(
          width: 1,
          color: PsColors.authButtonBgColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 22,
          right: 14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            SizedBox(
              width: 13.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subtext1,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    9.sp,
                    FontWeight.w400,
                  ),
                ),
                Text(
                  text1,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.passwordCheckBoxTextColor,
                    18.sp,
                    FontWeight.w800,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    height: 44.h,
                    width: 117.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: PsColors.textfieldBorderColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 13,
                      ),
                      child: Row(
                        children: [
                          Text(
                            text2,
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.convertCurrencyTextColor,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 20,
                            color: PsColors.authButtonBgColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  subtext2!,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    9.sp,
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
