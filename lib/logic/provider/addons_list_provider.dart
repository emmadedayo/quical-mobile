// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/add_ons_list_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/addons_list_repository.dart';
// import 'package:vendor/utilities/utils.dart';

// import '../../core/common/api_resources.dart';

// class AddOnsListProvider extends AppProvider {
//   AddOnsListProvider({required AddOnsListRepository? repo, required this.valueHolder, required BuildContext context, int limit = 0}) : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('Search Provider: $hashCode');
//     dataAddressListStream = StreamController<ApiResource<List<AddOnsEntity>>>.broadcast();
//     subscriptionAddressList = dataAddressListStream.stream.listen((ApiResource<List<AddOnsEntity>> resource) {
//       updateOffset(resource.data?.length ?? 0);
//       _dataAddressList = resource;
//       if (resource.data != null) {
//         filterAddonsData.addAll(resource.data!);
//         addonsListCount = filterAddonsData.length;
//       }
//     });
//   }

//   AddOnsListRepository? _repo;
//   ValueHolder? valueHolder;
//   BuildContext? _context;
//   int current = 0;
//   int addonsListCount = 0;
//   Map<String, dynamic> menuObject = {};
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   TextEditingController searchController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController priceController = TextEditingController();

//   AddOnsEntity? addOns;

//   ApiResource<ApiStatusResponse> _apiStatus = ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);

//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;
//   ApiResource<List<AddOnsEntity>> _dataAddressList = ApiResource<List<AddOnsEntity>>(ApiStatus.NOACTION, '', <AddOnsEntity>[]);

//   ApiResource<List<AddOnsEntity>> get dataAddressList => _dataAddressList;
//   late StreamSubscription<ApiResource<List<AddOnsEntity>>> subscriptionAddressList;
//   late StreamController<ApiResource<List<AddOnsEntity>>> dataAddressListStream;

//   AddOnsEntity? selectedAddonsList;
//   List<AddOnsEntity> filterAddonsData = [];

//   @override
//   void dispose() {
//     dataAddressListStream.close();
//     subscriptionAddressList.cancel();
//     isDispose = true;
//     debugPrint('Transaction Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   getAddOnsList() async {
//     filterAddonsData = [];
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     await _repo?.getAddOnsList(dataAddressListStream, valueHolder?.userToken ?? '', isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     isLoading = false;
//     notifyListeners();
//   }

//   Future<dynamic> deleteAddOns(String s) async {
//     EasyLoading.show();
//     debugPrint('Change Profile Map: $s');
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> apiResource = await _repo!.deleteAddOns(s, valueHolder?.userToken ?? '', isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     if (apiResource.status == ApiStatus.SUCCESS) {
//       EasyLoading.dismiss(animation: true);
//       getAddOnsList();
//       Navigator.pop(_context!);
//     } else {
//       EasyLoading.dismiss(animation: true);
//       Utils.displayErrorMessage(_context!, apiResource.message);
//     }
//     notifyListeners();
//   }

//   Future<dynamic> updateAddOns(
//     context,
//     String id,
//   ) async {
//     Map<dynamic, dynamic> jsonMap = {
//       "name": nameController.text,
//       "price": priceController.text,
//       "status": true,
//     };
//     debugPrint('Update Addons: $jsonMap');
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> updateAddOns = await _repo!.editAddOns(id, jsonMap, valueHolder?.userToken ?? '', isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     debugPrint('Update Addons: $jsonMap');
//     //check if status is success
//     if (updateAddOns.status == ApiStatus.SUCCESS) {
//       nameController.clear();
//       priceController.clear();
//       EasyLoading.dismiss();
//       getAddOnsList();
//       Navigator.pop(_context!);
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, updateAddOns.message);
//     }
//     notifyListeners();
//     return true;
//   }

//   Future<dynamic> createAddOns(
//     context,
//   ) async {
//     Map<dynamic, dynamic> jsonMap = {
//       "name": nameController.text,
//       "price": priceController.text,
//       "status": false,
//     };
//     debugPrint('Create Addons: $jsonMap');
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     ApiResource<ApiStatusResponse> createAddons = await _repo!.createAddOns(jsonMap, valueHolder?.userToken ?? '', isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     debugPrint('Create Addons: $jsonMap');
//     //check if status is success
//     if (createAddons.status == ApiStatus.SUCCESS) {
//       nameController.clear();
//       priceController.clear();
//       EasyLoading.dismiss();
//       getAddOnsList();
//       Navigator.pop(_context!);
//     } else {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, createAddons.message);
//     }
//     notifyListeners();
//     return true;
//   }

//   void setAddonsObject(AddOnsEntity filterAddonsData) {
//     nameController.text = filterAddonsData.addonName ?? '';
//     priceController.text = filterAddonsData.addonPrice ?? '';
//     notifyListeners();
//   }

//   void clearData() {
//     nameController.clear();
//     priceController.clear();
//     notifyListeners();
//   }

//   void searchAddons(value) {
//     filterAddonsData = [];
//     filterAddonsData.addAll(dataAddressList.data!);
//     //search by name
//     filterAddonsData.removeWhere((element) => !element.addonName!.toLowerCase().contains(value.toLowerCase()));
//     notifyListeners();
//   }
// }
