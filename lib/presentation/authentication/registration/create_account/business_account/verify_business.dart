import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class VerifyBusinessScreen extends StatelessWidget {
  const VerifyBusinessScreen({super.key});

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
          "Register",
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
                  "Verify your business.",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "To verify your business, we need to prepare the following for the next stage, if you don’t have them right now, you can skip and do it later.",
                style: HelperStyle.textStyle(
                  context,
                  PsColors.verifyMailTextColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                children: [
                  Text(
                    "1",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.verifyBiznesOptionColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Your TIN.",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.verifyBiznesOptionColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "2",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.verifyBiznesOptionColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Your CAC certificate.",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.verifyBiznesOptionColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 424.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Verify now",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.businessVerificationSteps);
                },
                color: PsColors.authButtonBgColor,
                textColor: PsColors.whiteColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.phoneNumberRegistration);
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
                      "Skip and verify later.",
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
          ),
        ),
      ),
    );
  }
}
