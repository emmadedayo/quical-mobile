import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/utilities/custom_checkbox.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  TextEditingController emailController = TextEditingController();
  bool shouldCheck = false;
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
          "Reset password",
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Reset password",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      27.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWidgetSub(
                  controller: emailController,
                  hintText: "Enter current password",
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
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    hintText: 'Enter current password',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hide",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          14.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                    hintStyle: HelperStyle.textStyle(
                      context,
                      PsColors.textfieldHintTextColor,
                      10.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                TextFieldWidgetSub(
                  controller: emailController,
                  hintText: "Enter new password",
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
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    hintText: 'New password',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Show",
                        style: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          14.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                    hintStyle: HelperStyle.textStyle(
                      context,
                      PsColors.textfieldHintTextColor,
                      10.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                TextFieldWidgetSub(
                  controller: emailController,
                  hintText: "Confirm new password",
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
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    hintText: 'Confirm new password',
                    hintStyle: HelperStyle.textStyle(
                      context,
                      PsColors.textfieldHintTextColor,
                      10.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      value: shouldCheck,
                      shouldShowBorder: true,
                      borderColor: PsColors.passwordCheckBoxColor,
                      checkedFillColor: PsColors.passwordCheckBoxColor,
                      borderRadius: 4,
                      borderWidth: 1,
                      checkBoxSize: 15,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheck = val;
                        });
                      },
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "At least one upper case",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.passwordCheckBoxTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      value: shouldCheck,
                      shouldShowBorder: true,
                      borderColor: PsColors.passwordCheckBoxColor,
                      checkedFillColor: PsColors.passwordCheckBoxColor,
                      borderRadius: 4,
                      borderWidth: 1,
                      checkBoxSize: 15,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheck = val;
                        });
                      },
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "At least one number",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.passwordCheckBoxTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      value: shouldCheck,
                      shouldShowBorder: true,
                      borderColor: PsColors.passwordCheckBoxColor,
                      checkedFillColor: PsColors.passwordCheckBoxColor,
                      borderRadius: 4,
                      borderWidth: 1,
                      checkBoxSize: 15,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheck = val;
                        });
                      },
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "At least one special character",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.passwordCheckBoxTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 157.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Continue",
                  buttonTextSize: 18,
                  onTap: () async {
                    // Navigator.of(context)
                    //     .pushNamed(RoutePaths.recipientDetailsContd);
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
