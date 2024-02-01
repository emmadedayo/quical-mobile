import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/home_page/components/invoice/widget/invoice_list_details_con1.dart';
import 'package:quical/presentation/home_page/components/invoice/widget/invoice_list_details_con2.dart';
import 'package:quical/router/router.dart';

class InvoiceListDetails extends StatelessWidget {
  const InvoiceListDetails({super.key});

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
                Row(
                  children: [
                    Text(
                      "Invoice #12445",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.authButtonBgColor,
                        27.sp,
                        FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      height: 14.h,
                      width: 54.w,
                      decoration: BoxDecoration(
                        color: PsColors.greenSuccessColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          "Done",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.greenSuccessTextColor,
                            9.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.download,
                      size: 20,
                      color: PsColors.authButtonBgColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: PsColors.createInvoiceConColor),
                      child: Center(
                        child: Text(
                          "J L",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.grey2Color,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "jeffiloti@gmail.com",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.authButtonBgColor,
                            9.sp,
                            FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Susan Darling",
                          style: HelperStyle.textStyle(
                            context,
                            PsColors.grey2Color,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const InvoiceListDetailsCon1(),
                SizedBox(
                  height: 15.h,
                ),
                const InvoiceListDetailsCon2(),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 23,
                    right: 43,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.grey2Color,
                          14.sp,
                          FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$23456",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.grey2Color,
                          14.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 227.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Send invoice",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.invoiceScrenComplete);
                  },
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
