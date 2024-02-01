import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

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
          "Contact support",
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
                  "Lets sort this out",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell us as much as you can about the problem and we will be in touch soon",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.grey2Color,
                    14.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                ),
                child: TextFieldWidget(
                  controller: emailController,
                  hintText: "Enter message",
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
                            color: PsColors.textfieldBorderColor, width: 1)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: PsColors.textfieldBorderColor, width: 1.0),
                    ),
                    contentPadding: const EdgeInsets.all(15),
                    hintText: 'Enter message',
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
                height: 113.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: PsColors.authButtonBgColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Attach Image",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.authButtonBgColor,
                      18.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 320.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Send",
                buttonTextSize: 18,
                onTap: () async {},
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
