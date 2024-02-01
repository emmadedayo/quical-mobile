// // ignore_for_file: unused_field, unnecessary_import, prefer_final_fields

// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/service_hour_entity.dart';
// import 'package:vendor/entity/value_holder_entity.dart';
// import 'package:vendor/logic/provider/app_provider.dart';
// import 'package:vendor/logic/repository/service_hour_repositoty.dart';
// import 'package:vendor/utilities/utils.dart';

// class ServiceHourProvider extends AppProvider {
//   ServiceHourProvider(
//       {required ServiceHourRepository? repo,
//       required this.valueHolder,
//         required BuildContext context,
//         int limit = 0})
//       : super(repo, context,limit) {
//     _repo = repo;
//      _context = context;
//     isDispose = false;

//     debugPrint('UserEntity Provider: $hashCode');
//     userListStream =
//         StreamController<ApiResource<ServiceHourEntity>>.broadcast();
//     userSubscription =
//         userListStream.stream.listen((ApiResource<ServiceHourEntity> resource) {
//       if (resource.data != null) {
//         _dataList = resource;
//         holderUser = resource.data!;
//       }

//       if (resource.status != ApiStatus.BLOCK_LOADING &&
//           resource.status != ApiStatus.PROGRESS_LOADING) {
//         isLoading = false;
//       }

//       if (!isDispose) {
//         notifyListeners();
//       }
//     });
//   }

//   ServiceHourRepository? _repo;
//   ValueHolder? valueHolder;
//   ServiceHourEntity? holderUser;
//    BuildContext? _context;

//   ApiResource<ApiStatusResponse> _apiStatus =
//       ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);
//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;

//   ApiResource<ServiceHourEntity> _dataList =
//       ApiResource<ServiceHourEntity>(ApiStatus.NOACTION, '', null);
//   ApiResource<ServiceHourEntity> get dataList => _dataList;

//   late StreamSubscription<ApiResource<ServiceHourEntity>> userSubscription;
//   late StreamController<ApiResource<ServiceHourEntity>> userListStream;

//   //clodinary

//   bool _isChecked = false;
//   bool _isChecked1 = false;
//   bool _isChecked2 = false;
//   bool _isChecked3 = false;
//   bool _isChecked4 = false;
//   bool _isChecked5 = false;
//   bool _isChecked6 = false;

//   bool get isChecked => _isChecked;
//   bool get isChecked1 => _isChecked1;
//   bool get isChecked2 => _isChecked2;
//   bool get isChecked3 => _isChecked3;
//   bool get isChecked4 => _isChecked4;
//   bool get isChecked5 => _isChecked5;
//   bool get isChecked6 => _isChecked6;

//   set isChecked(bool value) {
//     _isChecked = value;
//     notifyListeners();
//   }

//   set isChecked1(bool value) {
//     _isChecked1 = value;
//     notifyListeners();
//   }

//   set isChecked2(bool value) {
//     _isChecked2 = value;
//     notifyListeners();
//   }

//   set isChecked3(bool value) {
//     _isChecked3 = value;
//     notifyListeners();
//   }

//   set isChecked4(bool value) {
//     _isChecked4 = value;
//     notifyListeners();
//   }

//   set isChecked5(bool value) {
//     _isChecked5 = value;
//     notifyListeners();
//   }

//   set isChecked6(bool value) {
//     _isChecked6 = value;
//     notifyListeners();
//   }

//   @override
//   void dispose() {
//     userSubscription.cancel();
//     userListStream.close();
//     isDispose = true;

//     debugPrint('UserEntity Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   Future<dynamic> getServiceHour() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     await _repo!.getServiceHour(userListStream, valueHolder?.userToken ?? '',
//         isConnectedToInternet, ApiStatus.PROGRESS_LOADING);
//     notifyListeners();
//     return _dataList;
//   }
// }
