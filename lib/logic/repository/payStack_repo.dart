// // ignore_for_file: avoid_print, file_names

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../../entity/fetch_bank_response.dart';
// import '../../entity/verify_account_response.dart';

// class PaystackBank {
//   String? apiKey;
//   Dio? _dio;

//   PaystackBank() {
//     _dio = Dio(BaseOptions(
//       baseUrl: 'https://api.paystack.co/',
//       headers: {
//         'Authorization':
//             'Bearer sk_test_bc4700c837955590cd410562b477882ed5a6d359'
//       },
//     ));

//     if (!kReleaseMode) {
//       _dio!.interceptors.addAll([
//         PrettyDioLogger(
//             requestBody: true,
//             requestHeader: true,
//             responseBody: false,
//             request: false),
//       ]);
//     }
//   }

//   Future<List<PayStackGetBank>> getBanks() async {
//     try {
//       final response = await _dio!.get('bank');
//       final data = response.data['data'] as List<dynamic>;
//       final banks = data.map((bank) => PayStackGetBank.fromJson(bank)).toList();
//       return banks;
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error getting banks: $e');
//       }
//       return [];
//     }
//   }

//   Future<AccountVerificationResultResponse> verifyAccount(
//     String accountNumber,
//     String bankCode,
//   ) async {
//     try {
//       final response = await _dio!.get(
//           'bank/resolve?account_number=$accountNumber&bank_code=$bankCode');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return AccountVerificationResultResponse.fromJson(jsonData);
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
//       return AccountVerificationResultResponse(
//         message: e.response?.data["message"] ?? 'an error ocurred',
//         status: false,
//       );
//     }
//   }

  
// }
