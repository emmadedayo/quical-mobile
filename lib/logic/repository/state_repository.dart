// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/state_entity.dart';
// import 'app_repository.dart';

// class StateRepository extends AppRepository {
//   StateRepository(
//       {required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getData(
//       StreamController<ApiResource<List<StateEntity>>> dataStream,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isNeedDelete = true,
//         bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       final ApiResource<List<StateEntity>> resource = await _psApiService.getStates();
//       if (resource.status == ApiStatus.SUCCESS) {
//         if (kDebugMode) {
//           print('StateRepository: ${resource.data}');
//         }
//         return dataStream.sink.add(resource);
//       }
//     }
//   }
// }
