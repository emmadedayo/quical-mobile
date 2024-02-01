// // ignore_for_file: unused_field, unused_local_variable, prefer_final_fields

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/entity/state_entity.dart';
// import 'package:vendor/logic/repository/state_repository.dart';
// import '../../core/common/ApiStatusResponse.dart';
// import '../../core/common/api_status.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../utilities/utils.dart';
// import 'app_provider.dart';

// class StateProvider extends AppProvider {
//   StateProvider(
//       {required StateRepository? repo,
//           required this.valueHolder,
//         required BuildContext context,
//         int limit = 0})
//       : super(repo, context,limit) {
//     _repo = repo;
//      _context = context;
//     isDispose = false;
//     debugPrint('User Provider: $hashCode');
//     dataListStream = StreamController<ApiResource<List<StateEntity>>>.broadcast();
//     subscriptionList = dataListStream.stream.listen((ApiResource<List<StateEntity>> resource) {
//       updateOffset(resource.data?.length ?? 0);
//       _dataList = resource;
//       if (resource.status != ApiStatus.BLOCK_LOADING &&
//           resource.status != ApiStatus.PROGRESS_LOADING) {
//         isLoading = false;
//       }

//       if (!isDispose) {
//         notifyListeners();
//       }
//     });
//   }

//   StateRepository? _repo;
//   ValueHolder? valueHolder;
//   StateEntity? holderUser;
//    BuildContext? _context;

//   List<StateEntity> filterData = [];
//   ApiResource<ApiStatusResponse> _apiStatus = ApiResource<ApiStatusResponse>(ApiStatus.NOACTION, '', null);
//   ApiResource<ApiStatusResponse> get apiStatus => _apiStatus;

//   ApiResource<List<StateEntity>> _dataList = ApiResource<List<StateEntity>>(ApiStatus.NOACTION, '', <StateEntity>[]);

//   ApiResource<List<StateEntity>> get dataList => _dataList;
//   late StreamSubscription<ApiResource<List<StateEntity>>> subscriptionList;
//   late StreamController<ApiResource<List<StateEntity>>> dataListStream;

//   @override
//   void dispose() {
//     subscriptionList.cancel();
//     dataListStream.close();
//     isDispose = true;
//     debugPrint('Transaction Provider Dispose: $hashCode');
//     super.dispose();
//   }

//   Future<dynamic> getStates() async {
//     isLoading = true;
//     isConnectedToInternet = await Utils.checkInternetConnectivity();
//     var ddknkj = await _repo?.getData(dataListStream, isConnectedToInternet, ApiStatus.PROGRESS_LOADING);

//     isLoading = false;
//     notifyListeners();
//   }
// }
