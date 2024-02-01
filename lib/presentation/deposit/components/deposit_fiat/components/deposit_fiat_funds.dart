import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quical/config/config.dart';

class DepositFiatFundWallet extends StatelessWidget {
  const DepositFiatFundWallet({super.key});

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
          "Fund your account",
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fund your account",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                SvgPicture.asset(
                  AppImage.bankIcon,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Send money to the bank details below to fund your account. Your bank limits may apply",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Container(
                  width: 364.w,
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 20,
                    top: 10,
                  ),
                  height: 154.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: PsColors.createInvoiceConColor,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account number",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.authButtonBgColor,
                              11.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "02000102674",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            "Bank name",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.authButtonBgColor,
                              11.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Paga",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            "Account name",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.authButtonBgColor,
                              11.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Adejagun Olamide",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 79.w,
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
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Share details",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.convertCurrencyTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                    SvgPicture.asset(
                      AppImage.shareIcon,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Learn about your NGN limits',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: PsColors.noOtpCodeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.1,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Need help? Contact supplier',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: PsColors.noOtpCodeColor,
                        fontSize: 14,
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
      ),
    );
  }
}
