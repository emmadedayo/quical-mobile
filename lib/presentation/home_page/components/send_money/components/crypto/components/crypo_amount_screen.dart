import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class CrypoEnterAmountScreen extends StatelessWidget {
  const CrypoEnterAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
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
          "Send funds",
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
                    "Enter amount",
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
                Row(
                  children: [
                    TextFieldWidgetSub1(
                      controller: textEditingController,
                      hintText: "Enter an amount to send",
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
                        contentPadding:
                            const EdgeInsets.only(right: 15, left: 15),
                        hintText: '40',
                        hintStyle: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          10.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    TextFieldWidgetSub2(
                      controller: textEditingController,
                      hintText: "",
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
                        contentPadding:
                            const EdgeInsets.only(right: 15, left: 15),
                        hintText: 'BTC',
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 20,
                          color: PsColors.authButtonBgColor,
                        ),
                        hintStyle: HelperStyle.textStyle(
                          context,
                          PsColors.textfieldHintTextColor,
                          10.sp,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 31.h,
                ),
                Center(
                  child: Text(
                    "Balance: BTC 10",
                    style: HelperStyle.textStyle(
                      context,
                      PsColors.passwordCheckBoxTextColor,
                      11.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 477.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Next",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.walletAddressScreen);
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
