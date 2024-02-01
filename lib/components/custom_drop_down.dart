// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';
// import 'package:vendor/logic/provider/order.provider.dart';

// class CustomDropDown extends StatelessWidget {
//   const CustomDropDown({
//     super.key,
//     required this.list,
//   });

//   final List<String> list;
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<OrderProvider>(builder: (context, model, child) {
//       return Material(
//         borderRadius: BorderRadius.circular(
//           10.sp,
//         ),
//         elevation: 10,
//         child: Container(
//           padding: EdgeInsets.symmetric(
//             horizontal: 15.w,
//             vertical: 30.h,
//           ),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(
//                 10.sp,
//               ),
//               color: PsColors.whiteColor,
//               border: Border.all(
//                 color: PsColors.navBarIconColor,
//               )),
//           width: 394.w,
//           child: Wrap(
//             direction: Axis.horizontal,
//             spacing: 13.w,
//             runSpacing: 15.h,
//             children: list.map((item) {
//               return SizedBox(
//                 height: 36.h,
//                 width: 105.w,
//                 child: InkWell(
//                   onTap: () {
//                     context.read<OrderProvider>().setSelectedOrderStatus(item);
//                     context.read<OrderProvider>().setShowDropDownToFalse();
//                     context.read<OrderProvider>().searchedOrdersByStatus();
//                   },
//                   child: TextContainer(
//                     text: item,
//                     isSelected: item == model.selectedOrderStatus,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       );
//     });
//   }
// }

// class TextContainer extends StatelessWidget {
//   const TextContainer({
//     super.key,
//     required this.text,
//     required this.isSelected,
//   });
//   final String text;
//   final bool isSelected;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         top: 4.sp,
//         bottom: 4.sp,
//       ),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(
//             5.sp,
//           ),
//           color: isSelected ? PsColors.secondaryColor : PsColors.whiteColor,
//           border: Border.all(
//             color: PsColors.addAddressBorderColor,
//           )),
//       child: Text(
//         text,
//         style: HelperStyle.textStyle(
//           context,
//           isSelected ? PsColors.whiteColor : PsColors.specialFoodTextColor,
//           12.sp,
//           FontWeight.w500,
//         ),
//       ),
//     );
//   }
// }
