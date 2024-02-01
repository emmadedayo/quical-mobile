import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quical/config/config.dart';

typedef FutureVoidFunction = Future<void> Function();

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      this.validator,
      this.valueChanged,
      this.decoration,
      this.isPassword,
      this.onTap,
      this.formatter})
      : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool? isPassword;
  final bool autofocus;
  final MultiValidator? validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;
  final FutureVoidFunction? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: HelperStyle.textStyle(
              context, PsColors.backGrayColor, 14.sp, FontWeight.w500),
        ),
        SizedBox(height: 5.h),
        TextFormField(
          onTap: onTap,
          controller: controller,
          autofocus: autofocus,
          readOnly: readOnly,
          enabled: enabled,
          obscureText: isPassword ?? false,
          inputFormatters: formatter,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: PsColors.blackColor,
          validator: validator!,
          style: HelperStyle.textStyle(context,
              const Color.fromRGBO(0, 0, 0, 0.7), 14, FontWeight.normal),
          onChanged: valueChanged,
          keyboardType: textInputType,
          decoration: decoration,
        ),
      ],
    );
  }
}
class TextFieldWidgetSub extends StatelessWidget {
  const TextFieldWidgetSub(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      this.validator,
      this.valueChanged,
      this.decoration,
      this.isPassword,
      this.onTap,
      this.formatter})
      : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool? isPassword;
  final bool autofocus;
  final MultiValidator? validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;
  final FutureVoidFunction? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: HelperStyle.textStyle(
              context, PsColors.backGrayColor, 14.sp, FontWeight.w500),
        ),
        SizedBox(height: 5.h),
        Container(
          height: 44.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: PsColors.convertSearchFieldColor,
            ),
          ),
          child: TextFormField(
            onTap: onTap,
            controller: controller,
            autofocus: autofocus,
            readOnly: readOnly,
            enabled: enabled,
            obscureText: isPassword ?? false,
            inputFormatters: formatter,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: PsColors.blackColor,
            validator: validator!,
            style: HelperStyle.textStyle(context,
                const Color.fromRGBO(0, 0, 0, 0.7), 14, FontWeight.normal),
            onChanged: valueChanged,
            keyboardType: textInputType,
            decoration: decoration,
          ),
        ),
      ],
    );
  }
}

class TextFieldWidgetSub1 extends StatelessWidget {
  const TextFieldWidgetSub1(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      this.validator,
      this.valueChanged,
      this.decoration,
      this.isPassword,
      this.onTap,
      this.formatter})
      : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool? isPassword;
  final bool autofocus;
  final MultiValidator? validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;
  final FutureVoidFunction? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: HelperStyle.textStyle(
              context, PsColors.backGrayColor, 14.sp, FontWeight.w500),
        ),
        SizedBox(height: 5.h),
        Container(
          height: 44.h,
          width: 248.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: PsColors.convertSearchFieldColor,
            ),
          ),
          child: TextFormField(
            onTap: onTap,
            controller: controller,
            autofocus: autofocus,
            readOnly: readOnly,
            enabled: enabled,
            obscureText: isPassword ?? false,
            inputFormatters: formatter,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: PsColors.blackColor,
            validator: validator!,
            style: HelperStyle.textStyle(context,
                const Color.fromRGBO(0, 0, 0, 0.7), 14, FontWeight.normal),
            onChanged: valueChanged,
            keyboardType: textInputType,
            decoration: decoration,
          ),
        ),
      ],
    );
  }
}

class TextFieldWidgetSub2 extends StatelessWidget {
  const TextFieldWidgetSub2(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      this.validator,
      this.valueChanged,
      this.decoration,
      this.isPassword,
      this.onTap,
      this.formatter})
      : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool? isPassword;
  final bool autofocus;
  final MultiValidator? validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;
  final FutureVoidFunction? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: HelperStyle.textStyle(
              context, PsColors.backGrayColor, 14.sp, FontWeight.w500),
        ),
        SizedBox(height: 5.h),
        Container(
          height: 44.h,
          width: 117.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: PsColors.convertSearchFieldColor,
            ),
          ),
          child: TextFormField(
            onTap: onTap,
            controller: controller,
            autofocus: autofocus,
            readOnly: readOnly,
            enabled: enabled,
            obscureText: isPassword ?? false,
            inputFormatters: formatter,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: PsColors.blackColor,
            validator: validator!,
            style: HelperStyle.textStyle(context,
                const Color.fromRGBO(0, 0, 0, 0.7), 14, FontWeight.normal),
            onChanged: valueChanged,
            keyboardType: textInputType,
            decoration: decoration,
          ),
        ),
      ],
    );
  }
}

class DateFieldWidget extends StatelessWidget {
  const DateFieldWidget(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      this.validator,
      this.valueChanged,
      this.decoration,
      this.isPassword,
      this.formatter})
      : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool? isPassword;
  final bool autofocus;
  final MultiValidator? validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText!,
          style: HelperStyle.textStyle(
              context, PsColors.backGrayColor, 13.sp, FontWeight.w500),
        ),
        SizedBox(height: 5.h),
        // TextfieldDateAndTimePicker(
        //   cupertinoDatePickerBackgroundColor: Colors.white,
        //   cupertinoDatePickerMaximumDate: DateTime(2099),
        //   cupertinoDatePickerMaximumYear: 2099,
        //   validator: validator!,
        //   textfieldDateTimePickerWidth: MediaQuery.of(context).size.width,
        //   textfieldDateTimePickerMargin: const EdgeInsets.all(0),
        //   textfieldDateTimePickerPadding: const EdgeInsets.all(0),
        //   cupertinoDatePickerMinimumYear: 1990,
        //   cupertinoDatePickerMinimumDate: DateTime(1990),
        //   cupertinoDateInitialDateTime: DateTime.now(),
        //   materialDatePickerFirstDate: DateTime.now(),
        //   materialDatePickerInitialDate: DateTime.now(),
        //   materialDatePickerLastDate: DateTime(2099),
        //   preferredDateFormat: DateFormat.yMMMEd(),
        //   materialTimePickerUse24hrFormat: false,
        //   cupertinoTimePickerMinuteInterval: 1,
        //   cupertinoTimePickerUse24hFormat: false,
        //   textfieldDateAndTimePickerController: controller,
        //   style: HelperStyle.textStyle(
        //     context,
        //     PsColors.authHeaderColor,
        //     12.sp,
        //     FontWeight.w400,
        //   ),
        //   textCapitalization: TextCapitalization.sentences,
        //   cursorColor: Colors.black,
        //   decoration: decoration,
        //   materialInitialTime: TimeOfDay.now(),
        // ),
      ],
    );
  }
}

class TextFieldWidgetTwo extends StatelessWidget {
  const TextFieldWidgetTwo(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.textInputType,
      this.readOnly = false,
      this.enabled = true,
      this.autofocus = false,
      required this.validator,
      this.valueChanged,
      this.decoration,
      this.formatter})
      : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType textInputType;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final MultiValidator validator;
  final ValueChanged? valueChanged;
  final InputDecoration? decoration;
  final List<FilteringTextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          autofocus: autofocus,
          readOnly: readOnly,
          enabled: enabled,
          inputFormatters: formatter,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: PsColors.blackColor,
          validator: validator,
          style: HelperStyle.textStyle(context,
              const Color.fromRGBO(0, 0, 0, 0.7), 14, FontWeight.normal),
          onChanged: valueChanged,
          keyboardType: textInputType,
          decoration: decoration,
        ),
      ],
    );
  }
}
