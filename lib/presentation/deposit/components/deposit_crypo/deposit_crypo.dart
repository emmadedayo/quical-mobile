
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class DepositCrypoCon extends StatelessWidget {
  const DepositCrypoCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(
            //   RoutePaths.crypoEnterAmountScreen,
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
                  Image.asset(
                    AppImage.usdtpng,
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
                        "BTC",
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
                        "Bitcoin",
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
                        "BTC 0.00",
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
                        "Bitcoin",
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
            // Navigator.of(context).pushNamed(
            //   RoutePaths.crypoEnterAmountScreen,
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
                  Image.asset(
                    AppImage.btcpng,
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
                        "USDT",
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
                        "Tether",
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
                        "USDT 0.00",
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
                        "Tether",
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
