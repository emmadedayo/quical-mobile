import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class FaceIDScreen extends StatelessWidget {
  const FaceIDScreen({super.key});

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
                AppImage.faceRecognition,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 39.h,
          ),
          Center(
            child: Text(
              "Activate your Face ID",
              style: HelperStyle.textStyle(
                context,
                PsColors.backGrayColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 214.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 27),
            child: ButtonWidget(
              containerHeight: 52,
              containerWidth: 370,
              buttonText: "Activate your Face ID",
              buttonTextSize: 18,
              onTap: () async {
                Navigator.of(context).pushNamed(RoutePaths.faceIDActivated);
              },
              color: PsColors.authButtonBgColor,
              textColor: PsColors.whiteColor,
            ),
          ),
        ],
      )),
    );
  }
}
