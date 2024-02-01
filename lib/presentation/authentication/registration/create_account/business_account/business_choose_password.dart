import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';
import 'package:quical/utilities/custom_checkbox.dart';

class BusinessChoosePasswordScreen extends StatefulWidget {
  const BusinessChoosePasswordScreen({super.key});

  @override
  State<BusinessChoosePasswordScreen> createState() =>
      _BusinessChoosePasswordScreenState();
}

class _BusinessChoosePasswordScreenState
    extends State<BusinessChoosePasswordScreen> {
  TextEditingController emailController = TextEditingController();
  bool shouldCheck = false;
  bool shouldCheckDefault = false;

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
          "Register",
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
                  "Choose a password",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
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
                height: 30.h,
              ),
              TextFieldWidget(
                controller: emailController,
                hintText: "Confirm Password",
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
                  contentPadding: const EdgeInsets.only(right: 15, left: 15),
                  hintText: 'At least 8 characters',
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 10,
                    minWidth: 10,
                  ),
                  // suffixIcon: Text("show"),
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
                      PsColors.acctTypeColor,
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
                    "At least one upper case",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.acctTypeColor,
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
              SizedBox(
                height: 220.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Continue",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context).pushNamed(RoutePaths.businessPhoneVerified);
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
