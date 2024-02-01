import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

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
          "Help center",
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
                  "Help center",
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
              Container(
                height: 125.h,
                padding: const EdgeInsets.only(
                  left: 31,
                  right: 29,
                  top: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: PsColors.homeHistoryConColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "+23470483867192",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "8am - 8pm",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.grey2Color,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Monday - Sunday",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.grey2Color,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 58.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 1,
                          color: PsColors.authButtonBgColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Copy",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
