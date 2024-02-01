// ignore_for_file: depend_on_referenced_packages

import 'package:another_flushbar/flushbar.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

mixin Utils {
  static String apiKey = "";
  static int zegoAppId = 1355313795;
  static String zegoAppSign = "7e1c60017f54a13aa37c86cb9d2359248b274b492891cbdf6f018adabb5a65b9";

  static String getPayStackKey() {
    if (kDebugMode) {
      return "";
    } else {
      return "";
    }
  }

  static String getAppUrl() {
    if (kDebugMode) {
      return "https://ggconsult.homes";
    } else {
      return "https://ggconsult.homes";
    }
  }

  static String uuid() {
    return const Uuid().v4();
  }

  static String getString(BuildContext context, String key) {
    if (key != '') {
      return (key);
    } else {
      return '';
    }
  }

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static bool checkEmailFormat(String email) {
    bool? emailFormat;
    if (email != '') {
      emailFormat = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email);
    }
    return emailFormat!;
  }

  static String getImage(String name) {
    return 'assets/images/$name';
  }

  static String getIcon(String name) {
    return 'assets/icon/$name';
  }

  static DateTime? previous;

  static void psPrint(String msg) {
    final DateTime now = DateTime.now();
    int min = 0;
    if (previous == null) {
      previous = now;
    } else {
      min = now.difference(previous!).inMilliseconds;
      previous = now;
    }
    debugPrint('$now ($min)- $msg');
  }

  // static String getPriceFormat(String? price) {
  //   return PsConst.psFormat.format(double.parse(price!));
  // }
  static String getPriceFormat(String price, String priceFormat) {
    return NumberFormat(priceFormat)
        .format(double.parse(price != '' ? price : '0'));
  }

  static currencyFormat(String amount, String currency) {
    return NumberFormat.currency(locale: 'en_US', symbol: currency)
        .format(double.parse(amount));
  }

  static String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning,';
    }
    if (hour < 17) {
      return 'Good Afternoon,';
    }
    return 'Good Evening,';
  }

  static String shortHistory(String dateTime) {
    final DateTime date = DateTime.parse(dateTime).toLocal();
    return DateFormat('MMM d, h:mm a').format(date);
  }

  static currencyTwoFormat(String amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: 'NGN ')
        .format(double.parse(amount));
  }

  static String getChatPriceFormat(String message, String priceFormat) {
    String currencySymbol, price;
    try {
      currencySymbol = message.split(' ')[0];
      price = getPriceFormat(message.split(' ')[1], priceFormat);
      return '$currencySymbol  $price';
    } catch (e) {
      return message;
    }
  }

  static String splitMessage(String message) {
    try {
      return message.split(' ')[1];
    } catch (e) {
      return message;
    }
  }

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static int getTimeStampDividedByOneThousand(DateTime dateTime) {
    final double dividedByOneThousand = dateTime.millisecondsSinceEpoch / 1000;
    final int doubleToInt = dividedByOneThousand.round();
    return doubleToInt;
  }

  static DateTime getDateOnlyFromTimeStamp(int timeStamp) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd', 'en_US');
    final DateTime datetimeMessage =
        DateTime.fromMillisecondsSinceEpoch(timeStamp, isUtc: true);
    final String s = formatter.format(datetimeMessage);
    return DateTime.parse(s);
  }

  static String convertTimeStampToDate(int? timeStamp) {
    if (timeStamp == null) {
      return '';
    }
    final DateTime dateTime2 =
        DateTime.fromMillisecondsSinceEpoch(timeStamp, isUtc: true);
    final DateTime dateTime = dateTime2.toLocal();
    final DateFormat format = DateFormat.yMMMMd(); //"6:00 AM"
    return format.format(dateTime);
  }

  static String convertTimeStampToTime(int? timeStamp) {
    if (timeStamp == null) {
      return '';
    }

    final DateTime dateTime2 =
        DateTime.fromMillisecondsSinceEpoch(timeStamp, isUtc: true);
    final DateTime dateTime = dateTime2.toLocal();
    final DateFormat format = DateFormat.jm(); //"6:00 AM"
    return format.format(dateTime);
  }

  static String getTimeString() {
    final DateTime dateTime = DateTime.now();
    final DateFormat format = DateFormat.Hms();
    return format.format(dateTime);
  }

  static String getDateFormat(String? dateTime, String dateFormat) {
    final DateTime date = DateTime.parse(dateTime!);
    return DateFormat(dateFormat).format(date);
  }

  static String changeTimeStampToStandardDateTimeFormat(String? timeStamp) {
    if (timeStamp == null || timeStamp == '') {
      return '';
    } else {
      final String standardDateTime =
          DateTime.fromMillisecondsSinceEpoch(int.parse(timeStamp) * 1000)
              .toString();
      return changeDateTimeStandardFormat(standardDateTime);
    }
  }

  static String changeDateTimeStandardFormat(String? selectedDateTime) {
    if (selectedDateTime == null) {
      return '';
    }
    final String standardDateTime =
        '${selectedDateTime.split(' ')[0].split('-')[2]}-${selectedDateTime.split(' ')[0].split('-')[1]}-${selectedDateTime.split(' ')[0].split('-')[0]} ${selectedDateTime.split(' ')[1].split('.')[0]}';
    return standardDateTime;
  }

  static Brightness getBrightnessForAppBar(BuildContext context) {
    // if (Platform.isAndroid) {
    return Brightness.dark;
    // } else {
    //return Theme.of(context).brightness;
    // }
  }

  static String convertColorToString(Color color) {
    String convertedColorString = '';

    String colorString = color.toString().toUpperCase();

    colorString = colorString.replaceAll(')', '');

    convertedColorString = colorString.substring(colorString.length - 6);

    return '#$convertedColorString';
  }

  // static Future<bool> requestWritePermission() async {
  //   // final Map<Permission, PermissionStatus> permissionss =
  //   //     await PermissionHandler()
  //   //         .requestPermissions(<Permission>[Permission.storage]);
  //   // if (permissionss != null &&
  //   //     permissionss.isNotEmpty &&
  //   //     permissionss[Permission.storage] == PermissionStatus.granted) {
  //   const Permission? _storage = Permission.storage;
  //   final PermissionStatus? permissionss = await _storage.request();
  //
  //   if (permissionss != null && permissionss == PermissionStatus.granted) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  static Future<bool> checkInternetConnectivity() async {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      // debugPrint('Mobile');
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // debugPrint('Wifi');
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      debugPrint('No Connection');
      return false;
    } else {
      return false;
    }
  }

  static saveDeviceToken() async {
    // FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    // String? fcmToken;
    // if(Platform.isIOS){
    //   fcmToken = await firebaseMessaging.getAPNSToken();
    //   //  DrConfig.printLog("Device Token APN: $fcmToken");
    // }else{
    //   fcmToken = await firebaseMessaging.getToken();
    //   // DrConfig.printLog("Device Token: $fcmToken");
    // }
    // return fcmToken;
  }

  // static Future<bool> determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return false;
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return false;
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return false;
  //   }
  //   try {
  //     return true;
  //   } catch (e) {
  //     return false;
  //   }
  // }

  // static Future<bool> getLocationPermission() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return false;
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     return false;
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return false;
  //   }
  //   return true;
  // }

  static displayErrorMessage(BuildContext context, String message,
      {FlushbarPosition position = FlushbarPosition.BOTTOM}) {
    Flushbar(
      message: message,
      backgroundColor: Colors.red,
      flushbarPosition: position,
      icon: Icon(
        Icons.error,
        size: 28.0,
        color: Colors.red[300],
      ),
      duration: const Duration(seconds: 5),
      leftBarIndicatorColor: Colors.red[300],
    ).show(context);
  }

  static displaySuccessMessage(BuildContext context, String message,
      {FlushbarPosition position = FlushbarPosition.BOTTOM}) {
    Flushbar(
      message: message,
      backgroundColor: Colors.green,
      flushbarPosition: position,
      duration: const Duration(seconds: 5),
    ).show(context);
  }

  static renameWorkingName(String s) {
    //rename sunday_start_date to sun inside WorkingHourEntity model
    if (s == "sunday_start_date") {
      return "sun";
    } else if (s == "monday_start_date") {
      return "mon";
    } else if (s == "tuesday_start_date") {
      return "tue";
    } else if (s == "wednesday_start_date") {
      return "wed";
    } else if (s == "thursday_start_date") {
      return "thu";
    } else if (s == "friday_start_date") {
      return "fri";
    } else if (s == "saturday_start_date") {
      return "sat";
    } else {
      return s;
    }
  }

  static renameDateTime(String date) {
    //convert date string to date time

    //get date time from string and convert to am or pm
    var dateTime = DateTime.parse(date);
    var formatter = DateFormat('hh a');
    String formatted = formatter.format(dateTime);
    return formatted;
  }

  static String convertToDateString(String dateString) {
    DateTime date = DateTime.parse(dateString);
    DateFormat dateFormat = DateFormat.yMMMMd('en_US');
    String formattedDate = dateFormat.format(date);
    return formattedDate;
  }

  static String convertToDate(DateTime dateString) {
    DateFormat dateFormat = DateFormat.yMMMMd('en_US');
    String formattedDate = dateFormat.format(dateString);
    return formattedDate;
  }

  static String convertDateFormat(String originalDateString) {
    final originalFormat = DateFormat('E, MMM d, yyyy h:mm a');
    final parsedDate = originalFormat.parse(originalDateString);
    final targetFormat = DateFormat('yyyy-MM-dd');
    final formattedDate = targetFormat.format(parsedDate);
    return formattedDate;
  }

  static String formatDate(String inputDate) {
    DateTime dateTime = DateTime.parse(inputDate);
    DateFormat formatter = DateFormat('E, MMM d, yyyy hh:mm a');
    String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }
}
