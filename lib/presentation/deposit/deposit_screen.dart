import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'package:quical/components/textfield_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/logic/provider/deposit_provider.dart';
import 'package:quical/presentation/deposit/components/deposit_crypo/deposit_crypo.dart';
import 'package:quical/presentation/deposit/components/deposit_fiat/deposit_fiat.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageControllerProvider = Provider.of<DepositProvider>(context);

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
          "Deposit",
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
          padding: const EdgeInsets.only(
            left: 18,
            right: 27,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 18.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select the asset you want to deposit",
                  style: HelperStyle.textStyle(
                    context,
                    PsColors.authButtonBgColor,
                    27.sp,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(0);
                    },
                    child: Container(
                      width: 107.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: pageControllerProvider.selectedIndex == 0
                            ? PsColors.authButtonBgColor
                            : PsColors.whiteColor,
                        border: Border.all(
                          width: 1,
                          color: PsColors.authButtonBgColor,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Fiat",
                          style: HelperStyle.textStyle(
                            context,
                            pageControllerProvider.selectedIndex == 0
                                ? PsColors.whiteColor
                                : PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageControllerProvider.setPage(1);
                    },
                    child: Container(
                      width: 107.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: pageControllerProvider.selectedIndex == 1
                            ? PsColors.authButtonBgColor
                            : PsColors.whiteColor,
                        border: Border.all(
                          width: 1,
                          color: PsColors.authButtonBgColor,
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Crypto",
                          style: HelperStyle.textStyle(
                            context,
                            pageControllerProvider.selectedIndex == 1
                                ? PsColors.whiteColor
                                : PsColors.authButtonBgColor,
                            14.sp,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              TextFieldWidgetSub(
                controller: pageControllerProvider.searchController,
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
                  contentPadding: const EdgeInsets.only(right: 15, left: 15),
                  hintText: 'Search for an asset',
                  focusColor: PsColors.convertCurrencyTextColor,
                  hintStyle: HelperStyle.textStyle(
                    context,
                    PsColors.textfieldHintTextColor,
                    10.sp,
                    FontWeight.w400,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    onPressed: () {
                      // Handle search button press
                      if (kDebugMode) {
                        print(
                            'Search pressed: ${pageControllerProvider.searchController.text}');
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Expanded(
                flex: 40,
                child: PageView(
                  controller: pageControllerProvider.pageController,
                  onPageChanged: (index) {
                    pageControllerProvider.setPage(index);
                  },
                  children: const [
                    DepositFiatCon(),
                    DepositCrypoCon(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
