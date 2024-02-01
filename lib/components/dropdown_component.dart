// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';

// class CustomDropdownButton extends StatelessWidget {
//   final List<String> items;
//   final String selectedValue;
//   final String couponType;
//   final Function(String?) onChanged;

//   const CustomDropdownButton({
//     super.key,
//     required this.items,
//     required this.selectedValue,
//     required this.couponType,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           couponType,
//           style: HelperStyle.textStyle(
//             context,
//             PsColors.authHeaderColor,
//             13.sp,
//             FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             isExpanded: true,
//             hint: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'Address Type',
//                     style: HelperStyle.textStyle(
//                       context,
//                       PsColors.authHeaderColor,
//                       12.sp,
//                       FontWeight.w400,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ],
//             ),
//             items: items
//                 .map(
//                   (item) => DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: HelperStyle.textStyle(
//                         context,
//                         PsColors.blackColor,
//                         14.sp,
//                         FontWeight.w400,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 )
//                 .toList(),
//             value: selectedValue,
//             onChanged: onChanged,
//             isDense: true,
//             buttonStyleData: ButtonStyleData(
//               height: 54.h,
//               width: 1.sw,
//               padding: const EdgeInsets.only(left: 14, right: 14),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 border: Border.all(color: PsColors.addAddressBorderColor),
//                 color: PsColors.whiteColor,
//               ),
//             ),
//             iconStyleData: const IconStyleData(
//               icon: Icon(
//                 Icons.keyboard_arrow_down_rounded,
//               ),
//               iconSize: 14,
//               iconEnabledColor: Colors.grey,
//               iconDisabledColor: Colors.grey,
//             ),
//             dropdownStyleData: DropdownStyleData(
//               maxHeight: 200,
//               width: MediaQuery.of(context).size.width.w,
//               padding: null,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 color: PsColors.whiteColor,
//               ),
//               elevation: 8,
//               offset: const Offset(-20, 0),
//               scrollbarTheme: ScrollbarThemeData(
//                 radius: const Radius.circular(40),
//                 thickness: MaterialStateProperty.all<double>(6),
//                 thumbVisibility: MaterialStateProperty.all<bool>(true),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
