import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/account_information/components/profile/widgets/profile_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          "Profile",
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Profile",
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
                const PrefileDetailsCon(),
                SizedBox(
                  height: 39.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 83.h,
                      color: PsColors.profileSmallColor,
                    ),
                    Expanded(
                      child: Container(
                        height: 83.h,
                        padding: const EdgeInsets.only(
                          left: 14,
                          top: 3,
                          right: 14,
                          bottom: 4,
                          
                        ),
                        color: PsColors.profileBigColor,
                        child: Text(
                          'You are unable to edit this profile because your account has already been verified. If you feel that you need to edit, please reach out to customer support.',
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.grey2Color,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 38.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
