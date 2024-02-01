import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quical/components/button_components.dart';
import 'package:quical/config/config.dart';
import 'package:quical/presentation/convert/widgets/convert_container.dart';
import 'package:quical/router/router.dart';

class ConvertScreen extends StatelessWidget {
  const ConvertScreen({super.key});

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
          "Convert",
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
                    "Enter the amount you want to convert",
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: PsColors.whiteColor,
                    border: Border.all(
                      width: 1,
                      color: PsColors.convertSearchFieldColor,
                    ),
                  ),
                  height: 45.h,
                  width: 336.w,
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      fillColor: PsColors.whiteColor,
                      hintText: 'Search for an asset',
                      contentPadding: const EdgeInsets.all(15),
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
                                'Search pressed: ${textEditingController.text}');
                          }
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 38.h,
                ),
                ConvertContainer(
                  subtext1: 'From',
                  text1: '200.00',
                  text2: 'NGN',
                  onTap: () {},
                  subtext2: "Balance 50 NGN",
                ),
                SizedBox(
                  height: 11.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "1 GBP = 999.99 NGN",
                      style: HelperStyle.textStyle(
                        context,
                        PsColors.grey2Color,
                        9.sp,
                        FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                ConvertContainer(
                  subtext1: 'To',
                  text1: '20.00',
                  text2: 'GBP',
                  onTap: () {},
                  subtext2: "",
                ),
                SizedBox(
                  height: 104.h,
                ),
                ButtonWidget(
                  containerHeight: 52,
                  containerWidth: 370,
                  buttonText: "Continue",
                  buttonTextSize: 18,
                  onTap: () async {
                    Navigator.of(context)
                        .pushNamed(RoutePaths.convertReviewScreen);
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
