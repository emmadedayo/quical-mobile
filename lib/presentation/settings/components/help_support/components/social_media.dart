import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/help_support/components/widgets/social_media_con.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

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
          "Socials",
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
                  "Socials",
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
              SocialMediaCon(
                image: AppImage.twitter,
                title: 'Twitter',
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              SocialMediaCon(
                image: AppImage.instaIcon,
                title: 'Instagram',
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              SocialMediaCon(
                image: AppImage.linkedInIcon,
                title: 'Linkedin',
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 9.h,
              ),
              SocialMediaCon(
                image: AppImage.facebookIcon,
                title: 'Facebook',
                onTap: () {},
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
