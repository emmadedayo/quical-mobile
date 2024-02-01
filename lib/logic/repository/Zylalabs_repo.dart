// // ignore_for_file: avoid_print, file_names

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class ZelalabsBank {
//   String? apiKey;
//   Dio? _dio;

//   ZelalabsBank() {
//     _dio = Dio(BaseOptions(
//       baseUrl: 'https://zylalabs.com/api/',
//       headers: {
//         'Authorization': 'Bearer 1658|tfLuVD24m4klqiGAMWWqtwhqmP46BHJwKs8xX7kU'
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

//   Future<BankVerificationResponse> verifyBankWithRoutingNumber(
//       String routingNumber) async {
//     try {
//       final response = await _dio!.get(
//           '1887/swift+-+iban+-+routing+bank+checker+api/1580/routing+bank+checker?number=$routingNumber');
//       if (response.statusCode == 200) {
//         final jsonData = response.data;
//         return BankVerificationResponse.fromJson(jsonData);
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
//       return BankVerificationResponse(
//           message: e.response?.data["message"] ?? 'an error ocurred',
//           success: false,
//           data: null);
//     }
//   }
// }

// class BankVerificationResponse {
//   final int? status;
//   final bool? success;
//   final String? message;
//   final BankData? data;

//   BankVerificationResponse({
//     this.status,
//     this.success,
//     this.message,
//     this.data,
//   });

//   factory BankVerificationResponse.fromJson(Map<String, dynamic> json) {
//     return BankVerificationResponse(
//       status: json['status'],
//       success: json['success'],
//       message: json['message'],
//       data: BankData.fromJson(json['data']),
//     );
//   }
// }

// class BankData {
//   String? routingNumber;
//   String? dateOfRevision;
//   String? newRoutingNumber;
//   String? bank;
//   String? address;
//   String? city;
//   String? state;
//   String? zip;
//   String? phone;

//   BankData({
//     this.routingNumber,
//     this.dateOfRevision,
//     this.newRoutingNumber,
//     this.bank,
//     this.address,
//     this.city,
//     this.state,
//     this.zip,
//     this.phone,
//   });

//   factory BankData.fromJson(Map<String, dynamic> json) {
//     return BankData(
//       routingNumber: json['routing_number'],
//       dateOfRevision: json['date_of_revision'],
//       newRoutingNumber: json['new_routing_number'],
//       bank: json['bank'],
//       address: json['address'],
//       city: json['city'],
//       state: json['state'],
//       zip: json['zip'],
//       phone: json['phone'],
//     );
//   }
// }
