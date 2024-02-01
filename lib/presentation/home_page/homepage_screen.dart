import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/home_page/components/service_list.dart';
import 'package:quical/presentation/home_page/widgets/account_info_widgets.dart';
import 'package:quical/presentation/home_page/widgets/widgets.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PsColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NotificationAndProfileImage(),
              SizedBox(
                height: 40.h,
              ),
              const BalanceHeadingsWidgets(),
              SizedBox(
                height: 31.h,
              ),
              const OptionsWidgets(),
              SizedBox(
                height: 35.h,
              ),
              const HistoryWidget(),
              SizedBox(
                height: 5.h,
              ),
              const HistoryDetails(),
              SizedBox(
                height: 42.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 25,
                ),
                child: Row(
                  children: [
                    Text(
                      "Services",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.convertCurrencyTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w800,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          size: 20,
                          color: PsColors.authButtonBgColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: SizedBox(
                  height: 150.h,
                  child: const ServicesListView(),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 25,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account information",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.convertCurrencyTextColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              const AccountInformationWidgets(),
              SizedBox(
                height: 57.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
