import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/utilities/custom_checkbox.dart';

class AccountStatementScreen extends StatefulWidget {
  const AccountStatementScreen({super.key});

  @override
  State<AccountStatementScreen> createState() => _AccountStatementScreenState();
}

class _AccountStatementScreenState extends State<AccountStatementScreen> {
  bool status = false;
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
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
          "Account Statement",
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
                    "Choose a timeframe for your statement and select a format you want it in",
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
                  hintText: "Select currency",
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
                    hintText: 'Select currency',
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
                  hintText: "Start Date",
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
                    hintText: 'DD/MM/YYYY',
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
                  hintText: "End Date",
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
                    hintText: 'DD/MM/YYYY',
                    hintStyle: HelperStyle.textStyle(
                      context,
                      PsColors.textfieldHintTextColor,
                      10.sp,
                      FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      value: shouldCheck,
                      shouldShowBorder: false,
                      borderColor: PsColors.authButtonBgColor,
                      checkedFillColor: PsColors.authButtonBgColor,
                      borderRadius: 4,
                      borderWidth: 1,
                      checkBoxSize: 16,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheck = val;
                        });
                      },
                    ),
                    Text(
                      "PDF Format",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.convertCurrencyTextColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      value: shouldCheck,
                      shouldShowBorder: false,
                      borderColor: PsColors.authButtonBgColor,
                      checkedFillColor: PsColors.authButtonBgColor,
                      borderRadius: 4,
                      borderWidth: 1,
                      checkBoxSize: 16,
                      onChanged: (val) {
                        //do your stuff here
                        setState(() {
                          shouldCheck = val;
                        });
                      },
                    ),
                    Text(
                      "PNG  Format",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.backGrayColor,
                        14.sp,
                        FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 156.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Get statement",
                  buttonTextSize: 18,
                  onTap: () async {
                    // Navigator.of(context)
                    //     .pushNamed(RoutePaths.reviewRecipientDetails);
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
