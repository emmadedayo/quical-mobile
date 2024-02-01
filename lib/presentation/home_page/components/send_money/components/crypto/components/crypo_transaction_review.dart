import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class CryptoTransactionReviewScreen extends StatelessWidget {
  const CryptoTransactionReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: PsColors.backgroundColor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Icon(
                Icons.keyboard_arrow_left_rounded,
                color: PsColors.backGrayColor,
              ),
              Text(
                "Back",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.backGrayColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          "Review your transfer",
          style: HelperStyle.textStyle(
            context,
            PsColors.backGrayColor,
            11.sp,
            FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 27),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Review your transfer",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 51.h,
                ),
                Container(
                  height: 189.h,
                  width: 364.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: PsColors.convertReviewConColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImage.greatBritainIcon,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 35.w,
                          ),
                          SvgPicture.asset(
                            AppImage.arrowForward,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 35.w,
                          ),
                          SvgPicture.asset(
                            AppImage.naijaIcon,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 23,
                          right: 22,
                          top: 31,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "You are sending",
                                  style: HelperStyle.textStyle(
                                    context,
                                    PsColors.grey2Color,
                                    14.sp,
                                    FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 23.h,
                                ),
                                Text(
                                  "They’ll receive",
                                  style: HelperStyle.textStyle(
                                    context,
                                    PsColors.grey2Color,
                                    14.sp,
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "450.00 NGN",
                                  style: HelperStyle.textStyle(
                                    context,
                                    PsColors.grey2Color,
                                    14.sp,
                                    FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 23.h,
                                ),
                                Text(
                                  "450.00 GBP",
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34.h,
                ),
                Container(
                  height: 124.h,
                  width: 364.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: PsColors.convertReviewConColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                      right: 22,
                      top: 31,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: HelperStyle.textStyle(
                                context,
                                PsColors.grey2Color,
                                14.sp,
                                FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Text(
                              "Email Address",
                              style: HelperStyle.textStyle(
                                context,
                                PsColors.grey2Color,
                                14.sp,
                                FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Adejagun Olamide",
                              style: HelperStyle.textStyle(
                                context,
                                PsColors.grey2Color,
                                14.sp,
                                FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Text(
                              "bamidele@gmail.com",
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
                  ),
                ),
                SizedBox(
                  height: 244.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Send money",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.cryptoConfirmationScreen);
                  },
                  color: PsColors.authButtonBgColor,
                  textColor: PsColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
