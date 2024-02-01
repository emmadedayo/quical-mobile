// import 'dart:async';

// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/user_entity.dart';

// import 'app_repository.dart';

// class UserRepository extends AppRepository {
//   UserRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//  Future<void> getUser(
//   StreamController<ApiResource<UserEntity>> userListStream,
//   String apiToken,
//   bool isConnectedToInternet,
//   ApiStatus status,
//   {bool isLoadFromServer = true}
// ) async {
//   if (isConnectedToInternet) {
//     ApiResource<UserEntity> resource = await _psApiService.getUser(apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       if (!userListStream.isClosed) {
//         userListStream.add(resource);
//       }
//     }
//   }
// }


//   // Future<dynamic> getTrans(StreamController<ApiResource<TransactionDetailsEntity>> dataStream, String token, bool isConnectedToInternet, ApiStatus status,
//   //     {bool isNeedDelete = true, bool isLoadFromServer = true}) async {
//   //   if (isConnectedToInternet) {
//   //     final ApiResource<TransactionDetailsEntity> resource = await _psApiService.getTrans(token);
//   //     if (resource.status == ApiStatus.SUCCESS) {
//   //       if (kDebugMode) {
//   //         print('HomeRepository: ${resource.data?.transactionHistory}');
//   //       }
//   //       return dataStream.sink.add(resource);
//   //     }
//   //   }
//   // }

//   // Future<dynamic> getTransactionHistory(StreamController<ApiResource<List<TransactionHistoryEntity>>> dataStream, String token, bool isConnectedToInternet, ApiStatus status,
//   //     {bool isNeedDelete = true, bool isLoadFromServer = true}) async {
//   //   if (isConnectedToInternet) {
//   //     final ApiResource<List<TransactionHistoryEntity>> resource = await _psApiService.getTransactionHistory(token);
//   //     if (resource.status == ApiStatus.SUCCESS) {
//   //       if (kDebugMode) {
//   //         print('Delivery Address: ${resource.data}');
//   //       }
//   //       return dataStream.sink.add(resource);
//   //     }
//   //   }
//   // }

//   //
//   // Future<dynamic> getKmAmount(
//   //     String apiToken,
//   //     String km,
//   //     bool isConnectedToInternet,
//   //     ApiStatus status,
//   //     {bool isLoadFromServer = true}) async {
//   //   if (isConnectedToInternet) {
//   //     ApiResource<KmAmount> resource = await _psApiService.getKm(apiToken,km);
//   //     if (resource.status == ApiStatus.SUCCESS) {
//   //       //print
//   //       print("object resource ${resource.data?.amount}");
//   //       return resource;
//   //     }
//   //   }
//   // }
//   //
//   Future<ApiResource<ApiStatusResponse>> updateProfile(Map<dynamic, dynamic> jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource = await _psApiService.updateUser(jsonMap, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   //
//   Future<ApiResource<ApiStatusResponse>> updatePassword(Map<dynamic, dynamic> jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource = await _psApiService.changePasswordAuth(jsonMap, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   // }
//   //
//   Future<ApiResource<ApiStatusResponse>> uploadImage(Map<dynamic, dynamic> jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource = await _psApiService.uploadImage(jsonMap, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   Future<ApiResource<ApiStatusResponse>> updateEstablishment(Map<dynamic, dynamic> jsonMap, String apiToken, bool isConnectedToInternet, ApiStatus status, {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource = await _psApiService.updateEstablishment(jsonMap, apiToken);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }
 
// }
