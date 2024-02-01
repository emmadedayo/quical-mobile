// // ignore_for_file: prefer_final_fields, use_build_context_synchronously
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/entity/coupon_entity.dart';
// import 'package:vendor/logic/provider/profile_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../router/router_constant.dart';
// import '../../utilities/utils.dart';
// import '../repository/coupon_repository.dart';

// class CouponProvider extends ChangeNotifier {
//   CouponProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }
//   // init method
//   void init() {
//     fetchCoupons();
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   bool isDataFetched = false;
//   String? countryCurrencySymbol;
//   bool isEditPage = false;

//   List<Coupon> couponList = <Coupon>[];
//   Coupon coupon = Coupon();

//   String couponTypeValue = "DEFAULT";
//   String discountTypeValue = "PERCENTAGE";

//   List<String> couponType = [
//     "DEFAULT",
//     "ESTABLISHMENT",
//     "ZONE",
//     "DELIVERY",
//     "FREE-DELIVERY",
//     "FIRST-ORDER",
//   ];

//   List<String> discountType = [
//     "PERCENTAGE",
//     "AMOUNT",
//   ];
//   //key
//   final GlobalKey<FormState> addCouponFormkey = GlobalKey<FormState>();

//   //controllers
//   TextEditingController startDateController = TextEditingController();
//   TextEditingController endDateController = TextEditingController();
//   TextEditingController titleController = TextEditingController();
//   TextEditingController codeController = TextEditingController();
//   TextEditingController limitController = TextEditingController();
//   TextEditingController discountController = TextEditingController();
//   TextEditingController maxDiscountController = TextEditingController();
//   TextEditingController minPurchaseController = TextEditingController();

//   // functions to fetch data
//   void fetchCoupons() async {
//     try {
//       EasyLoading.show();
//       isDataFetched = true;
//       notifyListeners();
//       final apiService = CouponRepository();
//       final response =
//           await apiService.fetchCoupons(psValueHolder?.userToken ?? '');
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         couponList = response.data!;
//         notifyListeners();
//         searchedCoupon = couponList;
//         notifyListeners();
//         countryCurrencySymbol =
//             psValueHolder?.countryObject!.countryCurrencySymbol;
//       } else {
//         isDataFetched = false;
//         notifyListeners();
//         EasyLoading.dismiss();
//       }
//     } catch (e) {
//       isDataFetched = false;
//       notifyListeners();
//       EasyLoading.dismiss();
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }

//   void addCoupon(BuildContext con) async {
//     if (addCouponFormkey.currentState!.validate()) {
//       addCouponFormkey.currentState!.save();
//       Map<String, dynamic> data = {
//         "title": titleController.text,
//         "code": codeController.text,
//         "start_date": startDateController.text,
//         "expire_date": endDateController.text,
//         "min_purchase": minPurchaseController.text,
//         "max_discount": maxDiscountController.text,
//         "discount": discountController.text,
//         "discount_type": discountTypeValue,
//         "coupon_type": couponTypeValue,
//         "limit": limitController.text,
//         "status": true,
//         "data": {
//           "establishment_id": Provider.of<ProfileProvider>(con, listen: false)
//               .profile
//               .data!
//               .establishment!
//               .id!,
//           "user_id":
//               Provider.of<ProfileProvider>(con, listen: false).profile.data!.id,
//         }
//       };
//       try {
//         EasyLoading.show();
//         final apiService = CouponRepository();
//         final response =
//             await apiService.addCoupon(psValueHolder?.userToken ?? '', data);
//         if (response.success!) {
//           clearField();
//           EasyLoading.dismiss();
//           Navigator.pop(con);
//           Navigator.pop(con);
//           fetchCoupons();
//           Utils.displaySuccessMessage(con, response.message!);
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, response.message!);
//         }
//       } catch (e) {
//         EasyLoading.dismiss();
//         if (kDebugMode) {
//           print(e);
//         }
//         Utils.displayErrorMessage(con, 'An Error Occurred');
//       }
//     }
//   }

//   void clearField() {
//     titleController.clear();
//     couponTypeValue = "DEFAULT";
//     discountTypeValue = "PERCENTAGE";
//     codeController.clear();
//     limitController.clear();
//     startDateController.clear();
//     endDateController.clear();
//     discountController.clear();
//     discountController.clear();
//     maxDiscountController.clear();
//     minPurchaseController.clear();
//   }

//   void editCoupon(BuildContext con) {
//     isEditPage = true;
//     notifyListeners();
//     clearField();
//     titleController.text = coupon.title ?? '';
//     codeController.text = coupon.code ?? '';
//     startDateController.text =
//         DateFormat('yyyy-MM-dd').format(coupon.startDate!);
//     endDateController.text =
//         DateFormat('yyyy-MM-dd').format(coupon.expireDate!);
//     minPurchaseController.text = coupon.minPurchase!;
//     maxDiscountController.text = coupon.maxDiscount!;
//     discountController.text = coupon.discount!;
//     discountTypeValue = 'PERCENTAGE';
//     couponTypeValue = 'DEFAULT';
//     limitController.text = coupon.limit.toString();
//     Navigator.of(con).pushNamed(RoutePaths.addNewCoupon);
//   }

