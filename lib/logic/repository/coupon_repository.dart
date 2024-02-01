

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/coupon_entity.dart';
// import '../../entity/update_coupon_response.dart';
// import '../../utilities/utils.dart';

// class CouponRepository{
 
//    static String baseURL = Utils.getAppUrl();
//   late Dio _dio;

//   CouponRepository () {
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

//   Future<CouponResponse> fetchCoupons(String token) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.get('/api/v1/coupon/coupon');
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return CouponResponse.fromJson(jsonData);
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
//       return CouponResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//    Future<CouponResponse> addCoupon(String token, Map<String, dynamic> data) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.post('/api/v1/coupon/create-coupon', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return CouponResponse.fromJson(jsonData);
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
//       return CouponResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }


//    Future<UpdateResponse> updateCoupon(String token, Map<String, dynamic> data, String couponId) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.put('/api/v1/coupon/update-coupon/$couponId', data: data);
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return UpdateResponse.fromJson(jsonData);
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
//       return UpdateResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }

//   Future<CouponResponse> deleteCoupon(String token, String couponId) async {
//    _dio.options.headers ['authorization'] = 'Bearer $token';
//     try {
//       final response = await _dio.delete('/api/v1/coupon/delete-coupon/$couponId');
//       if (response.statusCode! <= 201) {
//         final jsonData = response.data;
//         return CouponResponse.fromJson(jsonData);
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
//       return CouponResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false);
//     }
//   }
// }
