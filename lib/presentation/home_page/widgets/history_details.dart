import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/config/config.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 25,
            ),
            child: InkWell(
              onTap: () {},
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
            ),
          );
        });
  }
}
