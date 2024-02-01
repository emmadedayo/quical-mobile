import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/transaction/widgets/receipt_headings.dart';
import 'package:quical/presentation/transaction/widgets/tran_details_con.dart';
import 'package:quical/presentation/transaction/widgets/tran_details_con2.dart';
import 'package:quical/router/router.dart';

class TransactionHistoryReceipt extends StatelessWidget {
  const TransactionHistoryReceipt({super.key});

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
                const TopReceiptHeadings(),
                SizedBox(
                  height: 30.h,
                ),
                const TransactionDetailsCon1(),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 23,
                    right: 24,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Account holder",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Ajayi Badmus",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Account number",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "0111826272292",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Bank name",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Access bank",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.homeHistoryText2Color,
                              14.sp,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                const TransactionDetailsCon2(),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  height: 169.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Report transaction",
                  buttonTextSize: 18,
                  onTap: () async {},
                  color: PsColors.authButtonBgColor,
                  textColor: PsColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
