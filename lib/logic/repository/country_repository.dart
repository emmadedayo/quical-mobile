// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/country_entity.dart';
// import 'app_repository.dart';

// class CountryRepository extends AppRepository {
//   CountryRepository(
//       {required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getData(
//       StreamController<ApiResource<List<CountryEntity>>> dataStream,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isNeedDelete = true,
//         bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       final ApiResource<List<CountryEntity>> resource = await _psApiService.getCountries();
//       if (resource.status == ApiStatus.SUCCESS) {
//         if (kDebugMode) {
//           print('CountryRepository: ${resource.data}');
//         }
//         return dataStream.sink.add(resource);
//       }
//     }
//   }
// }
