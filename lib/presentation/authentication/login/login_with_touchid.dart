import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';

class LoginWithTouchIDScreen extends StatelessWidget {
  const LoginWithTouchIDScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 524.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: PsColors.onboardingBgColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppImage.touchId,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 39.h,
          ),
          Center(
            child: Text(
              "Use Face ID to sign into Quical",
              style: HelperStyle.textStyle(
                context,
                PsColors.backGrayColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 114.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 27),
            child: ButtonWidget(
              containerHeight: 52,
              containerWidth: 370,
              buttonText: "Sign in with face ID",
              buttonTextSize: 18,
              onTap: () async {
                // Navigator.of(context).pushNamed(RoutePaths.faceIDActivated);
              },
              color: PsColors.authButtonBgColor,
              textColor: PsColors.whiteColor,
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          InkWell(
            onTap: () {
              //  Navigator.of(context)
              //     .pushNamed(RoutePaths.phoneNumberRegistration);
            },
            child: Container(
              height: 52.h,
              width: 369.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: PsColors.authButtonBgColor,
                ),
              ),
              child: Center(
                child: Text(
                  "Sign in with password",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    18.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
