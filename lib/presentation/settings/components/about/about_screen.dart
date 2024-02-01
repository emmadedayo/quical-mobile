import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/about/widgets/about_con.dart';
import 'package:quical/router/router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
          "About",
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
                  "About",
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
              AboutCon(
                title: 'Legal',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.legalScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              AboutCon(
                title: 'Social Media',
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed(RoutePaths.manageTransactionPin);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              AboutCon(
                title: 'App rating',
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              AboutCon(
                title: 'Contact us',
                onTap: () {
                  // Navigator.of(context).pushNamed(RoutePaths.socialMediaScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 25,
                  color: PsColors.authButtonBgColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
