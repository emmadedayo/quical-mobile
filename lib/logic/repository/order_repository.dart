// // ignore_for_file: avoid_print

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/change_order_status_response.dart';
// import '../../entity/get_rider_by_id_response.dart';
// import '../../entity/orders_response.dart';
// import '../../entity/request_a_ride.dart';
// import '../../utilities/utils.dart';

// class OrderRepository {
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   OrderRepository() {
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

//   Future<OrderResponse> fetchOrders(String token) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/order/get-order');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return OrderResponse.fromJson(jsonData);
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
//       return OrderResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ChangeOrderStatus> changeOrderStatus(
//       String token, String id, Map<String, dynamic> data) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio
//           .put('/api/v1/vendor/order/update-order-status/$id', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ChangeOrderStatus.fromJson(jsonData);
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
//       return ChangeOrderStatus(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<ChangeOrderStatus> proccessOrder(
//       String token, String id, Map<String, dynamic> data) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.put('/api/v1/vendor/order/process-order/$id', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return ChangeOrderStatus.fromJson(jsonData);
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
//       return ChangeOrderStatus(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<OrderResponse> rejectOrder(
//       String token, String id, Map<String, dynamic> data) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response =
//           await _dio.put('/api/v1/vendor/order/reject-order/$id', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return OrderResponse.fromJson(jsonData);
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
//       return OrderResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<RequestARideResponse> searchRide(
//       String token, double long, double lat, Map<String, dynamic> data) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio
//           .get('/api/v1/ride/search_for_nearest_driver/$lat/$long', queryParameters: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return RequestARideResponse.fromJson(jsonData);
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
//       return RequestARideResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<RequestARideResponse> createRide(
//       String token,Map<String, dynamic> data) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio
//           .post('/api/v1/ride/create-ride', data: data);
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return RequestARideResponse.fromJson(jsonData);
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
//       return RequestARideResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//     Future<GetRiderByIdResponse> fetchRiderById(String token, int riderId) async {
//     _dio.options.headers['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/vendor/ride/get-ride-id/RIDE-$riderId');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return  GetRiderByIdResponse.fromJson(jsonData);
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
//       return GetRiderByIdResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }
// }
