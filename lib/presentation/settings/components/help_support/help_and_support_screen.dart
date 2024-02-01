import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/settings/components/help_support/widgets/support_con.dart';
import 'package:quical/router/router.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

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
          "Help and support",
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
                  "Help and support",
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
              SupportCon(
                image: AppImage.questionMark,
                title: 'Help center',
                subtitle: 'Fast answers to all of the most common questions.',
                onTap: () {
                  Navigator.of(context).pushNamed(RoutePaths.helpCenter);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SupportCon(
                image: AppImage.helpIcon,
                title: 'Contact support',
                subtitle: 'Chat with our team of experts',
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.contactSupportScreen);
                },
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SupportCon(
                image: AppImage.callCenterIcon,
                title: 'Call center',
                subtitle: 'Call us to speak to a support agent',
                onTap: () {},
                bgColor: PsColors.homeHistoryConColor,
                iconColor: PsColors.authButtonBgColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              SupportCon(
                image: AppImage.linkIcon,
                title: 'Follow us on social media',
                subtitle: 'Join our social media to view latest information',
                onTap: () {
                  Navigator.of(context).pushNamed(RoutePaths.socialMediaScreen);
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
