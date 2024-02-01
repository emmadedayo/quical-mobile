// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BreadCrumb extends StatelessWidget {
//   const BreadCrumb({
//     Key? key,
//     this.title,
//     this.subText,
//   }) : super (key: key);

//   final String? title;
//   final String? subText;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 100,
//       color: PsColors.whiteColor,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 25, top: 40, right: 24,),
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title!,
//                 style: HelperStyle.textStyle2(
//                     context, PsColors.blackColor, 24.sp, FontWeight.w700),),
//               const SizedBox(height: 9,),
//               Text(subText!,
//                 style: HelperStyle.textStyle2(
//                     context, PsColors.secondaryColor, 12.sp,
//                     FontWeight.w400),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }