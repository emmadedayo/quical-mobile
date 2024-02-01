// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:intl/intl.dart'; // Import the intl package
// import '../../entity/dashboard_responce.dart';
// import '../../utilities/utils.dart';

// class DashBoardRepository {
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   DashBoardRepository() {
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
//           requestBody: true,
//           requestHeader: true,
//           responseBody: false,
//           request: false,
//         ),
//       ]);
//     }
//     return dio;
//   }

//   Future<DashboardResponse> fetchDashBoard(
//     String token,
//     String dropdownValue,
//   ) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       if (dropdownValue == 'Overall') {
//         final response =
//             await _dio.get('/api/v1/vendor/dashboard/dashboard');
//         if (response.statusCode! <= 201) {
//           final jsonData = response.data;
//           return DashboardResponse.fromJson(jsonData);
//         } else {
//           throw Exception('Failed to fetch data');
//         }
//       } else {
//         DateTime startDate = DateTime.now();
//         DateTime endDate = DateTime.now();

//         if (dropdownValue == 'Today') {
//           startDate = DateTime.now();
//           endDate = DateTime.now();
//         } else if (dropdownValue == 'This Month') {
//           startDate = DateTime(DateTime.now().year, DateTime.now().month, 1);
//           endDate = DateTime.now();
//         }

//         final String startFormatted =
//             DateFormat('yyyy-MM-dd').format(startDate);
//         final String endFormatted = DateFormat('yyyy-MM-dd').format(endDate);

//         final response = await _dio.get(
//           '/api/v1/vendor/dashboard/dashboard/$startFormatted/$endFormatted',
//         );
//         if (response.statusCode! <= 201) {
//           final jsonData = response.data;
//           return DashboardResponse.fromJson(jsonData);
//         } else {
//           throw Exception('Failed to fetch data');
//         }
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
//       return DashboardResponse(
//         message: e.response?.data["message"] ?? 'an error occurred',
//         success: false,
//       );
//     }
//   }
// }
