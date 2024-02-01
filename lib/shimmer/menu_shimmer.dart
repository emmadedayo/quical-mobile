// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:vendor/config/helper_style.dart';
// import 'package:vendor/config/ps_colors.dart';


// class MenuShimmer extends StatelessWidget {
//   const MenuShimmer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       primary: false,
//       padding: const EdgeInsets.only(
//         left: 14,
//         top: 4,
//         bottom: 300,
//         right: 14,
//       ),
//       itemCount: 7,
//       itemBuilder: (ctx, i) {
//         return GestureDetector(
//           onTap: () {
//             // PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
//             //   context,
//             //   settings: const RouteSettings(name: RoutePaths.homeFoodPage),
//             //   screen: FoodPageScreen(menuList: menuList[i]),
//             //   withNavBar: false,
//             //   pageTransitionAnimation: PageTransitionAnimation.slideUp,
//             // );
//           },
//           child: Card(
//             elevation: 0,
//             child: Container(
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
//                 color: Colors.white,),
//               margin: const EdgeInsets.all(5),
//               padding: const EdgeInsets.all(5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Stack(
//                     children: [
//                       Shimmer.fromColors(
//                         baseColor: Color(0xffE6E8EB),
//                         highlightColor: Color(0xffF9F9FB),
//                         child:  ClipRRect(
//                           borderRadius: BorderRadius.circular(10.0),
//                           child: CachedNetworkImage(
//                             height:
//                             MediaQuery.of(context).size.height / 7,
//                             width: MediaQuery.of(context).size.width,
//                             fit: BoxFit.fill,
//                             imageUrl: 'https://via.placeholder.com/600x400',
//                             progressIndicatorBuilder:
//                                 (context, url, downloadProgress) =>
//                                 SpinKitRing(
//                                   color: PsColors.mainColor,
//                                   lineWidth: 1.0,
//                                   size: 50.0,
//                                 ),
//                             errorWidget: (context, url, error) =>
//                             const Icon(Icons.error),
//                           ),
//                         ),
//                       ),

//                     ],
//                   ),
//                   SizedBox(height: 10.h),
//                   Shimmer.fromColors(
//                     baseColor: const Color(0xffE6E8EB),
//                     highlightColor: const Color(0xffF9F9FB),
//                     child:Text(
//                       'Loading ...',
//                       maxLines: 1,
//                       style: HelperStyle.textStyle2(
//                           context,
//                           PsColors.blackColor,
//                           16.sp,
//                           FontWeight.w500),
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Row(
//                     children: [
//                       Shimmer.fromColors(
//                         baseColor: const Color(0xffE6E8EB),
//                         highlightColor: const Color(0xffF9F9FB),
//                         child:Text(
//                           'Loading ...',
//                           style: HelperStyle.textStyle2(
//                               context,
//                               PsColors.secondaryColor,
//                               12.sp,
//                               FontWeight.w700),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 6,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 8.h),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.directions_bike_sharp,
//                         color: PsColors.secondaryColor,
//                         size: 14,
//                       ),
//                       const SizedBox(
//                         width: 6,
//                       ),
//                       Shimmer.fromColors(
//                         baseColor: const Color(0xffE6E8EB),
//                         highlightColor: const Color(0xffF9F9FB),
//                         child:Text(
//                           'Loading ..',
//                           style: HelperStyle.textStyle2(
//                               context,
//                               PsColors.secondaryColor,
//                               12.sp,
//                               FontWeight.w700),
//                         ),
//                       ),

//                     ],
//                   ),
//                   SizedBox(height: 8.h),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: PsColors.mainColor,
//                         size: 14,
//                       ),
//                       const SizedBox(
//                         width: 6,
//                       ),
//                       Shimmer.fromColors(
//                         baseColor: const Color(0xffE6E8EB),
//                         highlightColor: const Color(0xffF9F9FB),
//                         child:Text(
//                           'Loading',
//                           style: HelperStyle.textStyle2(
//                               context,
//                               PsColors.secondaryColor,
//                               10.sp,
//                               FontWeight.w700),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.74,
//         crossAxisSpacing: 0.3,
//         mainAxisSpacing: 5,
//       ),
//     );
//   }
// }

