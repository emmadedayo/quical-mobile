// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:provider/provider.dart';
// import 'package:vendor/logic/provider/profile_provider.dart';
// import 'package:vendor/utilities/utils.dart';

// import '../../entity/value_holder_entity.dart';
// import '../repository/dashboard_repository.dart';
// import '../../entity/dashboard_responce.dart';

// class DashBoardViewmodel extends ChangeNotifier {
//   DashBoardViewmodel(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     init();
//   }

//   // init method
//   void init() async {
//     fetchDash();
//     Provider.of<ProfileProvider>(context, listen: false).fetchProfile();
//   }

//   List<String> statsType = [
//     "Today",
//     "This Month",
//     "Overall",
//   ];

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // declearations
//   ValueHolder? psValueHolder;
//   BuildContext context;
//   DashboardResponse dash = DashboardResponse();

//   String selectedStatsType = 'Overall';
//   String? countryCurrencySymbol;
//   bool isDataFetched = false;

//   void setSelectedStatsType(String statsType) {
//     selectedStatsType = statsType;
//     fetchDash();
//     notifyListeners();
//   }

//   void fetchDash() async {
//     try {
//       EasyLoading.show();
//       final apiService = DashBoardRepository();
//       isDataFetched = true;
//       notifyListeners();
//       final response = await apiService.fetchDashBoard(
//           psValueHolder?.userToken ?? '', selectedStatsType);
//       if (response.success!) {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         countryCurrencySymbol =
//             psValueHolder?.countryObject!.countryCurrencySymbol;
//         dash = response;
//         notifyListeners();
//       } else {
//         EasyLoading.dismiss();
//         isDataFetched = false;
//         notifyListeners();
//         Utils.displayErrorMessage(context, response.message!);
//       }
//     } catch (e) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(context, 'an error occurred!');
//       if (kDebugMode) {
//         print(e);
//       }
//     }

//     notifyListeners();
//   }

//   void setStats(String? newValue) {
//     if (newValue != null) {
//       setSelectedStatsType(newValue);
//       notifyListeners();
//     }
//   }
// }
