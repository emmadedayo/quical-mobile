import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/create_acct_provider.dart';

class CreateAccountType extends StatelessWidget {
  const CreateAccountType({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAcctTypeProvider createAcctTypeProvider =
        Provider.of<CreateAcctTypeProvider>(context);
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
                  "Which account would you like to create?",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 41.h,
              ),
              InkWell(
                onTap: () {
                  createAcctTypeProvider.selectOption(0);
                },
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: 0 ==
                                  createAcctTypeProvider.selectedOptionIndex 
                              ? PsColors.noOtpCodeColor
                              : PsColors.backGrayInactiveColor,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: 0 ==
                                    createAcctTypeProvider.selectedOptionIndex 
                                ? PsColors.noOtpCodeColor
                                : PsColors.backGrayInactiveColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "Personal account",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.acctTypeColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              InkWell(
                onTap: () {
                  createAcctTypeProvider.selectOption(1);
                },
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: 1 ==
                                  createAcctTypeProvider.selectedOptionIndex 
                              ? PsColors.noOtpCodeColor
                              : PsColors.backGrayInactiveColor,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: 1 ==
                                    createAcctTypeProvider.selectedOptionIndex
                                ? PsColors.noOtpCodeColor
                                : PsColors.backGrayInactiveColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "Business account",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.acctTypeColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 517.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Continue",
                buttonTextSize: 18,
                onTap: () async {
                  int selectedIndex =
                      createAcctTypeProvider.selectedOptionIndex;
                  createAcctTypeProvider.navigateToSelectedScreen(
                      context, selectedIndex);
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
