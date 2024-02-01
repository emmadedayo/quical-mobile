import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class DepositFiatCon extends StatelessWidget {
  const DepositFiatCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(
            //   RoutePaths.enterAmountToSendScreen,
            // );
          },
          child: Container(
            width: 364.w,
            height: 74.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: PsColors.createInvoiceConColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 21,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImage.greatBritainIcon,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GBP",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.backGrayColor,
                          18.sp,
                          FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Pounds Sterling",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.homeHistoryText2Color,
                          9.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "GBP 0.00",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.authButtonBgColor,
                          18.sp,
                          FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "GBP",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.homeHistoryText2Color,
                          9.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              RoutePaths.depositFiatFundWallet,
            );
          },
          child: Container(
            width: 364.w,
            height: 74.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: PsColors.createInvoiceConColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 23,
                right: 21,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImage.naijaIcon,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Naira",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.backGrayColor,
                          18.sp,
                          FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Nigerian Naira",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.homeHistoryText2Color,
                          9.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "NGN 0.00",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.authButtonBgColor,
                          18.sp,
                          FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Naira",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.homeHistoryText2Color,
                          9.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
