// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/acct_limits_provider.dart';
import 'package:quical/presentation/settings/components/account_information/components/limits/widgets/limit_recieve_con.dart';
import 'package:quical/presentation/settings/components/account_information/components/limits/widgets/send_limits_con.dart';

class AccountLimitsDetails extends StatelessWidget {
  const AccountLimitsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final pageControllerProvider = Provider.of<AccountLimitsProvider>(context);

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
          "Account limit",
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
          padding: const EdgeInsets.only(
            left: 18,
            right: 27,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "How much can you send & receive with your NGN account",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(0);
                    },
                    child: Container(
                      width: 130.w,
                      height: 33.h,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: pageControllerProvider.selectedIndex == 0
                                ? PsColors.authButtonBgColor
                                : PsColors.whiteColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImage.outgoinigIcon,
                            fit: BoxFit.fitWidth,
                            color: pageControllerProvider.selectedIndex == 0
                                ? PsColors.authButtonBgColor
                                : PsColors.convertCurrencyTextColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Limit on send",
                            style: HelperStyle.textStyle(
                              context,
                              pageControllerProvider.selectedIndex == 0
                                  ? PsColors.authButtonBgColor
                                  : PsColors.convertCurrencyTextColor,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(1);
                    },
                    child: Container(
                      width: 140.w,
                      height: 33.h,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: pageControllerProvider.selectedIndex == 1
                                ? PsColors.authButtonBgColor
                                : PsColors.whiteColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImage.incomingIcon,
                            fit: BoxFit.fitWidth,
                            color: pageControllerProvider.selectedIndex == 1
                                ? PsColors.authButtonBgColor
                                : PsColors.convertCurrencyTextColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Limit on receive",
                            style: HelperStyle.textStyle(
                              context,
                              pageControllerProvider.selectedIndex == 1
                                  ? PsColors.authButtonBgColor
                                  : PsColors.convertCurrencyTextColor,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Expanded(
                flex: 40,
                child: PageView(
                  controller: pageControllerProvider.pageController,
                  onPageChanged: (index) {
                    pageControllerProvider.setPage(index);
                  },
                  children: const [
                    SendLimitsContainer(),
                    LimitReceivedContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
