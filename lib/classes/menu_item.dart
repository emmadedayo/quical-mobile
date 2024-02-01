

// import 'package:flutter/material.dart';
// import 'package:vendor/config/ps_colors.dart';

// class MenuItem {
//   const MenuItem({
//     required this.text,
//     required this.image,
//   });

//   final String text;
//   final String image;
// }

// abstract class MenuItems {
//   static const List<MenuItem> firstItems = [copy, print];
//   static const List<MenuItem> secondItems = [excel, csv, pdf];

//   static const copy =
//       MenuItem(text: 'Copy', image: "assets/images/copyIcon.png");
//   static const print =
//       MenuItem(text: 'Print', image: "assets/images/printingIcon.png");

//   static const excel =
//       MenuItem(text: 'Excel', image: "assets/images/excelIcon.png");
//   static const csv = MenuItem(text: '.Csv', image: "assets/images/csvIcon.png");
//   static const pdf = MenuItem(text: '.Pdf', image: "assets/images/pdfIcon.png");

//   static Widget buildItem(MenuItem item) {
//     return Row(
//       children: [
//         Image.asset(
//           item.image,
//           scale: 4,
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Expanded(
//           child: Text(
//             item.text,
//             style: TextStyle(
//                 color: PsColors.searchLocationTextColor,
//                 fontSize: 12,
//                 fontWeight: FontWeight.w400),
//           ),
//         ),
//       ],
//     );
//   }

//   static void onChanged(BuildContext context, MenuItem item) {
//     switch (item) {
//       case MenuItems.copy:
//         //Do something
//         break;
//       case MenuItems.print:
//         //Do something
//         break;
//       case MenuItems.excel:
//         //Do something
//         break;
//       case MenuItems.csv:
//         //Do something
//         break;
//       case MenuItems.pdf:
//         //Do something
//         break;
//     }
//   }
// }
