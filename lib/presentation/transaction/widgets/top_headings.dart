import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/transaction/components/widgets/currency_filter_bottom.dart';
import 'package:quical/presentation/transaction/components/widgets/date_filter_bottom.dart';
import 'package:quical/presentation/transaction/components/widgets/status_filter_bottom.dart';

class TransactionsTopHeadings extends StatelessWidget {
  const TransactionsTopHeadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const DateFilterBottomSheet();
                },
              );
            },
            child: Container(
              height: 44.h,
              width: 105.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: PsColors.convertSearchFieldColor,
                ),
              ),
              child: Center(
                child: Text(
                  "Date range",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 43.w,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const StatusFilterBottomSheet();
                },
              );
            },
            child: Container(
              height: 44.h,
              width: 73.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: PsColors.convertSearchFieldColor,
                ),
              ),
              child: Center(
                child: Text(
                  "Status",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 43.w,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const CurrencyFilterBottomsheet();
                },
              );
            },
            child: Container(
              height: 44.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: PsColors.convertSearchFieldColor,
                ),
              ),
              child: Center(
                child: Text(
                  "Currency",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
