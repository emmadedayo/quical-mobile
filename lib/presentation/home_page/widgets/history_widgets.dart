import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
      ),
      child: Row(
        children: [
          Text(
            "History",
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
    );
  }
}
