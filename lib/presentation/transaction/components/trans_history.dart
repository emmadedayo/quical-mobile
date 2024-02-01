import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "6 Jun 2023",
            style: HelperStyle.textStyle(
              context,
              PsColors.homeHistoryText2Color,
              14.sp,
              FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.transactionHistoryReceipt);
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 6,
                  ),
                  height: 63.h,
                  width: 394.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: PsColors.homeHistoryConColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "To",
                              style: HelperStyle.textStyle(
                                context,
                                PsColors.authButtonBgColor,
                                9.sp,
                                FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 14.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                color: PsColors.greenSuccessColor,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  "Successful",
                                  style: HelperStyle.textStyle(
                                    context,
                                    PsColors.greenSuccessTextColor,
                                    9.sp,
                                    FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Badmus Thomas",
                              style: HelperStyle.textStyle(
                                context,
                                PsColors.grey2Color,
                                14.sp,
                                FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "- USD 2000",
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
                  ),
                ),
              );
            }),
      ],
    );
  }
}
