// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/coupons_entity.dart';
// import 'package:vendor/entity/user_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/coupons_repository.dart';
// import 'package:vendor/router/router_constant.dart';
// import 'package:vendor/utilities/utils.dart';

// class CouponsProvider extends AppProvider {
//   CouponsProvider(
//       {required CouponsRepository? repo,
//       required this.valueHolder,
//       required BuildContext context,
//       int limit = 0})
//       : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('Search Provider: $hashCode');
//     initializeHive();
//     dataAddressListStream =
//         StreamController<ApiResource<List<CouponsEntity>>>.broadcast();
//     subscriptionAddressList = dataAddressListStream.stream
//         .listen((ApiResource<List<CouponsEntity>> resource) {
//       updateOffset(resource.data?.length ?? 0);
//       _dataAddressList = resource;
//       if (resource.data != null) {
//         filterCouponsData.addAll(resource.data!);
//       }
//     });
//   }

//   CouponsRepository? _repo;
//   ValueHolder? valueHolder;
//   BuildContext? _context;
//   int current = 0;
//   Map<String, dynamic> menuObject = {};
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   TextEditingController searchController = TextEditingController();
//   TextEditingController titleController = TextEditingController();
//   TextEditingController codeController = TextEditingController();
//   TextEditingController minPurchaseController = TextEditingController();
//   TextEditingController startDateController = TextEditingController();
//   TextEditingController endDateController = TextEditingController();
//   TextEditingController maxDiscountController = TextEditingController();
//   TextEditingController discountController = TextEditingController();
//   TextEditingController discountTypeController = TextEditingController();
//   TextEditingController couponTypeController = TextEditingController();
//   TextEditingController limitController = TextEditingController();

//   UserEntity? userEntity;

//   ApiResource<ApiStatusResponse> _apiStatus =
//       ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);

//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;
//   ApiResource<List<CouponsEntity>> _dataAddressList =
//       ApiResource<List<CouponsEntity>>(
//           ApiStatus.NOACTION, '', <CouponsEntity>[]);

//   ApiResource<List<CouponsEntity>> get dataAddressList => _dataAddressList;
//   late StreamSubscription<ApiResource<List<CouponsEntity>>>
//       subscriptionAddressList;
//   late StreamController<ApiResource<List<CouponsEntity>>> dataAddressListStream;

//   CouponsEntity? selectedAddonsList;
//   List<CouponsEntity> filterCouponsData = [];

//   @override
//   void dispose() {
//     dataAddressListStream.close();
//     subscriptionAddressList.cancel();
//     isDispose = true;
//     debugPrint('Transaction Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   getCoupons() async {
//     filterCouponsData = [];
//     isLoading = true;
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     await _repo?.getCoupons(dataAddressListStream, valueHolder?.userToken ?? '',
//         isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     EasyLoading.dismiss();
//     isLoading = false;
//     notifyListeners();
//   }

//   Future<dynamic> deleteAddOns(String s) async {
//     isLoading = true;
//     debugPrint('Change Profile Map: $s');
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> apiResource = await _repo!.deleteAddOns(
//         s,
//         valueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     //check if status is success
//     if (apiResource.status == ApiStatus.SUCCESS) {
//       isLoading = false;
//       Navigator.of(_context!).pushNamedAndRemoveUntil(
//         RoutePaths.addOnsScreenIndex,
//         (route) => false,
//       );
//     } else {
//       isLoading = false;
//       Utils.displayErrorMessage(_context!, apiResource.message ?? '');
//     }
//     notifyListeners();
//   }

//   // Future<dynamic> deleteAddOns(String s) async {
//   //   isLoading = true;
//   //   debugPrint('Change Profile Map: $s');
//   //   isConnectedToInternet = await Utils.checkInternetConnectivity();
//   //   ApiResource<ApiStatusResponse> apiResource = await _repo!.deleteAddOns(
//   //       s,
//   //       valueHolder?.userToken ?? '',
//   //       isConnectedToInternet,
//   //       ApiStatus.PROGRESS_LOADING);
//   //   //check if status is success
//   //   if (apiResource.status == ApiStatus.SUCCESS) {
//   //     isLoading = false;
//   //     Navigator.of(_context!).pushNamedAndRemoveUntil(
//   //       RoutePaths.addOnsScreenIndex,
//   //       (route) => false,
//   //     );
//   //   } else {
//   //     isLoading = false;
//   //     Utils.displayErrorMessage(_context!, apiResource.message);
//   //   }
//   //   notifyListeners();
//   // }

//   Future<dynamic> updateAddOns(
//     context,
//     String id,
//   ) async {
//     Map<dynamic, dynamic> jsonMap = {
//       "title": titleController.text,
//       "code": codeController.text,
//       "start_date": startDateController.text,
//       "expire_date": endDateController.text,
//       "min_purchase": minPurchaseController.text,
//       "max_discount": maxDiscountController.text,
//       "discount": discountController.text,
//       "discount_type": discountTypeController.text,
//       "coupon_type": couponTypeController.text,
//       "limit": limitController.text,
//       "status": true,
//       "data": {
//         "establishment_id": userEntity!.establishment!.establishmentId,
//         "user_id": userEntity!.establishment!.id,
//       }
//     };
//     debugPrint('Update Addons: $jsonMap');
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> updateAddOns = await _repo!.editAddOns(
//         id as String,
//         jsonMap,
//         valueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     debugPrint('Update Addons: $jsonMap');
//     //check if status is success
//     if (updateAddOns.status == ApiStatus.SUCCESS) {
//       EasyLoading.dismiss();
//       Navigator.of(_context!).pushNamedAndRemoveUntil(
//         RoutePaths.addOnsScreenIndex,
//         (route) => false,
//       );
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, updateAddOns.message);
//     }
//     notifyListeners();
//     return true;
//   }

//   Future<dynamic> createCoupons(
//     context,
//   ) async {
//     Map<dynamic, dynamic> jsonMap = {
//       "title": titleController.text,
//       "code": codeController.text,
//       "start_date": startDateController.text,
//       "expire_date": endDateController.text,
//       "min_purchase": minPurchaseController.text,
//       "max_discount": maxDiscountController.text,
//       "discount": discountController.text,
//       "discount_type": discountTypeController.text,
//       "coupon_type": couponTypeController.text,
//       "limit": limitController.text,
//       "status": true,
//       "data": {
//         "establishment_id": userEntity!.establishment!.establishmentId,
//         "user_id": userEntity!.establishment!.id,
//       }
//     };
//     debugPrint('Create Addons: $jsonMap');
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> createAddons = await _repo!.createCoupons(
//         jsonMap,
//         valueHolder?.userToken ?? '',
//         isConnectedToInternet,
//         ApiStatus.PROGRESS_LOADING);
//     debugPrint('Create Addons: $jsonMap');
//     //check if status is success
//     if (createAddons.status == ApiStatus.SUCCESS) {
//       EasyLoading.dismiss();
//       Navigator.of(_context!).pushNamedAndRemoveUntil(
//         RoutePaths.addOnsScreenIndex,
//         (route) => false,
//       );
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, createAddons.message);
//     }
//     notifyListeners();
//     return true;
//   }

//   initializeHive() async {
//     userEntity = valueHolder?.userObject;
//     notifyListeners();
//   }

//   // void setAddonsObject(AddOnsEntity filterAddonsData) {
//   //   nameController.text = filterAddonsData.addonName ?? '';
//   //   priceController.text = filterAddonsData.addonPrice ?? '';
//   //   notifyListeners();
//   // }
// }
