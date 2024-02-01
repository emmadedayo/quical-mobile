import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class PhoneNumberRegistration extends StatefulWidget {
  const PhoneNumberRegistration({super.key});

  @override
  State<PhoneNumberRegistration> createState() =>
      _PhoneNumberRegistrationState();
}

class _PhoneNumberRegistrationState extends State<PhoneNumberRegistration> {
  TextEditingController phonNumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();

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
                  "Verify your phone number with a code",
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
                "We will send a code to your number; it helps us to secure your account.",
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
              Row(
                children: [
                  SizedBox(
                    width: 89,
                    child: TextFieldWidget(
                      controller: phonNumberController,
                      hintText: "Country",
                      textInputType: TextInputType.text,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                      ]),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: PsColors.whiteColor,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: PsColors.textfieldBorderColor,
                                width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: PsColors.textfieldBorderColor, width: 1.0),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        hintText: 'NG (+234)',
                        hintStyle: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          10.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: TextFieldWidget(
                      controller: phonNumberController,
                      hintText: "Phone number",
                      textInputType: TextInputType.text,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                      ]),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: PsColors.whiteColor,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: PsColors.textfieldBorderColor,
                                width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: PsColors.textfieldBorderColor, width: 1.0),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        hintText: '(0)12345679',
                        hintStyle: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          10.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 422.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Send code",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.verifyPhoneRegistrationScreen);
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
