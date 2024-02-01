import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class ForgetTransactionBottomsheet extends StatelessWidget {
  const ForgetTransactionBottomsheet({super.key});

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
                'Forgot transaction PIN',
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
          SvgPicture.asset(
            AppImage.exclamationIcon,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Did you forget your PIN? We will send you an OTP to your email to confirm that it is you who is requesting this change.',
            style: HelperStyle.textStyle(
              context,
              PsColors.textfieldHintTextColor,
              14.sp,
              FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 90.h,
          ),
          ButtonWidget(
            containerHeight: 52,
            containerWidth: 370,
            buttonText: "Yes, send me an OTP",
            buttonTextSize: 18,
            onTap: () async {
               Navigator.of(context)
                  .pushNamed(RoutePaths.forgetTransactionPinScreen);
            },
            color: PsColors.authButtonBgColor,
            textColor: PsColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
