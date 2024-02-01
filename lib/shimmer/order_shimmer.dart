// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';


// class OrderShimmer extends StatelessWidget {
//   const OrderShimmer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         physics: const ClampingScrollPhysics(),
//         shrinkWrap: true,
//         padding: const EdgeInsets.only(left: 15, right: 15),
//         itemCount: 7,
//         itemBuilder: (BuildContext context, int index){
//           return Container(
//             height: 90,
//             width: 357,
//             margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: PsColors.whiteColor,
//             ),
//             child: Row(
//               children: [
//                 Shimmer.fromColors(
//                   baseColor: const Color(0xffE6E8EB),
//                   highlightColor: const Color(0xffF9F9FB),
//                   child:  ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: CachedNetworkImage(
//                       height: 58,
//                       width: 58,
//                       imageUrl: 'https://via.placeholder.com/600x400',
//                       imageBuilder: (context, imageProvider) => Container(
//                         height: 58,
//                         width: 58,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
//                         ),
//                       ),
//                       progressIndicatorBuilder: (context, url, downloadProgress) =>
//                           SpinKitRing(
//                             color: PsColors.mainColor,
//                             lineWidth: 1.0,
//                             size: 50.0,
//                           ),
//                       errorWidget: (context, url, error) => const Icon(Icons.error),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 10,),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Shimmer.fromColors(
//                         baseColor: const Color(0xffE6E8EB),
//                         highlightColor: const Color(0xffF9F9FB),
//                         child: Text(
//                           'Loading',
//                           maxLines: 1,
//                           style: HelperStyle.textStyle2(context, PsColors.blackColor, 16.sp, FontWeight.w400,),
//                         ),
//                       ),
//                       SizedBox(height: 2.h),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Shimmer.fromColors(
//                             baseColor: const Color(0xffE6E8EB),
//                             highlightColor: const Color(0xffF9F9FB),
//                             child:  ClipRRect(
//                               borderRadius: BorderRadius.circular(10.0),
//                               child: CachedNetworkImage(
//                                 height: 16,
//                                 width: 12,
//                                 imageBuilder: (context, imageProvider) => Container(
//                                   height: 16,
//                                   width: 12,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                         image: imageProvider, fit: BoxFit.cover),
//                                   ),
//                                 ),
//                                 imageUrl: 'https://via.placeholder.com/600x400',
//                                 progressIndicatorBuilder: (context, url, downloadProgress) =>
//                                     SpinKitRing(
//                                       color: PsColors.mainColor,
//                                       lineWidth: 1.0,
//                                       size: 50.0,
//                                     ),
//                                 errorWidget: (context, url, error) => const Icon(Icons.error),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 2.h),
//                           Shimmer.fromColors(
//                             baseColor: const Color(0xffE6E8EB),
//                             highlightColor: const Color(0xffF9F9FB),
//                             child:Text(
//                               'Loading',
//                               maxLines: 1,
//                               style: HelperStyle.textStyle2(context,
//                                   PsColors.blackColor, 14.sp, FontWeight.w400,letterSpacing: 0.1),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 2.h),
//                       Shimmer.fromColors(
//                         baseColor: const Color(0xffE6E8EB),
//                         highlightColor: const Color(0xffF9F9FB),
//                         child:Text(
//                           'Loading',
//                           maxLines: 1,
//                           style: HelperStyle.textStyle2(
//                               context, PsColors.blackColor, 15.sp, FontWeight.w400,),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 //const Spacer(),
//                 Shimmer.fromColors(
//                   baseColor: const Color(0xffE6E8EB),
//                   highlightColor: const Color(0xffF9F9FB),
//                   child:Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 27,
//                         width: 77,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: PsColors.secondaryType2Color),
//                         child: Center(
//                           child: Text(
//                             'Help',
//                             style: HelperStyle.textStyle2(
//                                 context,
//                                 PsColors.secondaryType2Color,
//                                 12.sp,
//                                 FontWeight.w600),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 6,
//                       ),
//                       Container(
//                         height: 27,
//                         width: 77,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             color: PsColors.mainColor),
//                         child: Center(
//                           child: Text(
//                             'Reorder',
//                             style: HelperStyle.textStyle2(context,
//                                 PsColors.secondaryType2Color, 12.sp, FontWeight.w600,),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }
//     );
//   }
// }

