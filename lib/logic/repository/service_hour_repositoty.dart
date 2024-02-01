// // ignore_for_file: unused_import

// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/service_hour_entity.dart';
// import 'package:vendor/logic/repository/app_repository.dart';

// class ServiceHourRepository extends AppRepository {
//   ServiceHourRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getServiceHour(
//       StreamController<ApiResource<ServiceHourEntity>> userListStream,
//       String apiToken,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       ApiResource<ServiceHourEntity> resource = await _psApiService.getServiceHour(apiToken);
//       if (resource.status == ApiStatus.SUCCESS) {
//         userListStream.sink.add(resource);
//         //return resource;
//       }
//     }
//   }
// }
