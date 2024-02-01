import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/ps_colors.dart';

class AppTypography {
  AppTypography._();

  //use google fonts

  static TextStyle normalTextStyle = GoogleFonts.rubik(
    textStyle: TextStyle(
      fontSize: 17.sp,
    ),
  );
  static TextStyle mediumTextStyle = GoogleFonts.rubik(
    textStyle: TextStyle(
      fontSize: 15.5.sp,
    ),
  );

  static TextStyle smallTextStyle = GoogleFonts.rubik(
    textStyle: TextStyle(
      fontSize: 14.sp,
    ),
  );

  static TextStyle labelTextStyle = GoogleFonts.rubik(
    textStyle:const TextStyle(
      fontWeight: FontWeight.w500,
    ),
  );

  static TextStyle unselectedLabelTextStyle = GoogleFonts.rubik(
    textStyle:const TextStyle(
      fontWeight: FontWeight.w400,
    ),
  );

  static TextStyle promptTextStyle = GoogleFonts.rubik(
    textStyle: TextStyle(
      color: PsColors.mainColor,
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
    ),
  );
}
