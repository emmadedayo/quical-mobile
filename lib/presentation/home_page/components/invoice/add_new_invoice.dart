import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/router/router.dart';

class AddNewInvoiceScreen extends StatelessWidget {
  const AddNewInvoiceScreen({super.key});

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
                hintText: "Title of invoice",
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
                  hintText: 'What is the invoice for?',
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
                hintText: "Amount",
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
                  hintText: 'How much are you charging?',
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
                hintText: "Tax",
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
                  hintText: 'How much are you charging?',
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
                hintText: "Invoice description",
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
                  hintText: 'Tell us details',
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
                hintText: "Quantity",
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
                  hintText: 'How many goods or services is this for?',
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
                hintText: "Payment instructions",
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
                  hintText: 'How will the receiever pay?',
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 94.h,
              ),
              ButtonWidget(
                containerHeight: 52,
                containerWidth: 370,
                buttonText: "Continue",
                buttonTextSize: 18,
                onTap: () async {
                  Navigator.of(context)
                      .pushNamed(RoutePaths.addNewInvoiceContd);
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
