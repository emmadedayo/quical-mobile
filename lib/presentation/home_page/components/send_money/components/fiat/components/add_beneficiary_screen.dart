import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class AddBeneficiaryScreen extends StatelessWidget {
  const AddBeneficiaryScreen({super.key});
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
          "Who to pay",
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
                    "Select a payment method",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      RoutePaths.recipientBankDetails,
                    );
                  },
                  child: Container(
                    width: 364.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: PsColors.createInvoiceConColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28,
                        right: 21,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 27.w,
                            height: 27.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: PsColors.authButtonBgColor,
                            ),
                            child: Icon(
                              Icons.add,
                              color: PsColors.whiteColor,
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Text(
                            "New beneficiary",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.authButtonBgColor,
                              18.sp,
                              FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: PsColors.acctTypeColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                Container(
                  width: 364.w,
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 20,
                    top: 19,
                  ),
                  height: 153.h,
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
                            "Revolut",
                            style: HelperStyle.textStyle(
                              context,
                              PsColors.authButtonBgColor,
                              18.sp,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
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
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: PsColors.acctTypeColor,
                      ),
                    ],
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
