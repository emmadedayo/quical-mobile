// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/add_ons_list_entity.dart';
// import 'package:vendor/logic/repository/app_repository.dart';

// class AddOnsListRepository extends AppRepository {
//   AddOnsListRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<dynamic> getAddOnsList(
//       StreamController<ApiResource<List<AddOnsEntity>>> dataStream,
//       String token,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isNeedDelete = true,
//         bool isLoadFromServer = true}) async {
//     if (isConnectedToInternet) {
//       final ApiResource<List<AddOnsEntity>> resource =
//       await _psApiService.getAddOnsList(token);
//       if (resource.status == ApiStatus.SUCCESS) {
//         if (kDebugMode) {
//           print('Categories list: ${resource.message}');
//         }
//         return dataStream.sink.add(resource);
//       }
//     }
//   }

//   Future<ApiResource<ApiStatusResponse>> createAddOns(
//       jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource =
//     await _psApiService.createAddOns(jsonMap, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer =
//       Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   Future<ApiResource<ApiStatusResponse>> editAddOns(
//       String id,
//       jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource =
//     await _psApiService.editAddOns(id, jsonMap,  apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer =
//       Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   // Future<ApiResource<ApiStatusResponse>> editAddOns(
//   //     jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status,
//   //     {bool isLoadFromServer = true}) async {
//   //   final ApiResource<ApiStatusResponse> resource =
//   //       await _psApiService.editAddOns(jsonMap, apiToken);
//   //   if (resource.status == ApiStatus.SUCCESS) {
//   //     return resource;
//   //   } else {
//   //     final Completer<ApiResource<ApiStatusResponse>> completer =
//   //         Completer<ApiResource<ApiStatusResponse>>();
//   //     completer.complete(resource);
//   //     return completer.future;
//   //   }
//   // }

//   Future<ApiResource<ApiStatusResponse>> deleteAddOns(String id, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource = await _psApiService.deleteAddOns(id, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

// // Future<ApiResource<ApiStatusResponse>> deleteAddOns(
// //     String id, String apiToken, bool isConnectedToInternet, ApiStatus status,
// //     {bool isLoadFromServer = true}) async {
// //   final ApiResource<ApiStatusResponse> resource =
// //       await _psApiService.deleteAddOns(id, apiToken);
// //   if (resource.status == ApiStatus.SUCCESS) {
// //     return resource;
// //   } else {
// //     final Completer<ApiResource<ApiStatusResponse>> completer =
// //         Completer<ApiResource<ApiStatusResponse>>();
// //     completer.complete(resource);
// //     return completer.future;
// //   }
// // }
// }
