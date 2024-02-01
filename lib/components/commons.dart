// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vendor/config/helper_style.dart';

// import '../config/ps_colors.dart';

// class Commons {
//   SnackBar successSnackBar(String? message, BuildContext context) {
//     final snackBar = SnackBar(
//       padding: EdgeInsets.all(
//         8.sp,
//       ),
//       backgroundColor: PsColors.mainColor,
//       behavior: SnackBarBehavior.floating,
//       content: Center(
//         child: Text(
//           message!,
//           textAlign: TextAlign.center,
//           softWrap: true,
//           overflow: TextOverflow.clip,
//           style: HelperStyle.textStyle(
//             context,
//             PsColors.whiteColor,
//             14.sp,
//             FontWeight.w500,
//           ),
//         ),
//       ),
//       duration: const Duration(seconds: 3),
//     );

//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     return snackBar;
//   }

//   SnackBar errorSnackBar(
//     String? message,
//     BuildContext context,
//   ) {
//     final snackBar = SnackBar(
//       padding: EdgeInsets.all(
//         8.sp,
//       ),
//       backgroundColor: PsColors.redColor,
//       behavior: SnackBarBehavior.floating,
//       content: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.info_outline,
//               size: 20.sp,
//               color: PsColors.whiteColor,
//             ),
//             SizedBox(
//               width: 8.w,
//             ),
//             Text(
//               message!,
//               textAlign: TextAlign.center,
//               softWrap: true,
//               overflow: TextOverflow.clip,
//               style: HelperStyle.textStyle(
//                 context,
//                 PsColors.whiteColor,
//                 14.sp,
//                 FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//       duration: const Duration(seconds: 3),
//     );

//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     return snackBar;
//   }
// }
