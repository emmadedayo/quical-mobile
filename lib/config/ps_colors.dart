import 'package:quical/utilities/utils.dart';
import 'package:flutter/material.dart';

class PsColors {
  PsColors._();

  ///
  /// Main Color
  ///
  static Color mainColor = const Color(0xffFA8151);
  static Color indicatorMainColor = const Color(0xFF3CC383);
  static Color invoiceSentTextColor = const Color(0xFF0047B3);
  static Color invoiceSentConColor = const Color(0xFF96C0FF);
  static Color indicatorSubColor = const Color(0xFFE6F0FF);
  static Color secondaryColor = const Color(0xff003E9C);
  static Color backgroundColor = const Color(0xffFFFFFF);
  static Color onboardingBgColor = const Color(0xff96C0FF);
  static Color authButtonBgColor = const Color(0xff0065FF);
  static Color grey2Color = const Color(0xff4F4F4F);
  static Color acctTypeColor = const Color(0xff383F4D);
  static Color passwordCheckBoxColor = const Color(0xff7A8699);
  static Color passwordCheckBoxTextColor = const Color(0xff292929);
  static Color convertCurrencyTextColor = const Color(0xff5D6B82);
  static Color noOtpCodeColor = const Color(0xff2B7FFF);
  static Color formBg = const Color(0xffFAF6F2);
  static Color backGrayColor = const Color(0xff292929);
  static Color greenSuccessColor = const Color(0xff9FE1C2);
  static Color greenSuccessTextColor = const Color(0xff0E804A);
  static Color convertSearchFieldColor = const Color(0xff505F79);
  static Color verifyBiznesOptionColor = const Color(0xff0F1828);
  static Color verifyActiveProgressColor = const Color(0xff3CC383);
  static Color verifyInActiveProgressColor = const Color(0xffD9D9D9);
  static Color homeHistoryText2Color = const Color(0xff4F4F4F);
  static Color backGrayInactiveColor = const Color(0xffD0D5DD);
  static Color textfieldBorderColor = const Color(0xff505F79);
  static Color textfieldHintTextColor = const Color(0xff9F9F9F);
  static Color verifyMailTextColor = const Color(0xff0F1828);
  static Color homeAmountColor = const Color(0xff090F18);
  static Color homeAccountInfoConColor = const Color(0xffEAF2FF);
  static Color homeAccountInfoTextColor = const Color(0xff091E42);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color scanConColor = const Color(0xff505F79);
  static Color profileSmallColor = const Color(0xffFFDC2B);
  static Color profileBigColor = const Color(0xffFFEE96);
  static Color blackColor = Colors.black;
  static Color redColor = Colors.red;

  static Color homeCatBorderColor = const Color.fromRGBO(250, 129, 81, 0.2);
  static Color createInvoiceConColor =
      const Color.fromRGBO(150, 192, 255, 0.20);
  static Color homeHistoryConColor = const Color.fromRGBO(150, 192, 255, 0.20);
  static Color campainPndinConColor = const Color.fromRGBO(81, 128, 250, 0.05);
  static Color convertReviewConColor =
      const Color.fromRGBO(150, 192, 255, 0.20);

  //OLD TO CHANGE

  static MaterialColor primarySwatch = MaterialColor(
    0xFF005bbb, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: mainColor, //10%
      100: mainColor, //20%
      200: mainColor, //30%
      300: mainColor, //40%
      400: mainColor, //50%
      500: mainColor, //60%
      600: mainColor, //70%
      700: mainColor, //80%
      800: mainColor, //90%
      900: mainColor, //100%
    },
  );

  static void loadColor(BuildContext context) {
    if (Utils.isLightMode(context)) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void loadColor2(bool isLightMode) {
    if (isLightMode) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void _loadDarkColors() {
    ///
    /// Main Color
    ///
    mainColor = mainColor;
    whiteColor = Colors.white;
    blackColor = Colors.black;
  }

  static void _loadLightColors() {
    mainColor = mainColor;
    whiteColor = Colors.white;
    blackColor = Colors.black;
  }
}
