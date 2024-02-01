// // ignore_for_file: nullable_type_in_catch_clause, avoid_print

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import '../../core/url/app_url.dart';
// import '../../entity/itemList_response.dart';
// import '../../utilities/utils.dart';

// class ItemRepository {
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   ItemRepository() {
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

//   Future<ItemsResponse> fetchItems(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get(ApiUrl.getItems);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ItemsResponse> updateStatus(
//       String itemId,String token, Map<String, dynamic> data) async {
//          _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.put('/api/v1/vendor/items/update-items-status/$itemId', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ItemsResponse> updateRecommend(
//       String itemId,String token, Map<String, dynamic> data) async {
//          _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.put('/api/v1/vendor/items/update-items-recommended/$itemId', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ItemsResponse> addItem( String token, Map<String, dynamic> data) async {
//          _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.post('/api/v1/vendor/items/create-items', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//    Future<ItemsResponse> deleteItem( String token, String id) async {
//          _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.delete('/api/v1/vendor/items/delete-items/$id');
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
//       } else {
//         throw Exception('Failed to delete item');
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

  
//   Future<ItemsResponse> updateItem(
//       String itemId,String token, Map<String, dynamic> data) async {
//          _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.put('/api/v1/vendor/items/update-items/$itemId', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return ItemsResponse.fromJson(jsonData);
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
//       return ItemsResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }
// }
