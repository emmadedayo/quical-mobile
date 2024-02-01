import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/account_information/widget/acct_info_con.dart';
import 'package:quical/router/router.dart';

class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

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
          "Account information",
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
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account information",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              AccountInfoCon(
                image: AppImage.profileIcon,
                title: 'Profile',
                onTap: () {
                  Navigator.of(context).pushNamed(RoutePaths.profileScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              AccountInfoCon(
                image: AppImage.acctLimitsIcon,
                title: 'Account limits',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.chooseAccountLimits);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              AccountInfoCon(
                image: AppImage.acctStatementIcon,
                title: 'Account statements',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.accountStatementScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
