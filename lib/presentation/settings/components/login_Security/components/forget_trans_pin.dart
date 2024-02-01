import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';
import 'package:quical/utilities/otp_field_custom.dart/components/otp_field.dart';

class ForgetTransactionPinScreen extends StatefulWidget {
  const ForgetTransactionPinScreen({super.key});

  @override
  State<ForgetTransactionPinScreen> createState() =>
      _ForgetTransactionPinScreenState();
}

class _ForgetTransactionPinScreenState
    extends State<ForgetTransactionPinScreen> {
  var otpController;
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
                    "We just sent you an email",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Enter the OTP we securely sent to bamideleilerioluwa@gmail.com",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.verifyMailTextColor,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: OtpPinField(
                    key: otpController,
                    onSubmit: (text) {
                      if (kDebugMode) {
                        print('Entered pin is $text');
                      }
                    },
                    onChange: (text) {
                      if (kDebugMode) {
                        print('Entered pin is $text');
                      }
                    },
                    otpPinFieldStyle: OtpPinFieldStyle(
                      defaultFieldBorderColor: PsColors.onboardingBgColor,
                      activeFieldBorderColor: PsColors.onboardingBgColor,

                      /// Background Color for inactive/unfocused Otp_Pin_Field
                      defaultFieldBackgroundColor: PsColors.backgroundColor,
                      activeFieldBackgroundColor: PsColors.backgroundColor,
                    ),
                    maxLength: 6,
                    showCursor: false,
                    cursorColor: PsColors.mainColor,
                    fieldWidth: 38,
                    upperChild: const Column(
                      children: [
                        SizedBox(height: 30),
                        Icon(Icons.flutter_dash_outlined, size: 150),
                        SizedBox(height: 20),
                      ],
                    ),
                    showCustomKeyboard: false,
                    cursorWidth: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    otpPinFieldDecoration:
                        OtpPinFieldDecoration.defaultPinBoxDecoration,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 62.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'I didn’t receive any OTP. resend.',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: PsColors.noOtpCodeColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.1,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 380.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Reset PIN",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.transactionPinSuccessPage);
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
