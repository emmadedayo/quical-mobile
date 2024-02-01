// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';


// class ItemShimmer extends StatelessWidget {
//   const ItemShimmer({Key? key}) : super(key: key);
  
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         physics: const ClampingScrollPhysics(),
//         shrinkWrap: true,
//         padding: const EdgeInsets.only(left: 15, right: 15),
//         itemCount: 7,
//         itemBuilder: (BuildContext context, int index){
//           return Container(
//             margin: const EdgeInsets.all(5), // add pad
//             padding: const EdgeInsets.only(
//                 left: 10,
//                 right: 10,
//                 top: 20,
//                 bottom: 20), // add
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: PsColors.whiteColor,
//             ),
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Shimmer.fromColors(
//                   baseColor: Color(0xffE6E8EB),
//                   highlightColor: Color(0xffF9F9FB),
//                   child:  ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: CachedNetworkImage(
//                       height: 57,
//                       width: 57,
//                       fit: BoxFit.fitWidth,
//                       imageUrl: 'https://via.placeholder.com/600x400',
//                       progressIndicatorBuilder: (context, url, downloadProgress) => SpinKitRing(
//                         color: PsColors.mainColor,
//                         lineWidth: 1.0,
//                         size: 50.0,
//                       ),
//                       errorWidget: (context, url, error) => const Icon(Icons.error),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment:
//                   CrossAxisAlignment.start,
//                   children: [
//                     Shimmer.fromColors(
//                       baseColor: const Color(0xffE6E8EB),
//                       highlightColor: const Color(0xffF9F9FB),
//                       child:Text(
//                         'Loading...',
//                         style: HelperStyle.textStyle2(
//                             context,
//                             PsColors.blackColor,
//                             16.sp,
//                             FontWeight.w400),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Shimmer.fromColors(
//                       baseColor: const Color(0xffE6E8EB),
//                       highlightColor: const Color(0xffF9F9FB),
//                       child:Row(
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Loading...',
//                             style: HelperStyle.textStyle2(
//                                 context,
//                                 PsColors.secondaryColor,
//                                 10.sp,
//                                 FontWeight.w400),
//                           ),
//                           const SizedBox(
//                             width: 14,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: PsColors.mainColor,
//                             size: 14,
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             '0',
//                             style: HelperStyle.textStyle2(
//                                 context,
//                                 PsColors.secondaryColor,
//                                 10.sp,
//                                 FontWeight.w400),
//                           ),
//                         ],
//                       ),
//                     ),

//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Shimmer.fromColors(
//                       baseColor: const Color(0xffE6E8EB),
//                       highlightColor: const Color(0xffF9F9FB),
//                       child: Row(
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         children: [
//                           Icon(
//                             Icons.location_pin,
//                             color: PsColors.mainColor,
//                             size: 14,
//                           ),
//                           Text(
//                             'Loading...',
//                             style: HelperStyle.textStyle2(
//                                 context,
//                                 PsColors.secondaryColor,
//                                 10.sp,
//                                 FontWeight.w400),
//                           ),
//                           const SizedBox(
//                             width: 4,
//                           ),
//                           Container(
//                             height: 10,
//                             width: 2,
//                             decoration: const BoxDecoration(
//                               color:
//                               Color.fromRGBO(0, 0, 0, 0.1),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 4,
//                           ),
//                           Text(
//                             'Loading...',
//                             style: HelperStyle.textStyle2(
//                                 context,
//                                 PsColors.secondaryColor,
//                                 10.sp,
//                                 FontWeight.w400),
//                           ),
//                         ],
//                       )
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 Shimmer.fromColors(
//                     baseColor: const Color(0xffE6E8EB),
//                     highlightColor: const Color(0xffF9F9FB),
//                     child:Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Icon(
//                         Icons.favorite,
//                         color: PsColors.mainColor,
//                         size: 19,
//                       ),
//                     )
//                 ),
//               ],
//             ),
//           );
//         }
//     );
//   }
// }

