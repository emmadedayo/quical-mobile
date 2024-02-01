// // ignore_for_file: unused_field, prefer_final_fields

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/categories_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/categories_repository.dart';
// import 'package:vendor/utilities/utils.dart';

// class CategoriesProvider extends AppProvider {
//   CategoriesProvider({required CategoriesRepository? repo, required this.valueHolder, required BuildContext context, int limit = 0}) : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('Search Provider: $hashCode');
//     dataAddressListStream = StreamController<ApiResource<List<CategoriesEntity>>>.broadcast();
//     subscriptionAddressList = dataAddressListStream.stream.listen((ApiResource<List<CategoriesEntity>> resource) {
//       updateOffset(resource.data?.length ?? 0);
//       _dataAddressList = resource;
//       if (resource.data != null) {
//         filterCategoriesData.addAll(resource.data!);
//         categoryCount = resource.data!.length;
//       }
//     });
//   }

//   CategoriesRepository? _repo;
//   ValueHolder? valueHolder;
//   BuildContext? _context;
//   int current = 0;
//   int categoryCount = 0;
//   Map<String, dynamic> menuObject = {};
//   int selected = 0;
//   PageController? pageController = PageController(initialPage: 0);
//   TextEditingController searchController = TextEditingController();

//   ApiResource<ApiStatusResponse> _apiStatus = ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);

//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;
//   ApiResource<List<CategoriesEntity>> _dataAddressList = ApiResource<List<CategoriesEntity>>(ApiStatus.NOACTION, '', <CategoriesEntity>[]);

//   ApiResource<List<CategoriesEntity>> get dataAddressList => _dataAddressList;
//   late StreamSubscription<ApiResource<List<CategoriesEntity>>> subscriptionAddressList;
//   late StreamController<ApiResource<List<CategoriesEntity>>> dataAddressListStream;

//   CategoriesEntity? selectedCategoriesList;
//   List<CategoriesEntity> filterCategoriesData = [];

//   @override
//   void dispose() {
//     dataAddressListStream.close();
//     subscriptionAddressList.cancel();
//     pageController?.dispose();
//     isDispose = true;
//     debugPrint('Transaction Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   getCategories() async {
//     filterCategoriesData = [];
//     isLoading = true;
//     EasyLoading.show();
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     await _repo?.getCategories(dataAddressListStream, valueHolder?.userToken ?? '', isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     EasyLoading.dismiss();
//     isLoading = false;
//     notifyListeners();
//   }

//   void changePage(int i) {
//     pageController?.animateToPage(i, duration: const Duration(milliseconds: 500), curve: Curves.ease);
//     selected = i;
//     notifyListeners();
//   }

//   void searchCategory(value) {
//     filterCategoriesData = [];
//     filterCategoriesData.addAll(dataAddressList.data!);
//     //search by name
//     filterCategoriesData.removeWhere((element) => !element.name!
//         .toLowerCase()
//         .contains(value.toLowerCase()));
//     notifyListeners();
//   }
// }
