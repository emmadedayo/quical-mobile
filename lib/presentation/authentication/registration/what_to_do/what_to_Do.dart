import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/authentication/registration/what_to_do/components/container_button.dart';
import 'package:quical/router/router_constant.dart';

class WhatToDoScreen extends StatelessWidget {
  const WhatToDoScreen({super.key});

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
                  "What would you like to do next?",
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Don’t worry, you can come back to this later.",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.verifyMailTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 91.h,
              ),
              ContainerButton(
                onTap: () {},
                text: "Activate face recognition",
                subText: "Add an extra layer of security.",
                imagePath: AppImage.activateRecImage,
              ),
              SizedBox(
                height: 41.h,
              ),
              ContainerButton(
                onTap: () {},
                text: "Send money to your friends\nand family",
                subText: "Add an extra layer of security.",
                imagePath: AppImage.sendMoneyImage,
              ),
              SizedBox(
                height: 41.h,
              ),
              ContainerButton(
                onTap: () {},
                text: "Get local account details",
                subText: "Receive payment or income.",
                imagePath: AppImage.getLocalDImage,
              ),
              SizedBox(
                height: 288.h,
              ),
              TextButton(
                onPressed: () {
                   Navigator.of(context)
                        .pushNamed(RoutePaths.faceIDScreen);
                },
                child: Text(
                  'Decide later',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: PsColors.noOtpCodeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.1,
                      decoration: TextDecoration.underline,
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
