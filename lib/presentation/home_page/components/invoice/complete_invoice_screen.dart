import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';

class InvoiceScrenComplete extends StatelessWidget {
  const InvoiceScrenComplete({super.key});

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
          "Invoice",
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
                  "Invoice sent to Badmus Adeyemi. Congratulations.",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 91.h,
              ),
               Image.asset(
                AppImage.check,
                fit: BoxFit.fitWidth,
                scale: 2,
              ),
              // SvgPicture.asset(
              //   AppImage.onboarding1,
              //   fit: BoxFit.fitWidth,
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height * 0.30,
              // ),
              SizedBox(
                height: 209.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Done",
                buttonTextSize: 18,
                onTap: () async {
                  //  Navigator.of(context)
                  //     .pushNamed(RoutePaths.mainNavigationScreen);
                },
                color: PsColors.authButtonBgColor,
                textColor: PsColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
