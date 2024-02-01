import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

import '../../../../../../../utilities/toggle_switch.dart';

class RecipientBankDetails extends StatefulWidget {
  const RecipientBankDetails({super.key});

  @override
  State<RecipientBankDetails> createState() => _RecipientBankDetailsState();
}

class _RecipientBankDetailsState extends State<RecipientBankDetails> {
  bool status = false;

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
          "Enter bank details",
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
                    "Fill in the recipients bank details",
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
                  controller: textEditingController,
                  hintText: "Select your bank",
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
                    hintText: 'Select your bank name',
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
                SizedBox(
                  height: 27.h,
                ),
                TextFieldWidgetSub(
                  controller: textEditingController,
                  hintText: "Account number",
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
                    hintText: 'Account number',
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
                Row(
                  children: [
                    FlutterSwitch(
                      width: 56.w,
                      height: 26.h,
                      valueFontSize: 10.0,
                      toggleSize: 26.0,
                      value: status,
                      borderRadius: 30.0,
                      // padding: 8.0,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Save beneficiary",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.convertCurrencyTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 357.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Next",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.recipientDetailsContd);
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
