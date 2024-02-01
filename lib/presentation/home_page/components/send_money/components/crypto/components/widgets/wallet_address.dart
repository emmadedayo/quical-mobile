import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/wallet_address_provider.dart';
import 'package:quical/router/router.dart';

class WalletAddressPage extends StatelessWidget {
  const WalletAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageControllerProvider = Provider.of<WalletAddressProvider>(context);
    return Column(
      children: [
        TextFieldWidgetSub(
          controller: pageControllerProvider.walletController,
          hintText: "Enter username",
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
            hintText: 'Username',
            hintStyle: HelperStyle.textStyle(
              context,
              PsColors.textfieldHintTextColor,
              10.sp,
              FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Text(
          "OR",
          style: HelperStyle.textStyle(
            context,
            PsColors.blackColor,
            18.sp,
            FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Container(
          width: 331.w,
          height: 94.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: PsColors.scanConColor,
          ),
          child: Center(
            child: Text(
              "Scan barcode",
              style: HelperStyle.textStyle(
                context,
                PsColors.indicatorSubColor,
                18.sp,
                FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 377.h,
        ),
        ButtonWidget(
          containerHeight: 52,
          containerWidth: 370,
          buttonText: "Send fund",
          buttonTextSize: 18,
          onTap: () async {
            Navigator.of(context)
                .pushNamed(RoutePaths.cryptoTransactionReviewScreen);
          },
          color: PsColors.authButtonBgColor,
          textColor: PsColors.whiteColor,
        ),
      ],
    );
  }
}
