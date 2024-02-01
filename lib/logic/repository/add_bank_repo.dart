// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/add_bank_response.dart';
// import '../../entity/withdrawer_response.dart';
// import '../../utilities/utils.dart';

// class AddBankRepository {
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//  AddBankRepository () {
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

//   Future<AddBankResponse> fetchBank(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/get-bank');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return AddBankResponse.fromJson(jsonData);
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
//       return AddBankResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//    Future<AddBankResponse> createBank(String token, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.post('/api/v1/vendor/create-bank', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return AddBankResponse.fromJson(jsonData);
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
//       return AddBankResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

// Future<AddBankResponse> deleteBank(String token, String bankId) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.delete('/api/v1/vendor/delete-bank/$bankId');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return AddBankResponse.fromJson(jsonData);
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
//       return AddBankResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<WithdrawerResponse> fetchWithdrawer(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/withdraw/withdraw');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return WithdrawerResponse.fromJson(jsonData);
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
//       return WithdrawerResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//    Future<WithdrawerResponse> postWithdrawer(String token, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.post('/api/v1/vendor/withdraw/create-withdraw', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return WithdrawerResponse.fromJson(jsonData);
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
//       return WithdrawerResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

// }