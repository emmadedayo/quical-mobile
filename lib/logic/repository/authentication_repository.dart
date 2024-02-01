// import 'dart:async';
// import 'package:vendor/core/common/ApiStatusResponse.dart';
// import 'package:vendor/core/common/api_resources.dart';
// import 'package:vendor/core/common/api_service.dart';
// import 'package:vendor/core/common/api_status.dart';
// import 'package:vendor/entity/user_login_entity.dart';
// import '../repository/app_repository.dart';

// class AuthenticationRepository extends AppRepository {
//   AuthenticationRepository({required ApiService psApiService}) {
//     _psApiService = psApiService;
//   }

//   late ApiService _psApiService;

//   Future<ApiResource<UserLoginEntity>> postUserLogin(
//       Map<dynamic, dynamic> jsonMap,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     final ApiResource<UserLoginEntity> resource =
//         await _psApiService.login(jsonMap);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<UserLoginEntity>> completer =
//           Completer<ApiResource<UserLoginEntity>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   Future<ApiResource<ApiStatusResponse>> postUserRegister(
//       Map<dynamic, dynamic> jsonMap,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource =
//         await _psApiService.register(jsonMap);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer =
//           Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   Future<ApiResource<ApiStatusResponse>> postVerifyEmail(
//       Map<dynamic, dynamic> jsonMap,
//       bool isConnectedToInternet,
//       ApiStatus status,
//       {bool isLoadFromServer = true}) async {
//     final ApiResource<ApiStatusResponse> resource =
//         await _psApiService.verifySignUpAccount(jsonMap);
//     if (resource.status == ApiStatus.SUCCESS) {
//       return resource;
//     } else {
//       final Completer<ApiResource<ApiStatusResponse>> completer =
//           Completer<ApiResource<ApiStatusResponse>>();
//       completer.complete(resource);
//       return completer.future;
//     }
//   }

//   // Future<ApiResource<ApiStatusResponse>> postResendOtp(Map<dynamic, dynamic> jsonMap,
//   //     bool isConnectedToInternet, ApiStatus status,
//   //     {bool isLoadFromServer = true}) async {
//   //   final ApiResource<ApiStatusResponse> resource = await _psApiService.resendOtp(jsonMap);
//   //   if (resource.status == ApiStatus.SUCCESS) {
//   //     return resource;
//   //   } else {
//   //     final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//   //     completer.complete(resource);
//   //     return completer.future;
//   //   }
//   // }

//   // Future<ApiResource<ApiStatusResponse>> postResetAccount(Map<dynamic, dynamic> jsonMap,
//   //     bool isConnectedToInternet, ApiStatus status,
//   //     {bool isLoadFromServer = true}) async {
//   //   final ApiResource<ApiStatusResponse> resource = await _psApiService.resetAccount(jsonMap);
//   //   if (resource.status == ApiStatus.SUCCESS) {
//   //     return resource;
//   //   } else {
//   //     final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//   //     completer.complete(resource);
//   //     return completer.future;
//   //   }
//   // }

//   // Future<ApiResource<ApiStatusResponse>> postChangePassword(Map<dynamic, dynamic> jsonMap,
//   //     bool isConnectedToInternet, ApiStatus status,
//   //     {bool isLoadFromServer = true}) async {
//   //   final ApiResource<ApiStatusResponse> resource = await _psApiService.changePassword(jsonMap);
//   //   if (resource.status == ApiStatus.SUCCESS) {
//   //     return resource;
//   //   } else {
//   //     final Completer<ApiResource<ApiStatusResponse>> completer = Completer<ApiResource<ApiStatusResponse>>();
//   //     completer.complete(resource);
//   //     return completer.future;
//   //   }
//   // }
// }