//   void updateCoupon(BuildContext con, String couponId) async {
//     if (addCouponFormkey.currentState!.validate()) {
//       addCouponFormkey.currentState!.save();
//       Map<String, dynamic> data = {
//         "title": titleController.text,
//         "code": codeController.text,
//         "start_date": startDateController.text,
//         "expire_date": endDateController.text,
//         "min_purchase": minPurchaseController.text,
//         "max_discount": maxDiscountController.text,
//         "discount": discountController.text,
//         "discount_type": discountTypeValue,
//         "coupon_type": couponTypeValue,
//         "limit": limitController.text,
//         "status": coupon.status,
//         "data": {
//           "establishment_id": Provider.of<ProfileProvider>(con, listen: false)
//               .profile
//               .data!
//               .establishment!
//               .id!,
//           "user_id":
//               Provider.of<ProfileProvider>(con, listen: false).profile.data!.id,
//         }
//       };
//       try {
//         EasyLoading.show();
//         final apiService = CouponRepository();
//         final response = await apiService.updateCoupon(
//             psValueHolder?.userToken ?? '', data, couponId);
//         if (response.success!) {
//           clearField();
//           EasyLoading.dismiss();
//           Navigator.pop(con);
//           Navigator.pop(con);
//           fetchCoupons();
//           Utils.displaySuccessMessage(con, response.message!);
//         } else {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, response.message!);
//         }
//       } catch (e) {
//         EasyLoading.dismiss();
//         if (kDebugMode) {
//           print(e);
//         }
//         Utils.displayErrorMessage(con, 'An Error Occurred');
//       }
//     }
//   }

//   void updateStatus(BuildContext con, String couponId, bool status) async {
//     String formattedStartDate =
//         DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').format(coupon.startDate!);
//     String formattedEndDate =
//         DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').format(coupon.expireDate!);

//     // Add UTC offset to formatted dates
//     formattedStartDate += '+00:00';
//     formattedEndDate += '+00:00';
//     Map<String, dynamic> data = {
//       "title": coupon.title,
//       "code": coupon.code,
//       "start_date": formattedStartDate,
//       "expire_date": formattedEndDate,
//       "min_purchase": coupon.minPurchase,
//       "max_discount": coupon.maxDiscount,
//       "discount": coupon.discount,
//       "discount_type": coupon.discountType,
//       "coupon_type": coupon.couponType,
//       "limit": coupon.limit,
//       "status": status,
//       "data": {
//         "establishment_id": Provider.of<ProfileProvider>(con, listen: false)
//             .profile
//             .data!
//             .establishment!
//             .id!,
//         "user_id":
//             Provider.of<ProfileProvider>(con, listen: false).profile.data!.id,
//       }
//     };
//     try {
//       EasyLoading.show();
//       final apiService = CouponRepository();
//       final response = await apiService.updateCoupon(
//           psValueHolder?.userToken ?? '', data, couponId);
//       if (response.success!) {
//         clearField();
//         EasyLoading.dismiss();
//         fetchCoupons();
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       if (kDebugMode) {
//         print(e);
//       }
//       Utils.displayErrorMessage(con, 'An Error Occurred');
//     }
//   }

//   void deleteCoupon(BuildContext con, String couponId) async {
//     try {
//       EasyLoading.show();
//       final apiService = CouponRepository();
//       final response = await apiService.deleteCoupon(
//           psValueHolder?.userToken ?? '', couponId);
//       if (response.success!) {
//         EasyLoading.dismiss();
//         fetchCoupons();
//         Navigator.pop(con);
//         Navigator.pop(con);
//         Navigator.pop(con);
//         Utils.displaySuccessMessage(con, response.message!);
//       } else {
//         EasyLoading.dismiss();
//         Utils.displayErrorMessage(con, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       if (kDebugMode) {
//         print(e);
//       }
//       Utils.displayErrorMessage(con, 'An Error Occurred');
//     }
//   }

//   //functions

//   void setCouponTypeValue(String coupon) {
//     couponTypeValue = coupon;
//     notifyListeners();
//   }

//   void setDiscountTypeValue(String discount) {
//     discountTypeValue = discount;
//     notifyListeners();
//   }

//   void setStatus(bool status) {
//     status = !status;
//     notifyListeners();
//   }

//   String? searchQuery;
//   List<Coupon> searchedCoupon = [];

//   void searchCoupons() {
//     searchedCoupon = couponList
//         .where((coupon) => coupon.title.toString().contains(searchQuery!))
//         .toList();
//     notifyListeners();
//   }

//   void setSearchQuery(String ser) {
//     searchQuery = ser;
//     notifyListeners();
//   }

//   Future<bool> onWillPop(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   clearField();
//                   notifyListeners();
//                   Navigator.of(context).pop(true);
//                 },
//                 child: const Text('Yes'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   Future<bool> onWillPop2(BuildContext context) async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to discard your changes?'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   clearField();
//                   Navigator.of(context).pop(true);
//                 },
//                 child: const Text('Yes'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

// //
//   String? validateText(value) {
//     if (value!.isEmpty) {
//       return 'Required';
//     }
//     return null;
//   }
// }
