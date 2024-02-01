import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/widgets/settings_con.dart';
import 'package:quical/router/router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          "Settings",
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
                  "Samson Badmus",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "samsonbadmus@gmail.com",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.verifyMailTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SettingsContainer(
                image: AppImage.profileIcon,
                title: 'Account information',
                subtitle: 'Information about your account',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.accountInformationScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SettingsContainer(
                image: AppImage.helpIcon,
                title: 'Help and support',
                subtitle: 'Need help? We’ve got you',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.helpAndSupportScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SettingsContainer(
                image: AppImage.helpIcon,
                title: 'Login and security',
                subtitle: 'Keep your account safe',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.loginSecurityScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SettingsContainer(
                image: AppImage.linkIcon,
                title: 'Manage connected accounts',
                subtitle: 'External accounts connected',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.manageAccountScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SettingsContainer(
                image: AppImage.aboutIcon,
                title: 'About',
                subtitle: 'Information about Quical',
                onTap: () {
                  Navigator.of(context).pushNamed(RoutePaths.aboutScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              LogoutContainer(
                image: AppImage.logoutIcon,
                title: 'Log out.',
                onTap: () {},
                bgColor: PsColors.whiteColor,
                iconColor: PsColors.redColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
