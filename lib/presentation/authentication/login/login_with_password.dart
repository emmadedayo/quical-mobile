import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class LoginWithPasswordScreen extends StatelessWidget {
  const LoginWithPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
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
          "Login",
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
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              SvgPicture.asset(
                AppImage.dummyImageIcon,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 43.h,
              ),
              Center(
                child: Text(
                  "Hello Jason, enter your password",
                  textAlign: TextAlign.center,
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              TextFieldWidget(
                controller: emailController,
                hintText: "Password",
                textInputType: TextInputType.text,
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                ]),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: PsColors.whiteColor,
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: PsColors.textfieldBorderColor, width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        color: PsColors.textfieldBorderColor, width: 1.0),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Hellboy1289',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Row(
                children: [
                  Text(
                    "Trouble signing in?",
                    textAlign: TextAlign.center,
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.passwordCheckBoxTextColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //  Navigator.of(context)
                      //       .pushNamed(RoutePaths.faceIDScreen);
                    },
                    child: Text(
                      'Recover your password.',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: PsColors.noOtpCodeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.1,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 67.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not you?",
                    textAlign: TextAlign.center,
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.passwordCheckBoxTextColor,
                      14.sp,
                      FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //  Navigator.of(context)
                      //       .pushNamed(RoutePaths.faceIDScreen);
                    },
                    child: Text(
                      'Switch account',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: PsColors.noOtpCodeColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.1,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 151.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Log into your account",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.recoverAccountScreen);
                },
                color: PsColors.authButtonBgColor,
                textColor: PsColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
