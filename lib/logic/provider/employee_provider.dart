// // ignore_for_file: unused_field

// import 'package:flutter/material.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/employee_repository.dart';

// class EmployeeProvider extends AppProvider {
//   EmployeeProvider(
//       {required EmployeeRepository? repo,
//       required this.valueHolder,
//       required BuildContext context,
//       int limit = 0})
//       : super(repo, context, limit) {
//     _repo = repo;
//     _context = context;
//     isDispose = false;
//     debugPrint('Search Provider: $hashCode');
//     // dataAddressListStream =
//     //     StreamController<ApiResource<List<CategoriesEntity>>>.broadcast();
//     // subscriptionAddressList = dataAddressListStream.stream
//     //     .listen((ApiResource<List<CategoriesEntity>> resource) {
//     //   updateOffset(resource.data?.length ?? 0);
//     //   _dataAddressList = resource;
//     //   if (resource.data != null) {
//     //     filterCategoriesData.addAll(resource.data!);
//     //   }
//     // });
//   }

//   EmployeeRepository? _repo;
//   ValueHolder? valueHolder;
//   BuildContext? _context;
//   int current = 0;
//   Map<String, dynamic> menuObject = {};
//   int selected = 0;
//   bool agree = false;
//   PageController? pageController = PageController(initialPage: 0);
//   TextEditingController searchController = TextEditingController();

//   bool status = false;

//   // ApiResource<ApiStatusResponse> _apiStatus =
//   //     ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);

//   // ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;
//   // ApiResource<List<CategoriesEntity>> _dataAddressList =
//   //     ApiResource<List<CategoriesEntity>>(
//   //         ApiStatus.NOACTION, '', <CategoriesEntity>[]);

//   // ApiResource<List<CategoriesEntity>> get dataAddressList => _dataAddressList;
//   // late StreamSubscription<ApiResource<List<CategoriesEntity>>>
//   //     subscriptionAddressList;
//   // late StreamController<ApiResource<List<CategoriesEntity>>>
//   //     dataAddressListStream;

//   // CategoriesEntity? selectedCategoriesList;
//   // List<CategoriesEntity> filterCategoriesData = [];

//   @override
//   void dispose() {
//     // dataAddressListStream.close();
//     // subscriptionAddressList.cancel();
//     pageController?.dispose();
//     isDispose = true;
//     debugPrint('Transaction Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   void changePage(int i) {
//     pageController?.animateToPage(i,
//         duration: const Duration(milliseconds: 500), curve: Curves.ease);
//     selected = i;
//     notifyListeners();
//   }

//   void onToggle(bool? newValue) {
//     agree = newValue ?? false;
//     notifyListeners();
//   }
//   // void onToggle(val) {
//   //   status = val;
//   //   notifyListeners();
//   // }
// }
