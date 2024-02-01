import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class AddNewInvoiceContd extends StatelessWidget {
  const AddNewInvoiceContd({super.key});

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
          "Invoice",
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 18, right: 27),
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create and send your invoices.",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              TextFieldWidgetSub(
                controller: emailController,
                hintText: "Bill to",
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
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Receiver’s Name',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFieldWidgetSub(
                controller: emailController,
                hintText: "Receiver’s Email Address",
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
                  hintText: 'Receiver’s Email Address',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFieldWidgetSub(
                controller: emailController,
                hintText: "Receiver’s Phone number",
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
                  hintText: 'Receiver’s Phone number',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 302.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Send Invoice",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context).pushNamed(
                    RoutePaths.recieptScreen,
                  );
                },
                color: PsColors.authButtonBgColor,
                textColor: PsColors.whiteColor,
              ),
              SizedBox(
                height: 13.h,
              ),
              InkWell(
                onTap: () {
                  //  Navigator.of(context)
                  //     .pushNamed(RoutePaths.phoneNumberRegistration);
                },
                child: Container(
                  height: 52.h,
                  width: 369.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: PsColors.authButtonBgColor,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Save as draft",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.authButtonBgColor,
                        18.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
