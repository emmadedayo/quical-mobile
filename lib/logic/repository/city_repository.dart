// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/city_entity.dart';
// import 'app_repository.dart';

// class CityRepository extends AppRepository {
//   CityRepository(
//       {required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getData(
//       StreamController<ApiResource<List<CityEntity>>> dataStream,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isNeedDelete = true,
//         bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       final ApiResource<List<CityEntity>> resource = await _psApiService.getCities();
//       if (resource.status == ApiStatus.SUCCESS) {
//         if (kDebugMode) {
//           print('CityRepository: ${resource.data}');
//         }
//         return dataStream.sink.add(resource);
//       }
//     }
//   }
// }
