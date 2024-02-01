// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/profile_response.dart';
// import '../../utilities/utils.dart';

// class ProfileRepository {
//     static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   ProfileRepository () {
//     _dio = _getDio();
//   }

//   Dio _getDio() {
//     Dio dio = Dio(
//       BaseOptions(
//         baseUrl: baseURL,
//         connectTimeout: 30000,
//         receiveTimeout: 30000,
//         headers: {
//           "authorization": "Bearer ",
//         },
//         contentType: "application/json",
//       ),
//     );
//     if (!kReleaseMode) {
//       dio.interceptors.addAll([
//         PrettyDioLogger(
//             requestBody: true,
//             requestHeader: true,
//             responseBody: false,
//             request: false),
//       ]);
//     }
//     return dio;
//   }

//   Future<ProfileResponse> fetchProfile(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/profile');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse .fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//    Future<ProfileResponse> updateEstablishmentOpenandClose(String token, String establimentAltId, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/vendor/close-open-establishment/$establimentAltId', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

// Future<ProfileResponse> updateEstablishmentOrderType(String token, String establimentAltId, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/vendor/general-establishment-update/$establimentAltId', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ProfileResponse> updateEstablishmentOpenAndClose(String token, String establimentAltId, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/vendor/create-or-update-schedule/$establimentAltId', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ProfileResponse> updateEstablishmentOpenAndCloseTime(String token, String establimentAltId, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/vendor/create-or-update-schedule/$establimentAltId', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

  
// Future<ProfileResponse> updateEstablishment(String token, String establimentAltId, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/vendor/update-establishment/$establimentAltId', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ProfileResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         if (kDebugMode) {
//           print(e.response!.data);
//         }
//         if (kDebugMode) {
//           print(e.response!.headers);
//         }
//         if (kDebugMode) {
//           print(e.response!.requestOptions);
//         }
//       } else {
//         if (kDebugMode) {
//           print(e.requestOptions);
//         }
//         if (kDebugMode) {
//           print(e.message);
//         }
//       }
//       return ProfileResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }
// }