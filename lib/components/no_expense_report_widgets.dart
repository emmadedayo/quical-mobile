// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vendor/config/app_images.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';

// class NoExpenseReport extends StatelessWidget {
//   const NoExpenseReport({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Align(
//             alignment: Alignment.center,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(AppImage.noExpenseRportIcon,
//                     height: 200.h, width: 200.w, fit: BoxFit.cover),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Text(
//                   "No Expense Report",
//                   textAlign: TextAlign.center,
//                   style: HelperStyle.textStyle(
//                     context,
//                     PsColors.authHeaderColor,
//                     14.sp,
//                     FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 16.h,
//                 ),
//                 Text(
//                   "A list of your expense report will appear here",
//                   textAlign: TextAlign.center,
//                   style: HelperStyle.textStyle(
//                     context,
//                     PsColors.noDataFoundText2Color,
//                     12.sp,
//                     FontWeight.w400,
//                   ),
//                 ),
//               ],
//             )),
//       ],
//     );
//   }
// }
