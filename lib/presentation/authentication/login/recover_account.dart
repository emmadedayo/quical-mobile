import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class RecoverAccountScreen extends StatelessWidget {
  const RecoverAccountScreen({super.key});

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
          "Recover your password",
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recover your account",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
                 Text(
                "Enter your email address, a link will be sent to it, use the link to reset your password",
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
              TextFieldWidget(
                controller: emailController,
                hintText: "Enter your email address",
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
                  hintText: 'Email address',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 472.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Recover your account",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context).pushNamed(RoutePaths.resetPasswordScreen);
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
