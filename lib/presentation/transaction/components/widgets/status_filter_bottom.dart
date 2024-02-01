import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/config/config.dart';

class StatusFilterBottomSheet extends StatelessWidget {
  const StatusFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date filter',
                style: HelperStyle.textStyle(
                  context,
                  PsColors.whiteColor,
                  14.sp,
                  FontWeight.w400,
                ),
              ),
              Text(
                'Status filter',
                style: HelperStyle.textStyle(
                  context,
                  PsColors.passwordCheckBoxTextColor,
                  14.sp,
                  FontWeight.w800,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  AppImage.xcancelIcon,
                  fit: BoxFit.fitWidth,
                  height: 41.h,
                  width: 41.w,
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'All status',
              style: HelperStyle.textStyle(
                context,
                PsColors.textfieldHintTextColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Successful',
              style: HelperStyle.textStyle(
                context,
                PsColors.textfieldHintTextColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'In-progress',
              style: HelperStyle.textStyle(
                context,
                PsColors.textfieldHintTextColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Failed',
              style: HelperStyle.textStyle(
                context,
                PsColors.textfieldHintTextColor,
                14.sp,
                FontWeight.w400,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
