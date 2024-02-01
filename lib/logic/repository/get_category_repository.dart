// // ignore_for_file: avoid_print

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/category_response.dart';
// import '../../utilities/utils.dart';

// class GetCategoryRepository {
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   GetCategoryRepository() {
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

//   Future<CategoryResponse> fetchCategories(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/mics/category');
//       if (response.statusCode! <= 200) {
//         final jsonData = response.data;
//         return CategoryResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to fetch data');
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         print(e.response!.data);
//         print(e.response!.headers);
//         print(e.response!.requestOptions);
//       } else {
//         print(e.requestOptions);
//         print(e.message);
//       }
//       return CategoryResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }
// }