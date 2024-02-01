import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/home_page/components/invoice/components/invoice_list.dart';
import 'package:quical/router/router.dart';

class CreateAndSendInvoiceScreen extends StatelessWidget {
  const CreateAndSendInvoiceScreen({super.key});

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create and send your invoices.",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                      Navigator.of(context)
                      .pushNamed(RoutePaths.addNewInvoiceScreen);
                  },
                  child: Container(
                    width: 364.w,
                    height: 65.h,
                    padding: const EdgeInsets.only(
                      left: 23,
                      right: 23,
                    ),
                    decoration: BoxDecoration(
                      color: PsColors.createInvoiceConColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 27.h,
                          width: 27.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: PsColors.authButtonBgColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 19,
                              color: PsColors.indicatorSubColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          "Add a new invoice",
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
                          size: 20,
                          color: PsColors.authButtonBgColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                const InvoiceList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
