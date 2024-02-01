import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class SelectPaymentMethodScreen extends StatelessWidget {
  const SelectPaymentMethodScreen({super.key});

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
          "Who to pay",
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
                    "Select a payment method",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      RoutePaths.addBeneficiaryScreen,
                    );
                  },
                  child: Container(
                    width: 364.w,
                    height: 95.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: PsColors.createInvoiceConColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        right: 21,
                        top: 18,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: SvgPicture.asset(
                              AppImage.libraryIcon,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Send money to any bank",
                                style: HelperStyle.textStyle(
                                  context,
                                  PsColors.authButtonBgColor,
                                  18.sp,
                                  FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                "Send money to any bank account in Nigeria",
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
                          Align(
                            alignment: Alignment.topCenter,
                            child: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: PsColors.acctTypeColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
