// // ignore_for_file: use_build_context_synchronously

// import 'dart:convert';
// import 'dart:math';

// import 'package:cloudinary/cloudinary.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import '../../entity/value_holder_entity.dart';
// import '../../utilities/utils.dart';
// import 'dart:typed_data';

// class HelpProvider extends ChangeNotifier {
//   HelpProvider(
//       {required this.context, required this.psValueHolder, int limit = 0}) {
//     _dio = _getDio();
//     init();
//   }
//   // init method
//   void init() {
//     //
//   }

//   // dispose method
//   @override
//   void dispose() {
//     //
//     super.dispose();
//   }

//   // declearations

//   ValueHolder? psValueHolder;
//   BuildContext context;
//   bool isDataFetched = false;
//   static String baseURL = Utils.getAppUrl();
//   late Dio _dio;
//   String? issueValue;
//   List<String> issue = [
//     "Late Delivery",
//     "Poor Quality",
//     "Missing Item",
//     "Payment Issue",
//     "Damaged Goods",
//     "Wrong Item",
//     "Other",
//   ];

//   // controllers
//   TextEditingController noteController = TextEditingController();

//   Dio _getDio() {
//     Dio dio = Dio(
//       BaseOptions(
//         baseUrl: baseURL,
//         connectTimeout: 30000,
//         receiveTimeout: 30000,
//         headers: {
//           "authorization": "Bearer ${psValueHolder?.userToken ?? ''}",
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

//   final cloudinary = Cloudinary.signedConfig(
//     apiKey: '975568434126979',
//     apiSecret: 'y37Zi1IvYKLVvylZwk_YZStWeo8',
//     cloudName: 'dcdcxof9b',
//   );

//   XFile? pickedImage;
//   String? pickedFileName;

//   Future<void> pickImage() async {
//     final picker = ImagePicker();

//     try {
//       final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//       if (pickedFile != null) {
//         pickedImage = pickedFile;
//         pickedFileName = pickedFile.name;
//         notifyListeners();
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error picking image: $e');
//       }
//     }
//   }

//   Future<void> sendHelpRequest(BuildContext con) async {
//     EasyLoading.show();
//     if (noteController.text.isEmpty) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'Message is Required');
//     } else if (issueValue == null) {
//       EasyLoading.dismiss();
//       Utils.displayErrorMessage(con, 'Select Your Concern');
//     } else {
//       final randomBytes = Uint8List(10);
//       final random = Random.secure();
//       for (var i = 0; i < randomBytes.length; i++) {
//         randomBytes[i] = random.nextInt(256);
//       }
//       final randomFileName = base64Url.encode(randomBytes);
//       if (pickedImage != null) {
//         final imageBytes = await pickedImage!.readAsBytes();

//         if (imageBytes.length > 5 * 1024 * 1024) {
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(
//               con, 'Selected image size is greater than 5MB.');
//           return;
//         }

//         try {
//           final response = await cloudinary.upload(
//             file: pickedImage!.path,
//             fileBytes: imageBytes,
//             resourceType: CloudinaryResourceType.auto,
//             folder: 'issue',
//             fileName: randomFileName,
//             progressCallback: (count, total) {
//               if (kDebugMode) {
//                 print('Uploading image with progress: $count/$total');
//               }
//             },
//           );

//           if (response.isSuccessful) {
//             EasyLoading.dismiss();
//             Map<String, dynamic> data = {
//               "issue": issueValue,
//               "note": noteController.text,
//               "complaint_type": "VENDOR",
//               "image": response.secureUrl,
//             };
//             try {
//               final response =
//                   await _dio.post('/api/v1/vendor/create-help', data: data);
//               if (response.statusCode! <= 201) {
//                 EasyLoading.dismiss();
//                 Navigator.pop(con);
//                 issueValue = null;
//                 noteController.clear();
//                 pickedImage = null;
//                 pickedFileName = null;
//                 Utils.displaySuccessMessage(con, 'Thanks for your feedback');
//               } else {
//                 EasyLoading.dismiss();
//                 Utils.displayErrorMessage(con, "An Error Occured");
//                 throw Exception('Failed to fetch data');
//               }
//             } on DioError catch (e) {
//               EasyLoading.dismiss();
//               Utils.displayErrorMessage(con, "An Error Occured");
//               if (e.response != null) {
//                 if (kDebugMode) {
//                   print(e.response!.data);
//                 }
//                 if (kDebugMode) {
//                   print(e.response!.headers);
//                 }
//                 if (kDebugMode) {
//                   print(e.response!.requestOptions);
//                 }
//               } else {
//                 if (kDebugMode) {
//                   print(e.requestOptions);
//                 }
//                 if (kDebugMode) {
//                   print(e.message);
//                 }
//               }
//             }
//           }
//         } catch (e) {
//           if (kDebugMode) {
//             print(e);
//           }
//           EasyLoading.dismiss();
//           Utils.displayErrorMessage(con, "An Error Occured");
//         }
//       }
//     }
//   }

//   void setIssueValue(String? value) {
//     issueValue = value!;
//     notifyListeners();
//   }
// }
