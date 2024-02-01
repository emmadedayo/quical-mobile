// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/onboardings_prov.dart';
import 'package:quical/presentation/onboarding/components/widgets/onboard_button.dart';
import 'package:quical/router/router.dart';

class OnbordingData extends StatefulWidget {
  final imagePath;
  final desc;

  const OnbordingData({super.key, this.imagePath, this.desc});

  @override
  _OnbordingDataState createState() => _OnbordingDataState(
        imagePath,
        desc,
      );
}

class _OnbordingDataState extends State<OnbordingData> {
  final imagePath;
  final desc;
  _OnbordingDataState(
    this.imagePath,
    this.desc,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: PsColors.onboardingBgColor,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40.h,
            ),
            Expanded(
              child: SvgPicture.asset(
                imagePath,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.40,
              ),
            ),
            Container(
              height: 256,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: PsColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38,
                      right: 8,
                    ),
                    child: Text(
                      desc,
                      style: HelperStyle.textStyle(context,
                          PsColors.authButtonBgColor, 34.sp, FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Provider.of<OnboardingProvider>(context).currentPage ==
                          Provider.of<OnboardingProvider>(context).totalPages -
                              1
                      ? Padding(
                          padding: const EdgeInsets.only(
                            left: 22,
                            right: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  OnboardingButtonWidgets(
                                    containerHeight: 52.h,
                                    containerWidth: 155.w,
                                    buttonText: 'Login',
                                    buttonTextSize: 18.sp,
                                    color: PsColors.authButtonBgColor,
                                    textColor: PsColors.whiteColor,
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(RoutePaths.loginWithFaceIDScreen);
                                    },
                                  ),
                                  const Spacer(),
                                  OnboardingButtonWidgets(
                                    containerHeight: 52.h,
                                    containerWidth: 155.w,
                                    buttonText: 'Register',
                                    buttonTextSize: 18.sp,
                                    color: PsColors.authButtonBgColor,
                                    textColor: PsColors.whiteColor,
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(RoutePaths.registerName);
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              OnboardingButtonWidgets(
                                containerHeight: 52.h,
                                containerWidth: 384.w,
                                buttonText: 'Sign in with Email',
                                buttonTextSize: 18.sp,
                                color: PsColors.whiteColor,
                                textColor: PsColors.authButtonBgColor,
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(RoutePaths.registerName);
                                },
                              ),
                            ],
                          ),
                        )
                      : OnboardingButtonWidgets(
                          containerHeight: 52.h,
                          containerWidth: 384.w,
                          buttonText: 'Get started',
                          buttonTextSize: 14.sp,
                          color: PsColors.authButtonBgColor,
                          textColor: PsColors.whiteColor,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(RoutePaths.registerName);
                          },
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
