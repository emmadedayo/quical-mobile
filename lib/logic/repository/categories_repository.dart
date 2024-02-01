// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/categories_entity.dart';
// import 'package:vendor/logic/repository/app_repository.dart';

// class CategoriesRepository extends AppRepository {
//   CategoriesRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getCategories(
//       StreamController<ApiResource<List<CategoriesEntity>>> dataStream,
//       String token,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isNeedDelete = true,
//       bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       final ApiResource<List<CategoriesEntity>> resource =
//           await _psApiService.getCategories(token);
//       if (resource.status == ApiStatus.SUCCESS) {
//         if (kDebugMode) {
//           print('Categories list: ${resource.message}');
//         }
//         return dataStream.sink.add(resource);
//       }
//     }
//   }
// }
